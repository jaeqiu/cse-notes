Quick sort

- uses divide-and-conquer
- hard work done mostly before recursive calls
 
1. Divide

[Base Case] If S has less than 2, return  
[Recurrence] If at least 2,  
Select specific element from S called the pivot

- Sequence L: elements that are smaller
- Sequence E: elements that are equal (including pivot)
- Sequence R: elements that are larger

Remove all elements from S and split them in three sequences
 
1. Conquer

Recursively sort
   

1. Combine

Put back as follows: first elements of L, then E, then R
  
Each recursive call, recur on 2 partitions (L and R)  
In merge sort, 2 partitions are roughly half the size  
In quick sort, size of partitions depend on choice of pivot and elements
 
Good/Best case

- pivot choice leads to nearly equally sized partitions
- Time O(n log n)
- Space O(log n)
- Split doesn't need to be 50-50. Even if 25-75, height is still O(log n).  
Worst case

- pivot leads to unbalanced partition size
- Time O(n2)
- Space O(n)
   

//////////
 
Randomized Quick Sort
 
Deterministic choice of pivot can lead to worst-case  
By introducting randomization by choosing pivot, we can help this
 
Time complexity analysis

- runtime is proportional to number of comparisons
- pivot elements have a variable number of comparisons
- non-pivot elements have one or none comparisons
    
    - specifically: non pivot elements only have 1 comparison per level, until it becomes pivot or it's the only element remaining

![Exported image](../../../attachments/Exported%20image%2020241209225354-0.png)  
![Exported image](../../../attachments/Exported%20image%2020241209225354-1.png)  

With high probability: Time O(n log n)
   

/////////
 
In-Place Quick Sort

- uses element swapping -> no subsequences are created
- subsequence of input is implicitly represented by range given by indices a and b
 
Divide step, scans array simultaneously:

- forward, using index l
    
    - stop when bigger than pivot
- backward, using index r
    
    - stop when smaller than pivot
- When l and r cross, division is complete.
- No explicit combine needed
 ![Exported image](../../../attachments/Exported%20image%2020241209225355-2.png)  
![Exported image](../../../attachments/Exported%20image%2020241209225355-3.png)  
![Exported image](../../../attachments/Exported%20image%2020241209225359-4.png)   
![Exported image](../../../attachments/Exported%20image%2020241209225400-5.png)