_default:
    #!/usr/bin/env bash
    type=$(printf 'Markdown\nTypst\n' | fzf --prompt='Browse type: ') || exit 0
    case "$type" in
        Markdown) ${EDITOR:-vi} md/u8xuio4v.md ;;
        Typst)    ${EDITOR:-vi} typ/main.typ ;;
    esac
