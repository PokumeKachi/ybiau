#let plain-text(content) = {
    if type(content) == str { content } else if content.has("text") {
        content.text
    } else if content.has("child") {
        plain-text(content.child)
    } else if content.has("body") {
        plain-text(content.body)
    } else if content.has("children") {
        content.children.map(plain-text).join("")
    } else { "" }
}
