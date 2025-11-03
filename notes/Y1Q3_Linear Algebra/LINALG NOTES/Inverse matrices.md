---
From Lecture: "6"
Created time: 2024-09-20T20:36
estimated value (word count): 13
---
> Summary: This section discusses the concept of inverse matrices, its properties, and how to find the inverse of a 3x3 matrix. Key aspects include the role of inverse matrices in undoing transformations, the impact of matrix transformations with a determinant of zero, and the significance of column space, rank, and null space in matrix transformations.
# **Inverse Matrices**
An **inverse matrix** represents the transformation that a matrix needs to undergo to undo the previous transformation. This process involves flipping the diagonal and negating both poles. The inverse of a matrix is the determinant of the original matrix times a new matrix where the diagonal is flipped and the poles are negated.
![Untitled 28.png](../../../attachments/Untitled%2028.png)
- _Note_: You can use the inverse matrix to solve a linear system, although inefficiently.
![Untitled 29.png](../../../attachments/Untitled%2029.png)
- _Important_: There is no inverse **function** to matrix transformations that have a determinant of zero, since mapping a higher dimension into a lower dimension cannot be reversed cleanly.
## **Matrix Transformation Properties**
### **Column Space**
Column space is the same as the span of the columns in that standard matrix.
### **Rank**
The rank is a property of a matrix transformation that represents to what dimension it projects. `Full rank` is the maximal rank for that input dimension.
### **Null Space**
Null space is the subdomain of input vectors that map to the zero vector after this transformation.
- _Note_: It matters whether you multiply on the right or left (incommutativity).
# **Finding the Determinant of a 3x3 Matrix**
For each cell in the top row, multiply by the determinant of the remaining 2x2 matrix if you cover the row and column of the considered cell. Each of these needs to be summed in a + - + fashion.
# **Finding the Inverse of a 3x3 Matrix**
## **Find the Matrix of Minors**
Ignore the entire row and column, and find the determinant of the remaining 2x2s for each cell.
## **Find the Matrix of Cofactors**
Follow a checkerboard pattern in a diamond shape for minuses.
## **Find the Adjoint**
Reflect across the main diagonal.
## **Divide by the Determinant**
Divide each cell by the determinant.