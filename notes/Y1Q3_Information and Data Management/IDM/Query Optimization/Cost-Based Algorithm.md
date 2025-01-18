**General workfow**
- Generate different Operator Trees
    - Use Heuristics to generate some trees
    - Randomly generate some trees
    - ~~Enumerate all trees~~
- Evaluate the costs of each tree
    
    - Use the cost models, refer to
    
    [Operators Implementation](Operators%20Implementation.md)
    
- Choose an operator tree
    - Use cheapest option
- Execute the chosen tree
# Database Statistics
For each node in the operator tree:
- Cost of performing the operation must be estimated.
- Size of result must be estimated
**Parameters to consider in** _**this course:**_
- Number of Distinct Values
- Min, Max, Avg Values
- Number of Records
- Block Size, Record Size
## Estimating Result Sizes
Real size = maximum size * (reductionFactor_condition)
**Selection**
Condition:
- Column = value
    - Reduction value = 1 / \#DistinctValues(I)
- column1 = column2
    - rf = 1 / max(\#dv(I1), #dv(I2))
    - Most selective filter wins.
- column <,> value
    - (high(I)-value)/(high(I)-low(I))
    - UniqueValuesMacthingTheCriteria / UniqueValuesOverall
- column in {list}
    - \#listvalues * ( 1 / \#dv(I) )
    - same as column = value , but * list size
**Join size estimation**

> R ⋈𝑅.𝑎= 𝑆.𝑎 S
- R and S disjoint →|R⋈S| = 0
- a might be **key** of S and **foreign key of R**
    - |R⋈S| = |R|*|S|/ \#dv(R, a)
    - |R⋈S | = |R|*|S| / max(\#dv(R, a), #dv(S, a)) ← _==**USED IN GENERAL, accounts for both key/foreign key cases. Repeat the division if multiple attributes are joined on.**==_
- 1:1 relationship
    - |R⋈S| = |R|
- Most tuples could have equal values for a
    
    - rf=1 → |R⋈S| = |R|*|S|
    
      
    
    # Join order optimization
    
    > Joins are **commutative** and **associative.** This results in a lot of **join trees, with different shapes.**
    
    **Simple Heuristic to reduce the search size:**
    
    - **Left-deep join trees -** good chances for a good result.
        - Allow output of each operator to be pipeline into the next.
    
    **Dynamic programming →** figure out best tree → even then still too slow for large trees (2^n)
    
      
    
    **Sampling Randomly - Example:** Randomly generate 1000 trees, choose from these trees.
    
    **Iterative Improvement -**
    
    **Simulated Annealing -**
    
    **Gradient Descent -**
    
      
    
    ## Greedy Join Strategy
    
    - **Start** with tree containing a join pair with cheapest costs.
    - **While** not all relations in tree
        
        - Join current tree with relation promising cheapest join, by attaching new relation to the right side.