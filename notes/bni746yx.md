---
id: "bni746yx"
date: 2026-03-10 20:09:45
tags: []
---

# Geometric Progression

## Theory

### Definition

### Examples

$(1; 2; 4; 8; 16; ...)$

### Formulas

- Let $u_i$ be the $i^{th}$ element in the geometric sequence.
- Let $r$ be the common ratio.

    $u_1=u_1r^0$

    $u_2=u_1r^1$

    $u_3=u_2r^1=u_1r^2$

    $u_n=u_1+r^{n-1}$

- Let $C$ be a constant chosen at random.
    
    $u_{n+C}u_{n-C}=2u_n$

- Let $S_n$ be the sum of the entire sequence.

    Then $S_n=u_1+u_2+...+u_n=u_1(r^0+r^1+...+r^{n-1})$
    
    We also have $rS_n=u_1(r^1+r^2+...+r^n)$

    Thus: $rS_n-S_n=u_1(r^n-r^0)$
    
    => $S_n(r-1)=u_1(r^n-1)$

    => $S_n=u_1\cdot\frac{r^n-1}{r-1}$
