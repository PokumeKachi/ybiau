#let ex-counter = counter("exercise")

#let problem(body) = [
    #ex-counter.step()
    #block(
        fill: luma(248),
        stroke: (left: 3pt + blue.darken(20%)),
        inset: (x: 12pt, y: 10pt),
        width: 100%,
    )[
        *Exercise #context ex-counter.display():* \
        #body
    ]
]

#let solution(body) = [
    #block(
        fill: luma(252),
        stroke: (left: 3pt + green.darken(30%)),
        inset: (x: 12pt, y: 10pt),
        width: 100%,
    )[
        *Solution:* \
        #body
    ]
]

#let proof(body) = [
    #v(0.3em)
    #block(width: 100%, breakable: true)[
        #emph[Proof.] \
        #body
        #align(right)[$square$]
    ]
    #v(0.5em)
]
