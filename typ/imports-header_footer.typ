#import "imports-helpers.typ": *

#let chapter-state = state("current-chapter", "ybiau")

#let doc-header = context [
    #let current-page = here().page()
    #if current-page > 1 [
        #let current-page-headings = query(heading).filter(h => (
            h.location().page() == current-page
        ))

        #let style-heading(h) = {
            let (fill-color, font-weight, font-style, font-size) = if (
                h.level == 1
            ) {
                (rgb("#4338ca"), "bold", "normal", 13pt)
            } else if h.level == 2 {
                (rgb("#0284c7"), "semibold", "italic", 11.5pt)
            } else if h.level == 3 {
                (rgb("#059669"), "medium", "normal", 10.5pt)
            } else if h.level == 4 {
                (rgb("#d97706"), "medium", "italic", 9.5pt)
            } else if h.level == 5 {
                (rgb("#e11d48"), "regular", "normal", 8.5pt)
            } else {
                (rgb("#7c3aed"), "light", "italic", 8pt)
            }

            text(
                size: font-size,
                fill: fill-color,
                weight: font-weight,
                style: font-style,
            )[#h.body]
        }

        #let page-headings-text = if current-page-headings != () {
            current-page-headings
                .map(style-heading)
                .join([ #text(fill: rgb("#cbd5e1"), weight: "bold")[·] ])
        } else {
            let prev-headings = query(selector(heading).before(here()))
            if prev-headings != () {
                style-heading(prev-headings.last())
            } else {
                []
            }
        }

        #grid(
            columns: (1fr, auto),
            gutter: 8pt,
            align: horizon,

            align(left)[
                #page-headings-text
            ],
        )
        #v(4pt)
        #line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
    ]
]

#let doc-footer = context [
    #let current-page = here().page()
    #if current-page > 1 [
        #let ch-title = chapter-state.at(here())

        #line(length: 100%, stroke: 0.4pt + luma(180))
        #v(4pt)
        #grid(
            columns: (1fr, auto),
            gutter: 8pt,
            align: horizon,

            align(left + horizon)[
                #link(<first-page>)[#box(inset: (x: 2pt, y: 2pt))[#text(
                    fill: luma(20),
                    weight: "bold",
                )[ybiau]]]
                #if plain-text(ch-title) != "" [
                    #text[>]
                    #text(
                        size: 11pt,
                        weight: "bold",
                        fill: luma(20),
                    )[#ch-title]
                ]
            ],

            align(right)[
                #text(
                    size: 8.5pt,
                    fill: luma(90),
                    weight: "medium",
                    tracking: 0.04em,
                )[
                    #counter(page).display("1 / 1", both: true)
                ]
            ],
        )
    ]
]
