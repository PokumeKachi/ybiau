#import "imports-exercise.typ": *
#import "imports-header_footer.typ": *
#import "imports-helpers.typ": *
#import "imports-sectioning.typ": *

#let main(body) = {
    set heading(numbering: "1.1.1.a")

    set page(
        margin: (top: 2.8cm, bottom: 2.8cm, x: 2cm),
        header: doc-header,
        footer: doc-footer,
    )
    [
        #metadata(none) <first-page>

        #align(center + horizon)[
            #text(
                size: 34pt,
                weight: "bold",
                fill: luma(30),
                tracking: 0.08em,
            )[ybiau] \
            #v(0.8em)
            #text(size: 10pt, fill: luma(100), tracking: 0.05em)[
                #upper[Mathematics · Computer Science · Sewing · Misc]
            ]
        ]

        #align(right)[
            #text(weight: "medium", fill: luma(50))[Nguyễn Cao Long Khánh] \
            #v(0.1em)
            #text(fill: luma(110), size: 8.5pt, style: "italic")[est. 2026]
        ]

        #align(center)[
            #outline(indent: 1.5em)
        ]
    ]

    pagebreak()
    body

    align(center + horizon)[
        #text(size: 16pt, weight: "bold", fill: luma(40))[
            #heading(numbering: none)[Colophon]
        ]
        #v(0.5em)
        #text(fill: luma(80))[
            These notes were written and maintained by Nguyen Cao Long Khanh. \
            Typeset with Typst.
        ]
    ]
}
