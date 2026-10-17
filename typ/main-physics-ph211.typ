#include "includes.typ"
#import "imports.typ": *

= Lecture 1 (2026-09-29)

- Why does classical mechanics stop applying when the object is too small, fast,
    or dense?
- Types of acceleration include radial and what else?
- Quantity vs unit vs dimension?

= Lecture 2 (2026-10-01)

- Are the examples for order-of-magnitude conflicting with the established
    formula for determining the order of magnitude?
- The magnitude of a vector is a measurement, consisting of a value and a unit.
- Is scalar just a one-dimensional vector?

> Moving on to the actual lecture 2 slides

- Shouldn't a perfectly circular orbit be constant speed instead of constant
    velocity?

= Lecture 3 (2026-10-06)

- Acceleration is split into tangential and centripetal

#problem[
    A bird is flying due east. Its distance from a tall building is given by
    $x(t)=28.0m+12.4t-0.045t^3$. What is the instantaneous velocity of the bird
    when $t=8.00s$?
]

#solution[
    We have $(d x)/(d t)=12.4dot 1-0.045 dot 3 dot t^2$. So at $t=8.00s$,
    $(d x)/(d t)=3.76approx 3.8m\/s$
]

#problem[
    A race car starts from rest and travels east along a straight and level
    track. For the first $5.0s$ of the car’s motion, the eastward component of
    the car’s velocity is given by $v(t)=10.860t^2$. What is the acceleration of
    the car when $v=12m\/s$?
]

#solution[
    Since $v=12m\/s$ and $v(t)=10.860t^2$, we have that $10.860t^2=12m\/s$, thus
    $t=sqrt(12/10.860)approx 1.05$.

    We have that $a(t)=(d v)/(d t)=2dot 10.860dot t=21.72dot t$

    Thus at $v=12m\/s$, $t approx 1.05$ and
    $a(t)approx a(1.05)=21.72dot 1.05=22.806approx 22.81m\/s^2$
]

= Lecture 4 (2026-10-08)

- Angular motion CAN be one-dimensional. The angle is one degree of freedom, and
    that angle is considered an angular coordinate!

$arrow(v)=|arrow(v_x)|hat(i)+|arrow(v_y)|hat(j)$

== Projectile motion

- Air friction is ignored
- Rotation of the earth is ignored
    - Then the object will follow a parabolic path

#problem[
    A long jumper (Fig. 4.11) leaves the ground at an angle of 20.0° above
    the horizontal and at a speed of 11.0 m/s.

(A) How far does he jump in the horizontal direction?
(B) What is the maximum height reached
]

#solution[
(A)

The total amount of time it takes him to fall down to the ground again after jumping is equal to the time after which $d_y=0$ with $d_y=v_0_y t - 1/2g t^2$.

We have $v_0_y= v_0dot sin(theta)=11.0dot sin(20.0)approx 3.8 m\/s$, $g=9.8m\/s$.

So $t_("ground")=0.8s$

So $d_x_(max)=v_0_x dot t_("ground")approx 8.3m ("Rounding error is inevitable")$
]
