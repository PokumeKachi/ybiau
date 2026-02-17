= Problem

Bob walks into a casino with 3 USD. If he draws a green card, he gains 1 USD. If
he draws a red card, he loses 1 USD. The game stops if he reaches 0 or 15 USD.
What is the chance of him reaching 15 USD?

= General solution
=== Let
- $G$: Number of green cards
- $R$: Number of red cards
- $i$: Initial capital
=== Define
- $p$: Probability of a win, where $p = G/(G+R)$
- $q$: Probability of a loss, where $q = R/(G+R)$
=== Solve
- Let $P_i$ be the probability of reaching $N$ before 0 with an initial capital of $i$.
- We have $P_0 = 0$ and $P_N = 1$
