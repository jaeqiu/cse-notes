Binary search tree

- binary tree
- each node with key k satisfies the following properties
    
    - keys stored in left subtree are less than k
    - keys stored in right subtree are greater than k
 
Binary search: starting from the root, compare search key with key at node

- smaller: search left
- equal: success
- greater: search right
 
Find position for insertion

- not null -> key is already in tree
- null -> expand to actual node
 
Removing an element

- Easy case: one of the children of node is null
    
    - remove node and replace by child
- Difficult case: both children of node are not null
    
    - find max node in left child
    - replace the to-be-removed node by max node
    - recursively proceed to remove max node
 ![Exported image](../../../attachments/Exported%20image%2020241209225417-0.png)  
![Exported image](../../../attachments/Exported%20image%2020241209225417-1.png)   
How to ensure the Binary Search Tree is balanced?  
Require balance condition that

- ensures the depth is O(log n)
- can be maintained in O(log n) time for each put and remove
   

/////////
 
Solution: AVL trees  
A binary search tree with the AVL balance condition
 
AVL Balance condition: the heights of the children of each node differ by at most 1
 ![Exported image](../../../attachments/Exported%20image%2020241209225418-2.png)   
Insertion

- Use binary tree insertion
- May cause unbalanced nodes, but only along path to the inserted node
- "search and repair" while traversing to root
- by fixing unbalanced nodes using tri-node restructuring along the way

![Exported image](../../../attachments/Exported%20image%2020241209225418-3.png)  

Single rotation

![Exported image](../../../attachments/Exported%20image%2020241209225422-4.png)

- swap x and y. y is higher so y is now on the right subtree
 ![Exported image](../../../attachments/Exported%20image%2020241209225423-5.png)   
Removal

- use binary tree removal
- may create unbalanced nodes, but only along path to the removed node
- "search and repair" while traversing to root
- by fixing unbalanced nodes using tri-node restructuring along the way
 ![Exported image](../../../attachments/Exported%20image%2020241209225423-6.png)  

(Removing the root, replace root with first left predecessor)
 
AVL Time complexity

get, put and remove operations -> O(log n)

- tri-node restructuring takes O(1) time
- get/put/remove visits O(h) nodes and performs O(h) tri-node restructurings
- height of AVL tree of size n is O(log n)