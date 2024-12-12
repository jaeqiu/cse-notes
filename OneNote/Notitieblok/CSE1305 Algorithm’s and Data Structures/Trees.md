**Traversal Order of Trees**

![Exported image](Exported%20image%2020241209225318-0.png)

there are several traversals, each has its own purpose:  
**Pre-order (depth-first) traversal**  
before calling children, visit the node itself  
**Post-order traversal (depth first)**  
call the children before visiting the node itself  
**Breadth-first**  
visit the node itself, then visit descendants layer by layer  
**In-Order tree traversal (for binary trees)**  
visit the left child, then the parent, then right child.
 
**Binary Tree**  
Binary trees have nodes with at most two children.  
note that one or none children is still allowed in a binary tree.
 
**Proper Binary Tree**

- A full/proper binary tree is a binary tree with nodes with either two or no children, single children are not part of a full binary tree.
 
**In-Order tree traversal (for binary trees)**

- visit the left child, then the parent, then right child.    

**Representations / Implementations of a Tree**  
**Linked Tree Implementation**

![Exported image](Exported%20image%2020241209225319-1.png)

This implementation is generally recommended.
 - O(n) space complexity (size of the tree n)
- O(1) operations for insertion/removal    

**Array-based Binary Tree Implementation**

![Exported image](Exported%20image%2020241209225320-2.png)

This implementation of a tree is efficient when specific operations are performed￼

- O(2h) / O(2n) space complexity. (Exponential!)
- Many update operations require changing the entire array!