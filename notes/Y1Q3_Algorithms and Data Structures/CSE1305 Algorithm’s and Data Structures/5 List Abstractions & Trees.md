Position-based lists:

- relative position is ideal
- sequence of positions, each 1 element
- traversal both directions
- most natural implementation: DLL
 
- elements accessed via positions
- no direct access to nodes
    
    - otherwise user has access to entire list
- position abstraction = reference to node, prevents access to rest of list
 
Define abstraction of node using interface Position<E>
 ![Exported image](../../../attachments/Exported%20image%2020241209225332-0.png)   
/////////
 
Iterator: abstracts process of scanning through sequence, one element at a time  
hasNext()  
next()  
remove()  
(previous()) -> linear time (better to create new iterator, constant time)  
Typically used -> while(iterator.hasNext() {...}
 
Java Iterable interface

- override iterator()
- supports for-each loop
 
Two implementations:

- Snapshot Iterator
    
    - Own private copy of collection
    - Unaffected by changes to primary collection
    - Space at construction: O(n) (keep all elements)
    - Time at construction: O(n) (copy all elements)
- Lazy Iterator
    
    - Does not make copy
    - Affected by changes
    - Space at construction: O(1)
    - Time at construction: O(1)
    - 'fail-fast' behaviour invalidates iterator if underlying collection is modified unexpectedly
 ![Exported image](../../../attachments/Exported%20image%2020241209225333-1.png)   
/////////
 
Trees = data structures that store elements hierarchically
 
node = contains element  
edge = hierarchical relation between two nodes  
sibling = shared parent, excluding self  
ancestor = any node in the upward path to root, including self  
descendant = any node in a downward path to leaves, including self
 
root = node without parent  
internal node = node with at least one child  
external node / leaves = node without children
 ![Exported image](../../../attachments/Exported%20image%2020241209225333-2.png)  

depth of node = number of ancestors, other than the node itself

- O(n)

height of tree = max depth of all its nodes

- zero if tree is empty
   

/////////
 
Tree traversals

- Depth-first
    
    - first traverse to leaves, then to ancestors
- Breadth-first
    
    - all nodes at same depth traversed consecutively
 
Depth-first: Pre-order

- node visited before children
- **CURRENT** -> LEFT -> RIGHT
 ![Exported image](../../../attachments/Exported%20image%2020241209225333-3.png)  

Depth-first: Post-order

- node visited after children
- LEFT -> RIGHT -> **CURRENT**
 ![Exported image](../../../attachments/Exported%20image%2020241209225334-4.png)  

Depth-first: In-order

- only for binary trees
 
Breadth-first

- visits nodes per level/depth
- use queue with FIFO
- not recursive: not traversing entire sub-trees at once
 
- start: add first node to queue

loop:

- visit next position in queue
- dequeue it
- add all its children to queue
- loop until queue is empty
 ![Exported image](../../../attachments/Exported%20image%2020241209225334-5.png)  

/////////
 
Binary tree = tree with following properties

- each internal node has at most 2 children
- children are ordered pair: left child & right child
 
Proper/Full binary tree = tree which every node has EITHER 0 OR 2 children
 
Depth-first: In-order

- node visited after left child and before right child
- LEFT -> **CURRENT** -> RIGHT
 
Relationship between number of nodes n and height h

![Exported image](../../../attachments/Exported%20image%2020241209225335-6.png)   
/////////
 
Linked structure for trees

Tree node represented by

- element at node
- parent node
- sequence of children nodes

root node = stored by linked tree

![Exported image](../../../attachments/Exported%20image%2020241209225338-7.png)  

Linked structure for binary trees

- instead of sequence of children nodes -> references to left & right child node
 
Array-based binary trees

- Node v is stored at index f(v)

|   |   |
|---|---|
|f(v) = 0|if v is root|
|f(v) = 2 * f(p) + 1|if v is left child of p|
|f(v) = 2 * f(p) + 2|if v is right child of p|
 ![Exported image](../../../attachments/Exported%20image%2020241209225338-8.png)   
|   |   |   |
|---|---|---|
||Linked tree|Array-based|
|space:|O(n)|O(2h) / O(n2)|
|insertion/removal:|O(1)|may require changing entire array|
 
![Exported image](../../../attachments/Exported%20image%2020241209225339-9.png)