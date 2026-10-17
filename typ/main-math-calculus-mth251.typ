#include "includes.typ"
#import "imports.typ": *

= Scoring

- Theory: 10%
- Ex: 20%
- Mid-term: 20%
- Final exam: 50%

= Lecture 2 (2026-10-08) (Practice)

- PLEASE ⁉️⁉️⁉️ do research on bijection at home.

Given two functions $f$ and $g$ -> $f compose g$ ->
$D_(f compose g)=R_g #sym.inter E_f$

Given $f: D->E$.

For $y in E$, we consider the following equation:

$f(x)=y(\*)$

- ${y in E | (\*) "has a solution"}=R_f$

- $(\*) <=>x=g(y)=f^(-1)(y) forall y in R_f -> f^(-1): R_f -> D, y->g(y)$

== Example

#problem[
    Find a formula for the inverse of the function

    a) $f(x)=1+sqrt(2+3x)$

    b) $f(x)=e^(2x-1)$
]

#solution[
    a) We have $D_f={x in R | 2 + 3x >= 0}=[-2/3, infinity)$

    For $y in R$, we consider $f(x)=y(\*)$

    $(\*)$ is equivalent to $1+sqrt(2+3x)=y$

    or $sqrt(2+3x)=y-1$

    or $2+3x=(y-1)^2$ and $y>=1$

    or $x=((y-1)^2 - 2)/3$ and $y>=1$

    b) We have $D_f={x in R}=(-infinity, infinity)$

    For $y in R$, we consider $f(x)=y(\*)$

    $(\*)$ is equivalent to $e^(2x-1)=y$

    or $2x-1=ln(y)$ and $y>0$

    or $x=(ln(y)+1)/2$ is a unique solution to $(\*), forall y>0$
]

= Lecture 3 (2026-10-08)

- Logarithmic functions are the inverse functions of exponential functions.
- y = f(x)+c, shift the graph of y = f(x) a distance c units upward.
y = f(x)-c, shift the graph of y = f(x) a distance c units downward.
y = f(x-c), shift the graph of y = f(x) a distance c units to the right.
y = f(x+c), shift the graph of y = f(x) a distance c units to the left.

y = cf(x), stretch the graph of y = f(x) vertically by a factor of c.
y = (1/c)f(x), shrink the graph of y = f(x) vertically by a factor of c.
y = f(cx), shrink the graph of y = f(x) horizontally by a factor of c.
y = f(x/c), stretch the graph of y = f(x) horizontally by a factor of c.
y = −f(x), reflect the graph of y = f(x) about the x-axis.
y = f(−x), reflect the graph of y = f(x) about the y-axis.

- Range and domain in composite functions must intersect.
