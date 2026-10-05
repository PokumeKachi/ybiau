#let chapter(title) = [
    #counter(heading).update(0)

    #align(center)[
        #heading(numbering: none)[#title]
    ]

    #include lower(title) + "/main.typ"
    #pagebreak()
]
