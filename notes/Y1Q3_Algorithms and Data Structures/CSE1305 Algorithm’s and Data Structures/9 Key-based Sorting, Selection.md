Sorting, how fast can we go?
 
We usually use upper-bound Big-O, because we're interested in the maximum time of algorithm
 
Lower bound of sorting, Big-Omega
 ![Exported image](../../../attachments/Exported%20image%2020241209225402-0.png)  

Can we design sorting algorithms faster than O(n log n)?
   

///////////
 
Sorting sequence S = {x0, x1, ... xn-1} with n elements
 
Only count comparisons for lower bound Omega on worst-case

- all algorithms rely on comparisons
- implementation of S doesn't matter
- Comparing xi and xj has 2 outcomes, YES or NO
 
We can represent comparison-based sorting algorithm with binary decision tree T
 ![Exported image](../../../attachments/Exported%20image%2020241209225402-1.png)  

- Each possible run of the algorithm corresponds to a root-to-leaf path in T
- Minimum, worst-case running time is equal to height h of T
- height h is related to number of leaves k
 
- Running time of comparison-based sorting is at least equal to height h of T (minimum)
- Each leaf in T denotes the sequence of comparisons for at most one permutation of S
![Exported image](../../../attachments/Exported%20image%2020241209225402-2.png)- Conversely, each permutation of S must result in a different leaf of T
 
Gives number of permutations: n!
 
Since at least n/2 terms in n! are greater/equal to n/2:

![Exported image](../../../attachments/Exported%20image%2020241209225403-3.png)  

Can we go faster?
   

//////////
 
Let S be a sequence of n (key, element) items.  
Keys are (small integers) in the range {0, ..., N-1}
 
Bucket Sort

- No need for comparisons
- Can use key as index into auxillary array
- All entries with key k are placed in a "bucket" at index k
 
Applications:

- sort string by first letter
- sort phone numbers by area code
 ![Exported image](../../../attachments/Exported%20image%2020241209225403-4.png)

(buckets behave like queues)
 
Phase 1

- process all entries in S one by one, insert at corresponding bucket
 
Phase 2

- process bucket array B and place elements back into sequence
    
    - start at 0
    - if empty, nothing happens
    - if an index contains an array, add elements back to sequence from first to last
 
Sequence S -> Bucket array B -> Sorted Sequence S
   

Time complexities  
where n = number of elements in S  
and N = possible key values
 
Phase 1: O(n + N)

- including creation of B
- n comes from processing S
- N comes from creating bucket array B with N elements
 
Phase 2: O(n + N)

- N comes from processing B (even empty indexes)
- n comes from processing all elements in all arrays within B(?)
 
So both Time and Space Complexity: O(n + N)  
Space can be made O(N) for buckets  
Most efficient when range of keys N is small compared to n

- e.g. if N is O(n) or O(n log n)
   

Properties of Bucket Sort

- Keys are used as indices into array, cannot be arbitrary objects
- Stable sorting
    
    - Preserves relative order of any two items with same key
![Exported image](../../../attachments/Exported%20image%2020241209225407-5.png)  
 
Why is stable sorting relevant?

- when sorting based on multiple criteria

![Exported image](../../../attachments/Exported%20image%2020241209225408-6.png)   
/////////
 
Bucket Sort is limited in applicability  
Bucket Sort has one element connected to one key
 
Radix = N
 
Radix Sort

- uses composite key
- Sort sequence S of n keys that are d-tuples of radix N
- Apply stable bucket sort sequentially, using different elementary key of the tuple at each iteration
 
For example, Dutch phone number is 10-tuple of decimal digits
 
Processing order of elementary keys in d-tuple: Backwards  
e.g. AM **S** -> A **M** S -> **A** MS  
Why not forward?  
Processing next key might destroy order established by previous key
 
Radix Sort (Least Significant Digit)

- Backwards, LSD first
- generally works with keys of equal length
    
    - can work with variable-length keys that align right. either process key per length, or use padding zeroes on the left
- Not really suited for variable-length keys that use lexicographic order
 
Example: airport codes  
key length d = 3  
radix N = 26 (alphabet)  
n = 5 (in real application n >> N)
 ![Exported image](../../../attachments/Exported%20image%2020241209225408-7.png)  

Time complexity:  
Bucket sort applied d times  
O(d(n+N))
 
//////////
 
Radix Sort (Most Significant Digit)

- Only works if we apply bucket sort recursively within each bucket formed in previous iteration

![Exported image](../../../attachments/Exported%20image%2020241209225409-8.png)  

- Works with keys of different length
- Can be faster than LSD, since it may not need to process all elementary keys
- Drawback: recursive
    
    - MSD can have quite some overhead due to recursive calls
   

/////////
 ![Exported image](../../../attachments/Exported%20image%2020241209225409-9.png)   
//////////
 
Selection Problem:  
Select the kth smallest element from an unsorted collection of n comparable elements.  
(Also called order statistics)
 
Solution 1.  
Sort collection. Pick element at index k - 1 in sorted sequence.  
O(n log n) time complexity
 
Solution 2.  
Build heap with n elements in O(n) time, remove k elements.  
O(n + k log n) time complexity.
 
Slow: we can solve for k = 1, k = n, etc. in O(n) time.  
Can we achieve O(n) for all k?
 
Yes, algorithm that uses prune-and-search / decrease-and-conquer  
Instead of dividing problem into several smaller problems, this algorithm will prune away / discard fraction of elements of sequence.
   

//////////
 
Randomized quick-select

Input: Sequence S and integer k  
Output: The kth smallest element of S
    - We know k is in L
- call algorithm with sequence L - check if k is smaller / equal to sum of sizes of L and E
- if so, return pivot - We know k is in R
- Update k to refer to the beginning of R
 
If n == 1 then  
return (first) element of S
 
Pick a random pivot element x of S, divide in 3 sequences  
L, elements less than x  
E, elements equal to x  
R, elements greater than x
 
If k <= |L| then  
return quickSelect(L, k)
 
else if k <= |L| + |E| then  
return x
 
else  
return quickSelect(R, k - |L| - |E|)
 
Difference with quick sort: at most one recursive call

![Exported image](../../../attachments/Exported%20image%2020241209225410-10.png)   
Best case:  
Pivot choice always results in equally sized partitions (~1/2)  
Number of comparisons =

![Exported image](../../../attachments/Exported%20image%2020241209225410-11.png)  

Time O(n)  
Space O(log n) in-place, given by height of recursion tree
 
Worst case:  
Pivot choice always results in one partition size of 0  
Number of comparisons =  
Gauss' sum  
Time O(n^2)  
Space is O(n), given by height of recursion tree
 
Random pivot choice results in

- "good partitions" (one size of at least 1/4)
- with probability at least 1/2

For the upper bound, we recur on the largest partition (size at most 3/4)

![Exported image](../../../attachments/Exported%20image%2020241209225414-12.png)  
![Exported image](../../../attachments/Exported%20image%2020241209225415-13.png)