#include "includes.typ"
#import "imports.typ": *

- An inverse function of function $f$ exists when function $f$ is bijective.

- To be bijective, a function must be both injective and surjective.

- If function $f:D->E$ is injective then $f(x_1)=f(x_2)=>x_1=x_2 ,forall x_1,x_2 in D$.
- If function $f:D->E$ is surjective then $E = R$ with $E$ being the codomain and $R$ being the range of the function.
    - So surjectiveness actually depends on the problem statement, and is also the reason why function specification must be explicit.

    Take $f(x)=1/(x-2)$ for example.

    $f:R\{2}->R$ is not surjective, but $f:R\\{2}->R\\{0}$ is, because the inverse function is $y=1/(x-2)<=>x-2=1/y<=>x=1/y+2$, which is undefined at $y=0$.

- Therefore, $f$ is bijective if it is both injective and surjective.
Only then does the inverse function
$
  f^(-1): E -> D
$
exist.
