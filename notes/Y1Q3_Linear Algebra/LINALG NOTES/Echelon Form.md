---
From Lecture: "1"
Created time: 2024-09-20T20:36
estimated value (word count): 473
---
> Main Takeaway: The Echelon form, Reduced Row Echelon form, and Gaussian Elimination are crucial concepts in linear algebra. They help simplify matrices, making it easier to solve linear systems.
# **Echelon Form**
![Untitled.png](../../../attachments/Untitled.png)
For a matrix to be in row echelon form, it must suffice the following properties:
- **Sink Null Rows**: Fully zeroed out rows are at the bottom of this matrix
- **Pivot in Order**: Successive rows start (start considering the first number which is not zero) further ahead than the starting position of the 1 in the row above.
- **Nulls Across the Board Below a Pivot**: Every entry below a pivot entry is null.
This is not unique, that is to say, a matrix can have multiple row echelon forms.
# **Reduced Row Echelon Form**
![Untitled 1.png](../../../attachments/Untitled%201.png)
For a matrix to be in reduced row echelon form, it must follow along the following properties:
- It must be in normal row echelon form.
- **Lead with 1 as Pivot**: The first number in a row is 1 (unless the row is made up of zeroes).
- **Lead the Entire Column**: Each column containing a leading 1 has a zero at that position in all the other entries.
This is unique, every matrix has a unique reduced row echelon form.
![Untitled 2.png](../../../attachments/Untitled%202.png)
# **Gaussian Elimination**
In order to turn a matrix into row echelon form, a sequence of elementary row operations is done. The operations shown in the picture turn the matrix into something different from its original, but it still says something about the original; since the row echelon form has two non zero rows, we can say the original matrix has a rank of 2.
**Spell Book: Row Operations**  
The following are the three elementary row operations:  
- Replace a row by the sum of itself and a multiple of another row.
- Interchange two rows.
- Multiply (all entries of) a row by a constant (as long as it’s not 0).
# **How to Solve a Linear System**
- **Free vs Basic Variables**:
    - A basic variable is a column with a pivot position (entry).
    - A free variable is a column with no pivot positions.
A consistent system can be solved by expressing all basic (pivoted) variables in terms of free variables.
If there are no free variables, the system has one unique solution.
**Algorithm for Solving a Linear System**
- Cast Gaussian elimination onto the augmented matrix.
- Inconsistent matrices (where an impossible row exists, like 0 0 0 0 0 0 0 c) cannot be solved.
- For the remaining consistent matrices, find the solution using backwards substitution (making sure a pivot is below strictly 0’s)
- Reduce from r e f to r r e f.
# **Coefficient Matrix vs Augmented Matrix**
![Untitled 3.png](../../../attachments/Untitled%203.png)
The coefficient matrix consists of the coefficients of the unknowns in the system of equations, while the augmented matrix is the coefficient matrix appended with a column of constants from the right side of the equation.