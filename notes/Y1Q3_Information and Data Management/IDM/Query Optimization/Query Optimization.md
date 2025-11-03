> Find the **optimal** way of executing the query. Transform the **canonical operator tree** into a more efficient **final operator tree** for evaluation.
**Generally 2 ways to optimize**
[Cost-Based Algorithm](Cost-Based%20Algorithm.md)
[Heuristic-Based Algorithm](Heuristic-Based%20Algorithm/Heuristic-Based%20Algorithm.md)
**Implementation of Primitive Operators**
[Operators Implementation](Operators%20Implementation.md)
**IDM Cost Metrics**
- Size of intermediate result sets. _The smaller the better._
- Number of block accesses. _How many blocks are accessed on secondary storage._
**Example**
[https://www.youtube.com/watch?v=dDYUME2FHpI&ab_channel=ChristophLofi](https://www.youtube.com/watch?v=dDYUME2FHpI&ab_channel=ChristophLofi)
---
# Canonical Operator Tree

> [!important] An unoptimized relational algebra statement representing the SQL Query as provided by the application
![Untitled 128.png](../../../../attachments/Untitled%20128.png)
# Annotated Operator Tree

> [!important] An intermediate step towards the execution plan. Also contains the algorithm annotations
![Untitled 1 23.png](../../../../attachments/Untitled%201%2023.png)
---
# Journey of a Query
1. Application sends a SQL Query
2. Goes to the Query Processor → to the **Query Optimizer**
3. Translation into a relational algebra expression → **Naive cannonical query tree**
4. Transformed into an **efficient** plan → choice of physical **operators**, operator **sequence** and grouping
5. Chosen plan is **annotated** and handed over to the evaluation engine.
---
# Plans

> How are all these optimizations being done, and when?
## Static Plans
Best plan known **before** runntime of a query → prepared statements.
## Dynamic Plans
On runtime must be known.
## Hybrid Plans
Combine pre-optimization with fine-tuning on runtime.
---
# Pipelining

> Pipeline results **between operators**. Instead of writing to **temporary** storage. No creation of **temporary** tables necessary. **No writing/reading from disk.**
  
**Pipelines can be executed in two ways**
- **Demand Driven (Pull)**  
    Top-Down  
    Operations actively demand next tuple from their inputs  
    
    _Kind of Lazy_
    
- **Producer Driven (Push)**  
    Each operation has an input buffer  
    Buffer is filled eagerly by previous operations using all available inputs  
    
    _Kind of Eager_
    
**When to use, when to not?**
- **Works well for:** Selection, projection, Index nested loop joins
- **Not so well for:** Sorting, Merge joins