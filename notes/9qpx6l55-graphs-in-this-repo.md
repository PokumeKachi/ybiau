---
id: "9qpx6l55"
date: 2026-03-19 14:56:58
tags: []
---

# Graphs In This Repo

$$
\pi+\pi=5
$$

```flowchart
st=>start: Start
op=>operation: Do something
e=>end: End
st->op->e
```

```dot
digraph G {
  subgraph cluster_0 {
    style=filled;
    color=lightgrey;
    node [style=filled,color=white];
    a0 -> a1 -> a2 -> a3;
    label = "process #1";
  }

  subgraph cluster_1 {
    node [style=filled];
    b0 -> b1 -> b2 -> b3;
    label = "process #2";
    color=blue
  }
  start -> a0;
  start -> b0;
  a1 -> b3;
  b2 -> a3;
  a3 -> a0;
  a3 -> end;
  b3 -> end;

  start [shape=Mdiamond];
  end [shape=Msquare];
}
```

<svg width="200" height="200" viewBox="0 0 200 200">
  <polygon points="50,50 50,150 150,150" fill="lightblue" stroke="black" stroke-width="2"/>
</svg>

```dot
digraph RightTriangle {
  node [shape=circle, width=0.2, fixedsize=true];

  A [label="A", pos="0,0!"];
  B [label="B", pos="5,0!"];
  C [label="C", pos="5,0!"];

  A -> B [dir=none];
  A -> C [dir=none];
  B -> C [dir=none];

  graph [splines=false, nodesep=0.5, ranksep=0.5];
}
```

```mermaid
graph BT
A-->B
B-->C
C-->D
D-->A
C-->E
D-->E
B---D
```

```plantuml
Alice-Bob: Hello
Bob-Alice: Hi
Bob--Alice: Hii
Alice--Bob: Halloo

Alice->Bob: Hello
Bob->Alice: Hi
Bob-->Alice: Hii
```

```sequence-diagrams
Alice-Bob: Hello
Bob-Alice: Hi
Bob--Alice: Hii
Alice--Bob: Halloo

Alice-Bob: Hello
Bob-Alice: Hi
Bob--Alice: Hii
Alice--Bob: Halloo
```

```chart
{
    "type": "pie",
    "data": {
        "labels": [
            "Red",
            "Blue",
            "Yellow"
        ],
        "datasets": [
            {
                "data": [
                    300,
                    50,
                    100
                ],
                "backgroundColor": [
                    "red",
                    "blue",
                    "#fc5"
                ]
            },
            {
                "data": [
                    300,
                    50,
                    500
                ],
                "backgroundColor": [
                    "red",
                    "blue",
                    "#fc5"
                ]
            }
        ]
    }
}
```

<svg xmlns="http://www.w3.org/2000/svg" width="200" height="200" viewBox="0 0 200 200">
  <polygon points="50,150 50,50 150,150" fill="none" stroke="black" stroke-width="2"/>
  <circle cx="50" cy="150" r="4" fill="red"/>
  <circle cx="50" cy="50" r="4" fill="red"/>
  <circle cx="150" cy="150" r="4" fill="red"/>
  <text x="45" y="175" font-size="16" fill="black">A</text>
  <text x="45" y="40" font-size="16" fill="black">B</text>
  <text x="155" y="175" font-size="16" fill="black">C</text>
</svg>

<iframe src="https://www.desmos.com/calculator/wtk53nb3wm?fontSize=14" width="100%" height="500"/>
