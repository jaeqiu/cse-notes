> [!important] **Cost metric**
> 
> for this section → **Number of Block Accesses**
---
# Selection
## Relation Scan
### Linear Search

> **Linear Search** over relation R. Scan **each record** and retrieve all rows **fulfilling** the **condition**

> [!important] **Cost**
> 
> = \#blocks(R)
### Binary Search

> **Binary Search** over ordered relation R. Only applicable if the selection is an **equality** on the **ordered attribute.**

> [!important] **Cost**
> 
> = Ceiling[ log2( \#blocks(R) ) ]
## Index Scan

> [!important] **Index Access Costs:**
> 
>   
> **Tree-based index:**  
>   
> Whole index on disk → HeightOfTree.  
> Root index node always in memory → HeightOfTree - 1  
> Root + First Layer is in memory → HeightOfTree - 2  
> Whole index on memory → 0  
> **Hash-Index**  
>   
> Whole index in memory → 0
**Index Scan cost:**
- \#mt * (Cost + 1)
`#mt = number of tuples expected to match the selection criteria`
---
  
# Join Metrics

> For optimizing joins, metrics are necessary. **Estimated Join Result Size, Estimated Join Cost**

> [!important] **Cost writing result - |R join S|**
> 
> / **blockingFactor_result +** Cost of Join (depends on implementation)  
>   
> **|R join S|**  
> = use size estimation  
> **blockingFactor_result** = How many tuples fit in 1 block
## Join implementations
### Block nested loop join

> [!important] **Cost -**
> 
> \#blocks(R) + (#blocks(R) * #blocks(S)) + CostsResult(R⋈S)  
> (Assumes 2 blocks can be in memory at once)  
> Including cost for writing.  
**Algorithm:**
For every block in R:
Fetch block W into memory  
for each record in W  
For each record in S → compare → e → add to result  
### Index nested loop join

> Uses indexes for the innerloop to avoid linear scanning.

> [!important] **Cost -**
> 
> \#blocks(R)+ (|R| * (Costs_IX+1)) + CostsResult(R⋈S)
**Algorithm:**
For each record r1 in R1
Look up match using indexes.
### Merge join

> ⚠️ Probably not on exam ~ Lecturer

> [!important] **Cost -**
**Algorithm:**