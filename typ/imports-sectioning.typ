#let ex-counter = counter("exercise")
#let chapter-state = state("current-chapter", "ybiau")

#let chapter(title, path) = [
    #chapter-state.update(title)
    #counter(heading).update(0)
    #ex-counter.update(0)

    #align(right)[
        #heading(level: 1, numbering: none)[#text(
            size: 18pt,
            weight: "bold",
            fill: luma(40),
        )[#title]]
    ]
    #v(1.2em)
    #include path
    #pagebreak()
    #chapter-state.update("")
]

#let subsection(title, path) = [
    #ex-counter.update(0)
    = #title
    #v(0.6em)
    #{
        set heading(offset: 1)
        include path
    }
    #v(1.8em)
]
