#include "includes.typ"
#import "imports.typ": *

= hello everyone

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
    the car’s velocity is given by $v(t)=10.860t^2$. What is the acceleration
    of the car when $v=12m\/s$?
]

#solution[
    Since $v=12m\/s$ and $v(t)=10.860t^2$, we have that $10.860t^2=12m\/s$, thus $t=sqrt(12/10.860)approx 1.05$.

    We have that $a(t)=(d v)/(d t)=2dot 10.860dot t=21.72dot t$

    Thus at $v=12m\/s$, $t approx 1.05$ and $a(t)approx a(1.05)=21.72dot 1.05=22.806approx 22.81m\/s^2$
]
