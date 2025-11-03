---
"Legacy Lecture #": "9"
Created time: 2024-09-20T20:36
---
# Query Optimization - subtopic)
  
## Static vs Dynamic Plans
### Static Plans

> static plans use a pre-optimized statement which can be evaluated immediately given an unoptimized query (table)
### Dynamic Plans

> the best plan is found during run-time for queries
### Hybrid plan

> static plans are used in combination with fine-tuning thereof during runtime
## Optimization Example
### canonical operator tree to final operator tree
based on:
- heuristic query optimizations
- cost-based query optimization
## Algebraic Query Rewriting
### Selection $\sigma$
- cascading
![Untitled 116.png](../../../../attachments/Untitled%20116.png)
- commuting
![Untitled 1 18.png](../../../../attachments/Untitled%201%2018.png)
### Projection $\pi$
- cascading
![Untitled 2 17.png](../../../../attachments/Untitled%202%2017.png)
- commuting
![Untitled 3 13.png](../../../../attachments/Untitled%203%2013.png)
### Join, Cartesian Product
- commuting
![Untitled 4 12.png](../../../../attachments/Untitled%204%2012.png)
- associating
![Untitled 5 12.png](../../../../attachments/Untitled%205%2012.png)

> arbitrary order
- construct a join from a selection and a cartesian product
![Untitled 6 12.png](../../../../attachments/Untitled%206%2012.png)
- commuting a selection over sides to a join/cartesian product
![Untitled 7 12.png](../../../../attachments/Untitled%207%2012.png)
- commute projection over sides of a join/cartesian product
![Untitled 8 10.png](../../../../attachments/Untitled%208%2010.png)
### Set operation
- commute $\cup$ and $\cap$
![Untitled 9 9.png](../../../../attachments/Untitled%209%209.png)
- associate $\cap$ and $\cap$
![Untitled 10 8.png](../../../../attachments/Untitled%2010%208.png)
- commute $\sigma$ over a set operator
![Untitled 11 7.png](../../../../attachments/Untitled%2011%207.png)
- commute $\pi$ over a set operator
![Untitled 12 5.png](../../../../attachments/Untitled%2012%205.png)
## Heuristics (Rules of Thumb)

> heuristics are common mental shortcuts to make it easier to work through problems. In this context, heuristics involve a number of common optimizations that _**usually**_ result in a desirable operator tree
### detour: they don’t always work (just rules of thumb)
![Untitled 13 5.png](../../../../attachments/Untitled%2013%205.png)
### 6 heuristics
### Break a selection $\sigma$ into multiple parts

> sometimes, a composite selection $\sigma$ should be broken down into a cascade of selections, so that they may be distributed over the operator tree
### Push selection $\sigma$ to an earlier moment

> make sure to push selections $\sigma$ to the earliest moment that they can afford to be placed, to relieve intermediate results
### Break, eliminate, push, introduce projection $\pi$

> break up (cascade into small parts)
> 
> eliminate unnecessary (remove projections $\pi$ if they are no longer needed to lower intermediate costs)
> 
> push down (push projections to the earliest moment that they can afford to be introduced
> 
> introduce (reintroduce the projection in the appropiate place)
### Collect selections $\sigma$ and projections $\pi$

> never have selections follow after projections
> 
> $\sigma_a\pi_b\sigma_c\pi_d = \pi_{bd}\sigma_{ac}$()
### Combine selection $\sigma_{condition}$ and cartesian product $\square\times\square$ into a join $\square\bowtie_{condition}\square$

> the idea is that a cartesian product $\times$ followed by a selection $\sigma$ can always be replaced by a theta join (join on condition)
### Prepare a block of unary operators for pipelining thereof

> a multitude of unary operations in immediate succession can be pipelined.
  
# Join Order Optimization
## Extreme amount of join order options
![Untitled 14 5.png](../../../../attachments/Untitled%2014%205.png)
![Untitled 15 5.png](../../../../attachments/Untitled%2015%205.png)
number of possible join orders grows very quickly (catalan function)
## Build Relation vs Probe Relation (in a join)

> By convention, the left relation is called the build relation, whereas the right relation is called the probe relation, with the probe relation being larger than the build relation.
## Join Algorithms

> The chosen algorithm determines which join case to use (what the build and probe relation do)
> 
> ### Block Nested Loop Join
> 
> outer loop probe inner loop build (the smaller build relation can be loaded into memory and serve as the inner loop)
> 
> ### Single Pass Join
> 
> ???
> 
> ### Index Join
> 
> outer loop build inner loop probe (this becomes viable when the inner looped probe relation is indexed.
## Pick a shape, any shape
![Untitled 16 5.png](../../../../attachments/Untitled%2016%205.png)
## Join Algorithm Costs (cheat sheet)
![Untitled 17 4.png](../../../../attachments/Untitled%2017%204.png)
## Left Deep Join Tree

> Compound indexes, don’t start fresh
> 
> ![Untitled 18 4.png](../../../../attachments/Untitled%2018%204.png)
> 
> In order to minimize the size of intermediate results, R < S < T < U (smaller relations are joined first)
> 
> - good for decreasing build relation (smol one) size
> - nice buffer usage
> - pipeline-compatible
> - compatible with single pass, nested loop
> 
> ![Untitled 19 4.png](../../../../attachments/Untitled%2019%204.png)
> 
> CANT DO SORT MERGE JOINS
> 
> - successfully decrease join order contenders
> - BUT still a lot when ridiculous amounts of joins
> - BUT can’t do parallel execution :(
> 
> ![Untitled 20 4.png](../../../../attachments/Untitled%2020%204.png)
## Various other join order options
![Untitled 21 4.png](../../../../attachments/Untitled%2021%204.png)