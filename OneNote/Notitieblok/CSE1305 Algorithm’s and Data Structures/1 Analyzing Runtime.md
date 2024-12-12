Algorithms rely on appropriate representations of input data

- set of instructions to solve problems
 
Data structure: representation of data that enables efficient access

- Containers
- Search trees
- Ordered
- Hash tables
 
Runtime complexity:  
how many steps does algorithm take to get desired result?
 
Empirical analysis pitfalls:

- results may differ based on hardware/OS
- experiments restricted to limited set of inputs
- requires full implementation
    
    - desirable to figure out best algorithm in design phase
- speed of computer may vary over time
 
Counting primitive operations

- assigning value to variable
- performing arithmetic
- comparing
- calling method
- returning from method
- ...
 
Example:  
for(int i=0; i<list.length; i++)  
1 + (n+1) + 2n  
assignment + evaluations + additions/assignments
 
Loops --> use n, where n is list size
 
Functions have different runtimes for different sizes of n  
Which function grows faster with a bigger n?  
Choose function that grows slower  
'Function grows/doesn't grow to the order n'
 
Function f(n) is O(n) iff we can put a factor before n such that the result will always be greater than f(n) for values of n above some value
 
Big Oh notation:

- way to describe how well an algorithm performs as input size grows
- more inputs
    
    - longer to run, time complexity
    - more memory, space complexity

O(n)  
O = Order of complexity  
n = number of inputs