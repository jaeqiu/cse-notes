  

> In short: Start with a naive plan, rewrite using common **heuristics** which are known to help.
**Pro**
- Very easy & Cheap
- Not much data needed
**Con**
- Result quality varies a lot
  
# Algebraic Query Rewriting
**Selections**
1. Cascading selection
2. Commutativity of selection
**Projections**
1. Cascading projection
2. Commuting projection with selection
**Joins and Cartesian Products**
1. Commutativity of X and Join.
2. Associativity of X and Join
3. Constructing Join from Select and X
4. Commuting select with Join or X
5. Commuting Projection with Join or X
# Heuristic Algebraic Optimization
**Selection**
- Apply a restrictive selection early → keeps number of intermediate results small.
- Break up conjunctive SELECT statements
- Push down SELECT as far as _possible._
**Projections**
- Apply projection as early as possible → smaller tuples → more in block → less blocks.
- Break & Push projections down as deep as _possible._
**Cartesian Product**
- **Force Join -** Replace Cartesian products with Join and Selections.
# The Greedy Approach 💰
1. Break up all selections
2. Push selections as far as possible
3. Break, Eliminate, Push and Introduce Projection. Try to project  
    intermediate result sets as greedily as possible  
    
4. Collect selections and projections such that between other  
    operators there is only a single block of selections followed by a single  
    block of projections (and no projections followed by selections )  
    
![Untitled 131.png](../../../../../attachments/Untitled%20131.png)
1. Combine selections and Cartesian products to joins
2. Prepare pipelining for blocks of unary operators