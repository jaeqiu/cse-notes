A function f(n) is O(n) if and only if  
we can put a factor before n  
such that the result will always be greater than f(n)  
for values of n above some value.
 
∃c, n0 (0 < c ∧ 0 < n0 ∧ (∀n (n >= n0 --> f(n) <= c * g(n))))
 
Proof:  
Take c = ... and n = ...  
Now we prove that for all n >= n0, f(n) <= c * g(n)
 
Binary Search

- Sorted list
- Mid <— (low+high)/2
 
Space can be reused  
Time cannot  
Time complexity >= Space complexity
 
Return f(x-1) * x;  
Return f(x-1, acc*x); // frees up stack frames