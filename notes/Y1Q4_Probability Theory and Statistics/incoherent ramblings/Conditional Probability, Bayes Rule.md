---
When: "02"
Created time: 2024-09-20T20:36
Volume: 177
---
---
# ==Conditional Probability, Bayes Rule==
## Sum Rule, Complement Rule: $P(A\cup B), \space P(A^c)$
![[Untitled 6.png]]

> What is the probability that the union of an event occurs?
> 
> _**You might remember the original:**_
> 
> $P(A \cup B) = P(A) + P(B)$ _==(with A and B disjoint sets)==_
$P(A \cup B) = P(A) + P(B)$ $-P(A \cap B)$
_**The addition of subtracting** $P(A\cap B)$ **accounts for counting the overlap once, not twice**_
  

> What is the probability that an event doesn’t occur?
$P(A^C) = 1 - P(A)$ (1 represents all outcomees)
## Conditional Probability: $P(A|C)$

> What is the chance of an event, given another event happens? (such that)
$P(\space A|C_{ondition}\space ) = \frac{P (A\space \cap\space C)}{P(\space C\space )}$ ==( P( C ) non-zero)==
The chance that event A happens given C happens  
is the chance _**both**_ happen, _**divided by the chance the condition event happens**_
(You can think of the denominator as restricting sample space to only where the condition holds, then simply computing the chance in this new perspective)
## Multiplication Rule: $P(A \cap B)$
![[Untitled 7.png]]

> What is the probability that the intersection of an event occurs?
$P(A\space \cap \space C) = P( A \space | \space C) P(C)$
## Bayes’ Rule: $P(A|C) \rightarrow P(C|A)$
![[Untitled 8 2.png|Untitled 8 2.png]]

> What does the Law of Total Probability state?
$P(A) = P( A \space | \space C) \space P(C) \space+ \space P( A \space | \space C^C \space ) \space P( \space C^C \space )$
$P(A) = P(A|C_1)P(C_1) + \space ... \space + P(A| C_m)P(C_m)$
Given $C_1\space +\space ...\space +\space C_n = \Omega$ (sample space)
==(corresponds to probability functions== ==$P(C_1)\space +\space ...\space +\space P(C_n) = 1$====)==

> Bayes’ Rule for switching condition and event
$P(C_i|A)=\frac{P(A|C_i)P(C_i)}{P(A|C_1)P(C_1) + \space ... \space + P(A| C_m)P(C_m)}$
given $C_1 \cup ... \cup C_m$ are _**disjoint**_ and _**fill the sample space**_:
knowing the chance of A given Ci, the chance of Ci given A is given by the chance of A given Ci, multiplied by the chance of Ci, divided by the chance of A