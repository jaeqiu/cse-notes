---
From Lecture: "4"
Created time: 2024-09-20T20:36
estimated value (word count): 171
---
A matrix transformation is a function T of the form T(x) = A x
![[Untitled 16.png]]
# Matrix  
Transformation - Shear Transformation  
## The  
Shear transformation shifts every point in a matrix by an amount that  
scales proportionally to its distance from the axes.  
## The  
standard unit vectors are (1 0 0) (0 1 0) (0 0 1) and so forth. The  
standard basis vectors are e1, e2, e3. the columns represent the way  
these unit vectors land after transformation.  
## Horizontal shear  
(parallel to the x-axis)  
![[Untitled 17.png]]
  
## Vertical shear (parallel to  
the y-axis)  
![[Untitled 18.png]]
## Rotation
![[Untitled 19.png]]
# Find matrix A from two  
transformations  
https://www.youtube.com/watch?v=p4H_vrQV6Sw
1. Write e1, e2 as a Linear Combination of u & v.
2. Solve (u v e1) and (u v e2) for e1, e2.
3. Find T(e1) and T(e2).
4. Then solve T(e1) = e1,1 * [T(u)] + e1,2 * [T(v)] in order to get the first column.
5. Solve T(e2) = e2,2 * [T(u)] + e2,2 * [T(v)] in order to get the second column.
6. Combine the two and you have the Matrix A = [T(e1) T(e2)].