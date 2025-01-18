---
From Lecture: "5"
Created time: 2024-09-20T20:36
estimated value (word count): 136
---
- what is the product of a matrix A and a vector x?
![Untitled 24.png](../../../attachments/Untitled%2024.png)
- the matrix vector product of  
the above is as such: - -5(5 1) -1 (-2 5) 5 (3 -5) = (-8 -35) - you can  
visualize it as the second term, the vector x, lying horizontally above  
the first matrix, and then using that as a reference to the weights of  
each entry In the matrix, then sum it up horizontally - this product is  
only well defined as long as the vector x has as many entries as A has  
columns. in other words - if A is a matrix m x n, m rows n column, x has  
to be a vector in Rn (in the above example, A is in the form 2x3, x is  
in R3.  
![Untitled 25.png](../../../attachments/Untitled%2025.png)