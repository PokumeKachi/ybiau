#let ex-counter = counter("exercise")
#let thm-counter = counter("theorem")
#let def-counter = counter("definition")

#let callout(
    fill: none,
    stroke-color: none,
    title-color: none,
    label: "",
    number: none,
    title: none,
    body: [],
    footer: none,
) = [
    #block(
        fill: fill,
        stroke: (left: 3pt + stroke-color),
        inset: (x: 12pt, y: 10pt),
        radius: (right: 4pt),
        width: 100%,
        breakable: true,
    )[
        #text(weight: "bold", fill: title-color)[
            #label
            #if number != none [ #number]
            #if title != none [ --- #title]
        ] \
        #body
        #if footer != none [
            #align(right)[#text(fill: stroke-color)[#footer]]
        ]
    ]
]

#let problem(body) = [
    #ex-counter.step()
    #callout(
        fill: rgb("#f0f9ff"),
        stroke-color: rgb("#0284c7"),
        title-color: rgb("#0369a1"),
        label: "Exercise",
        number: context ex-counter.display(),
        body: body,
    )
]

#let solution(body) = [
    #callout(
        fill: rgb("#f0fdf4"),
        stroke-color: rgb("#16a34a"),
        title-color: rgb("#15803d"),
        label: "Solution:",
        body: body,
    )
]

#let proof(body) = [
    #callout(
        fill: rgb("#f5f3ff"),
        stroke-color: rgb("#7c3aed"),
        title-color: rgb("#6d28d9"),
        label: "Proof:",
        body: body,
        footer: $Q.E.D.$,
    )
]

#let keypoint(title: none, body) = [
    #callout(
        fill: rgb("#fff1f2"),
        stroke-color: rgb("#e11d48"),
        title-color: rgb("#be123c"),
        label: "Key Point",
        title: title,
        body: body,
    )
]

#let theorem(title: none, body) = [
    #thm-counter.step()
    #callout(
        fill: rgb("#eff6ff"),
        stroke-color: rgb("#2563eb"),
        title-color: rgb("#1d4ed8"),
        label: "Theorem",
        number: context thm-counter.display(),
        title: title,
        body: body,
    )
]

#let definition(title: none, body) = [
    #def-counter.step()
    #callout(
        fill: rgb("#fffbeb"),
        stroke-color: rgb("#d97706"),
        title-color: rgb("#b45309"),
        label: "Definition",
        number: context def-counter.display(),
        title: title,
        body: body,
    )
]

#let remark(body) = [
    #callout(
        fill: rgb("#f8fafc"),
        stroke-color: rgb("#64748b"),
        title-color: rgb("#475569"),
        label: "Remark:",
        body: body,
    )
]
