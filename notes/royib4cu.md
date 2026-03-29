---
id: "royib4cu"
date: 2026-03-16 07:18:22
tags: [math,recurrence,discrete-math]
---

# First-order Linear Recurrence

## Theory

### General form

- A first-order linear recurrence takes the form of $A_n=rA_{n-1}+b$, where:
    * $A_n$ is the $n^{th}$ term defined from previous terms.
    * $r, b$ are just two random constants.

### General solution

- Let $C$ be a constant-variable recurrence with the exact same form as $A_n$:
    - $C=rC+b$

    - Closed form: $C=\frac{b}{1-r}$

- Now by removing this constant-variable recurrence from the original recurrence we get a pure geometric recurrence:
    - Let $B_n=A_n-C$
    - Substitute $C$ with $b$:

        -> $B_n=rA_{n-1}+b-\frac{b}{1-r}$

        -> $B_n=rA_{n-1}+\frac{b-br-b}{1-r}$

        -> $B_n=rA_{n-1}-\frac{br}{1-r}$

        -> $B_n=rA_{n-1}-rC$

        -> $B_n=rB_{n-1}$

    - Or we could substitute $b$ with $C$ instead:

        -> $B_n=rA_{n-1}+C(1-r)-C$

        -> $B_n=rA_{n-1}+C-Cr-C$

        -> $B_n=rA_{n-1}-rC$

        -> $B_n=rB_{n-1}$

    - Closed form: $B_n = B_0r^n$

- Now since $B_n=A_n-C$

    -> $A_n=B_n+C$

- Closed form: $A_n=\begin{cases}r^nA_0+b\frac{r^n-1}{r-1},&r\ne 1\\A_0+nb,&r=1\end{cases}$
