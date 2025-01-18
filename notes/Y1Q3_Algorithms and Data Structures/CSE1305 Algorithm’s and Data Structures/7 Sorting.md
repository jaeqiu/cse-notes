Algorithm: PQ-Sort(S,C)  
Input: sequence S, comparator C  
Output: ordered sequence S
 
Sorting with list based Priority Queue:

1. Create empty priority queue using C
2. For each element in sequence S, remove and add it into the PQ <------- PHASE 1: insertion
3. Call removeMin on PQ consecutively and addLast into S <------- PHASE 2: removal

Sequence S -> Priority Queue PQ -> Ordered Sequence S
   

Two implementations: using unsorted list PQ or sorted list PQ
 
Unsorted list

- Selection Sort
- PQ only gives the orderered sequence after phase 2.
- Insertion takes O(1) time for one element, O(n) for n elements
- Removal takes O(n2) time
 
Sorted list

- Insertion Sort
- PQ gives the ordered sequence after phase 1.
- Insertion takes O(n2) time
- Removal takes O(n) time (so other way round)
   

Space complexity depends on implementation.
 
Linked List, so size of list is modified:

- total number of elements in S & PQ = original number of elements in S
- so number of elements always the same
- O(1) space
 
Array List, so size is fixed:

- O(n) space
- But we can use less ->
   

In-place Insertion Sort

- In-place meaning that we sort the elements within sequence -> constant space O(1)
- portion of input sequence serves as PQ
- from left to right
    
    - select element
    - for every element to the left check if its bigger/smaller
    - insert element at right position
 ![Exported image](../../../attachments/Exported%20image%2020241209225347-0.png)  

In-place Selection Sort

- Looks at all subsequent elements (instead of previous elements)
- from left to right
    
    - select element
    - find minimum from every element to the right
    - swap with minimum element
 ![Exported image](../../../attachments/Exported%20image%2020241209225347-1.png)   
//////////
 
Heap Sort

- use min-heap as PQ
 
Phase 1: Insertion

- ith insertion takes O(log2 i) time
- For n elements: O(n log2 n) time
- We can do better ->
 
Bottom-up construction gives O(n) time  
Phase 1

1. Add all elements to array heap
2. Heapify

Phase 2

1. Repeated calls to removeMin
 
Phase 2: Removal

- O(n log2 n) time
 
Time complexity of Heap Sort: O(n log2 n)  
Space complexity: O(n)
 
How can we reduce space complexity (to O(1))?  
In-place Heap sorting  
...But after calling removeMin, we want to place it towards beginnning of array, which is where our heap is...
 
In-place Heap Sorting:

- We use max-heap instead

❌

![Exported image](../../../attachments/Exported%20image%2020241209225348-2.png)  

✅

![Exported image](../../../attachments/Exported%20image%2020241209225352-3.png)   
//////////
 
Divide-and-conquer

- algorithmic design pattern
- Divide
    
    - [small input: base case]
    
    if input is small, solve problem directly
    
    - [larger input: recurrence]
    
    else, divide input into 2+ disjoint subsets
    
- Conquer
    
    - recursively solve the subproblems associated with the subsets
- Combine
    
    - take solutions of subproblems and merge into a solution to the larger problem
 
Merge Sort

1. Divide
    
    - [Base Case]
    
    if S has less than 2 elements, return S
    
    - [Recurrence]
    
    If S has at least 2 elements, split elements into S1 and S2, each about half
    
2. Conquer
    
    - Recursively sort both
3. Combine
    
    - Put elements back into S by merging S1 & S2 into a sorted sequence
 
Each call -> two recursive calls, so recursion tree is complete binary tree  
Height h of merge sort recursion tree = O(log n)  
Time complexity: O(n log n)
   

Merge Sort (bottom-up, non-recursive)

![Exported image](../../../attachments/Exported%20image%2020241209225352-4.png)   ![Exported image](../../../attachments/Exported%20image%2020241209225353-5.png)