---
id: "i1mfwy58"
date: 2026-03-20 20:33:37
tags:
    [
        math/algebra,
        coordinate-geometry,
        vector,
        logarithm,
        quadratic-polynomial,
        exponential-equation,
    ]
---

# Advanced Problem

## Problem

- Given that the equation $(log_2x)^2-log_2x-2025m=0$ has two distinct solutions $x_1$ and $x_2$, and the equation $9^y-m3^y+(\sqrt3)^7=0$ has two distinct solutions $y_1$ and $y_2$, such that the two points $A(x_1,y_1)$ and $B(x_2,y_2)$ on the $Oxy$ plane satisfy $OA\perp OB$. Find $m$.

## Solution

- $OA\perp OB\Leftrightarrow\overrightarrow{OA}\cdot\overrightarrow{OB}\Leftrightarrow x_1x_2+y_1y_2=0\quad(1)$
- Using Vieta's formulas with $t=log_2x$ in the equation $t^2-t-2025m=0$:

    $t_1+t_2=log_2x_1+log_2x_2\quad=\frac{-b}a=1$

    $\Rightarrow log_2x_1x_2=1=log_22$

    $\Rightarrow x_1x_2=2\quad(2)$

- From equations $(1)$ and $(2)$:

    $y_1y_2=-2\quad(3)$

- Using Vieta's formulas with $u=3^y$ in the equation $u^2-mu+(\sqrt3)^7=0$:

    $u_1u_2=3^{y_1}3^{y_2}\quad=\frac{c}a=(\sqrt3)^7$

    $\Rightarrow3^{y_1+y_2}=3^{\frac72}$

    $\Rightarrow y_1+y_2=\frac72\quad(4)$

- From equations $(3)$ and $(4)$:

    $\left[\begin{array}{l}y=-0.5\\y=4\end{array}\right.$

- Using Vieta's formulas with $u=3^y$ in the equation $u^2-mu+(\sqrt3)^7=0$:
    
    $u_1+u_2=3^{-0.5}+3^4\quad=\frac{-b}a=m$

    $\Rightarrow m=81+\sqrt3$
