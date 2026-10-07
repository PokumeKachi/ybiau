local map = require("utils.keymap").map

local function slugify(str)
	str = str:lower()
	str = str:gsub("[%s%-]+", "_")
	str = str:gsub("[^%w_]", "")
	str = str:gsub("_+", "_")
	return (str:gsub("^_*", ""):gsub("_*$", ""))
end

map("n", "zkn", function()
	vim.ui.input({ prompt = "Enter title of new note: " }, function(input)
		if not input or vim.trim(input) == "" then
			return
		end

		local dir = vim.fn.expand("%:p:h")
		local stem = vim.fn.expand("%:t:r")
		local ext = vim.fn.expand("%:e")
		if ext == "" then
			ext = "typ"
		end

		local title = vim.trim(input)
		local slug = slugify(title)

		local new_filename = string.format("%s-%s.%s", stem, slug, ext)
		local full_path = dir .. "/" .. new_filename

		if vim.fn.filereadable(full_path) == 1 then
			vim.notify("File already exists. Opening existing note...", vim.log.levels.WARN)
			vim.cmd.edit(full_path)
			return
		end

		local insert_line
		if stem == "main" then
			insert_line = string.format('#chapter("%s", "%s")', title, new_filename)
		else
			insert_line = string.format('#subsection("%s", "%s")', title, new_filename)
		end

		local cursor_line = vim.api.nvim_win_get_cursor(0)[1]
		local current_line_content = vim.api.nvim_get_current_line()

		local indent = current_line_content:match("^(%s*)") or ""
		local indented_line = indent .. insert_line

		if vim.trim(current_line_content) == "" then
			vim.api.nvim_buf_set_lines(0, cursor_line - 1, cursor_line, false, { indented_line })
		else
			vim.api.nvim_buf_set_lines(0, cursor_line, cursor_line, false, { indented_line })
		end

		vim.cmd.edit(full_path)

		local header_lines = {
			'#include "includes.typ"',
			'#import "imports.typ": *',
			"",
			"",
		}
		vim.api.nvim_buf_set_lines(0, 0, 0, false, header_lines)
		vim.api.nvim_win_set_cursor(0, { #header_lines, 0 })
	end)
end, { desc = "Create a new note" })

map("n", "zkb", function()
	local dir = vim.fn.expand("%:p:h")
	local stem = vim.fn.expand("%:t:r")
	local ext = vim.fn.expand("%:e")
	if ext == "" then
		ext = "typ"
	end

	local parent_stem = string.match(stem, "^(.*)%-.-$")

	if not parent_stem then
		vim.notify("We are at root level!", vim.log.levels.WARN)
		return
	end

	local parent_filename = string.format("%s.%s", parent_stem, ext)
	local full_path = dir .. "/" .. parent_filename

	if vim.fn.filereadable(full_path) == 0 then
		vim.notify("Parent file does not exist: " .. parent_filename, vim.log.levels.ERROR)
		return
	end

	vim.cmd.edit(full_path)
end, { desc = "Go back to parent note" })

map("n", "zko", function()
    local line = vim.api.nvim_get_current_line()
    local dir = vim.fn.expand("%:p:h")
    local ext = vim.fn.expand("%:e")
    if ext == "" then
        ext = "typ"
    end

    local candidates = {}

    -- 1. Check exact file/path under the cursor
    local cfile = vim.fn.expand("<cfile>")
    if cfile and cfile ~= "" then
        table.insert(candidates, cfile)
    end

    -- 2. Extract all quoted strings (single & double quotes)
    for str in line:gmatch('["\']([^"\']+)["\']') do
        table.insert(candidates, str)
    end

    -- 3. Extract unquoted path-like words (e.g. filename.typ)
    for word in line:gmatch("[%w_%-%./]+%.%w+") do
        table.insert(candidates, word)
    end

    local target_path = nil

    -- Pass 1: Find any candidate that already exists on disk
    for _, cand in ipairs(candidates) do
        cand = vim.trim(cand)
        if cand ~= "" then
            local path = vim.fs.normalize(dir .. "/" .. cand)
            if vim.fn.filereadable(path) == 1 then
                target_path = path
                break
            end

            -- Check if file exists when appending default extension
            if not cand:match("%.%w+$") then
                local path_with_ext = path .. "." .. ext
                if vim.fn.filereadable(path_with_ext) == 1 then
                    target_path = path_with_ext
                    break
                end
            end
        end
    end

    -- Pass 2: If no file exists on disk yet, prioritize candidates with file extensions
    if not target_path then
        for _, cand in ipairs(candidates) do
            cand = vim.trim(cand)
            if cand:match("%." .. ext .. "$") or cand:match("%.%w+$") then
                target_path = vim.fs.normalize(dir .. "/" .. cand)
                break
            end
        end
    end

    -- Pass 3: Fallback to the last quoted string (e.g., 2nd arg in #subsection("Title", "file"))
    if not target_path then
        local quoted = {}
        for str in line:gmatch('["\']([^"\']+)["\']') do
            table.insert(quoted, str)
        end
        if #quoted > 0 then
            target_path = vim.fs.normalize(dir .. "/" .. quoted[#quoted])
        end
    end

    if not target_path then
        vim.notify("No note reference or file found on current line", vim.log.levels.WARN)
        return
    end

    -- Ensure default extension is present
    if not target_path:match("%.%w+$") then
        target_path = target_path .. "." .. ext
    end

    -- Notify if opening a new uncreated file
    if vim.fn.filereadable(target_path) == 0 then
        vim.notify("Opening new note: " .. vim.fn.fnamemodify(target_path, ":t"), vim.log.levels.INFO)
    end

    vim.cmd.edit(vim.fn.fnameescape(target_path))
end, { desc = "Open note referenced on current line" })
