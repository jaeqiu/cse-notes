---
Course Name: Linear Algebra
Course Code: CSE1205
Course Timing: Y1Q3
Course Status: completed
Last edited time: 2024-09-20T20:35
---
> Linear Algebra
> 
> - Echelon Form
>     
>     > Main Takeaway: The Echelon form, Reduced Row Echelon form, and Gaussian Elimination are crucial concepts in linear algebra. They help simplify matrices, making it easier to solve linear systems.
>     
>     - **Echelon Form**
>         
>         ![Untitled 104.png](../../attachments/Untitled%20104.png)
>         
>         For a matrix to be in row echelon form, it must suffice the following properties:
>         
>         - **Sink Null Rows**: Fully zeroed out rows are at the bottom of this matrix
>         - **Pivot in Order**: Successive rows start (start considering the first number which is not zero) further ahead than the starting position of the 1 in the row above.
>         - **Nulls Across the Board Below a Pivot**: Every entry below a pivot entry is null.
>         
>         This is not unique, that is to say, a matrix can have multiple row echelon forms.
>         
>     - **Reduced Row Echelon Form**
>         
>         ![Untitled 1 9.png](../../attachments/Untitled%201%209.png)
>         
>         For a matrix to be in reduced row echelon form, it must follow along the following properties:
>         
>         - It must be in normal row echelon form.
>         - **Lead with 1 as Pivot**: The first number in a row is 1 (unless the row is made up of zeroes).
>         - **Lead the Entire Column**: Each column containing a leading 1 has a zero at that position in all the other entries.
>         
>         This is unique, every matrix has a unique reduced row echelon form.
>         
>         ![Untitled 2 9.png](../../attachments/Untitled%202%209.png)
>         
>     - **Gaussian Elimination**
>         
>         In order to turn a matrix into row echelon form, a sequence of elementary row operations is done. The operations shown in the picture turn the matrix into something different from its original, but it still says something about the original; since the row echelon form has two non zero rows, we can say the original matrix has a rank of 2.
>         
>         **Spell Book: Row Operations**  
>         The following are the three elementary row operations:  
>         
>         - Replace a row by the sum of itself and a multiple of another row.
>         - Interchange two rows.
>         - Multiply (all entries of) a row by a constant (as long as it’s not 0).
>     - **How to Solve a Linear System**
>         
>         - **Free vs Basic Variables**:
>             - A basic variable is a column with a pivot position (entry).
>             - A free variable is a column with no pivot positions.
>         
>         A consistent system can be solved by expressing all basic (pivoted) variables in terms of free variables.
>         
>         If there are no free variables, the system has one unique solution.
>         
>         **Algorithm for Solving a Linear System**
>         
>         - Cast Gaussian elimination onto the augmented matrix.
>         - Inconsistent matrices (where an impossible row exists, like 0 0 0 0 0 0 0 c) cannot be solved.
>         - For the remaining consistent matrices, find the solution using backwards substitution (making sure a pivot is below strictly 0’s)
>         - Reduce from r e f to r r e f.
>     - **Coefficient Matrix vs Augmented Matrix**
>         
>         ![Untitled 3 9.png](../../attachments/Untitled%203%209.png)
>         
>         The coefficient matrix consists of the coefficients of the unknowns in the system of equations, while the augmented matrix is the coefficient matrix appended with a column of constants from the right side of the equation.
>         
> - Linear System
>     
>     - how many solutions does a system of linear equations have?
>     - is this linear system consistent?
>     - what echelon form is this matrix in?
>     - how does echelon form determine number of solutions for a given  
>         system of linear equations?  
>         
>     - how can I solve a consistent linear system from a reduced echelon  
>         form by selecting the free variables and express the basic variables in  
>         terms of such free variables?  
>         
>     
>     ![Untitled 4 9.png](../../attachments/Untitled%204%209.png)
>     
> - Span
>     
>     > Main Takeaway: Understanding the concepts of linear combination and span of vectors, along with the idea of linear dependency, is crucial. Linear dependency is defined when one vector of the basis lies in the span of the remaining vectors, implying it doesn't contribute to the dimensionality of the span. Two vectors that point in the same or opposite direction are linearly dependent, creating a straight line, not a plane.
>     
>     - **Linear Combination and Span**
>         - **Linear Combination**: A linear combination of vectors is a combination of those vectors using scalar multiplication and addition.
>         - **Span**: The span of multiple vectors is the set of all possible vectors that can be created by a linear combination of the given vectors.
>         - **The Relationship**: The relationship between a linear combination and a span of input vectors is that the span represents all possible linear combinations of the input vectors.
>     - **Linear Dependency**
>         
>         - **Definition**: Linear dependency is defined by the equation `Ax = 0` having a nontrivial solution.
>         - **Implication**: If one vector of the basis already lies in the `span` of the remaining vectors, it is `linearly dependent` on them. This vector doesn’t add anything useful as it roams around the same span.
>         - **Linear Independence**: If every basis vector adds another dimension to the span, each of those vectors is `linearly independent`.
>         - **Linear Dependency of Direction**: Two vectors are said to be linearly dependent, if they point in the same or opposite direction. Their span doesn’t take the form of a plane but a straight line.
>         - **Zero Vectors**: Two zero vectors suffice this condition of linear dependency.
>         
>           
>         
> - Vector Equation
>     - Vector Equation
>         
>         A vector equation looks like this.
>         
>         ![Untitled 5 9.png](../../attachments/Untitled%205%209.png)
>         
>         corresponding to the linear system:
>         
>         ![Untitled 6 9.png](../../attachments/Untitled%206%209.png)
>         
>         A vector can have n entries, denoted as such
>         
>         ![Untitled 7 9.png](../../attachments/Untitled%207%209.png)
>         
>         since each entry represents a dimension, and we know, for example,  
>         that a 3d coordinate belongs to R3, we can intuitively adopt that  
>         
>         ![Untitled 8 8.png](../../attachments/Untitled%208%208.png)
>         
>     - Equality among vectors
>         
>         ![Untitled 9 7.png](../../attachments/Untitled%209%207.png)
>         
>     - The Zero Vector
>         
>         ![Untitled 10 6.png](../../attachments/Untitled%2010%206.png)
>         
>     - Vector operations
>         
>         ## addition
>         
>         ![Untitled 11 5.png](../../attachments/Untitled%2011%205.png)
>         
>         ## scalarmultiplication
>         
>         ![Untitled 12 4.png](../../attachments/Untitled%2012%204.png)
>         
> - Homogeneous, Solution Set
>     - Homogenous, Solution Set
>         
>         > Main Takeaway: A homogeneous linear system, where constants are set to 0, can have either one or infinitely many solutions. The solution set of a consistent nonhomogeneous linear system parallels that of its corresponding homogeneous linear system.
>         
>     - Homogeneous Linear Systems
>         
>         A **homogeneous** linear system has an augmented matrix with strictly zeroes in the constants column. The constants are set to 0.
>         
>         ![Untitled 13 4.png](../../attachments/Untitled%2013%204.png)
>         
>         ## Solutions
>         
>         The **trivial solution** is for every unknown (`X1, X2,…`) to be zero, since `0 + 0 = 0`. A homogeneous linear system has either one or infinitely many solutions.
>         
>         - If the number of unknowns exceeds the number of equations (more columns than rows), there are **infinitely many solutions**. Each row can at most express one unknown entirely out of other unknowns.
>         - If there are 4 columns and 3 rows, only 3 unknowns can be expressed in terms of others. The last unknown (`Xn`) has full control over the solution, therefore the solution set is **infinite**.
>     - Nonhomogeneous Linear Systems
>         
>         The solution set of a **consistent nonhomogeneous linear system** is parallel to the solution set of its corresponding homogeneous linear system.
>         
>         - A nonhomogeneous linear system can also be **inconsistent**, in which case it has no solutions.
> - Linearly Independent set of vectors
>     
>     linearly independent == null space consists only of the zero vector (In other words, the only linear combination that leads to the zero vector, is the zero vector itself. This is called the trivial solution because it has nothing to do with our own vectors)
>     
>     linearly redundant == null space consists of more than just the zero vector (there are nontrivial solutions to the null space. There is a combination of our vectors that cancel each other out, at least one vector is redundant)
>     
>     ![Untitled 14 4.png](../../attachments/Untitled%2014%204.png)
>     
>       
>     
> - Solution set in Parametric Vector Form
>     
>     > This way of building the solution set is reminiscent of set builder notation. For all s is x a solution.  
>     >   
>     > ”The solution set is the set of all vectors (x1 x2 x3) such that they are linear combination of (-8 5 0) and s(3 -2 1) for any s”  
>     
>     ![Untitled 15 4.png](../../attachments/Untitled%2015%204.png)
>     
> - Matrix Transformation
>     - Matrix Transformation
>         
>         A matrix transformation is a function T of the form T(x) = A x
>         
>         ![Untitled 16 4.png](../../attachments/Untitled%2016%204.png)
>         
>     - shear transformation
>         
>         > The  
>         > Shear transformation shifts every point in a matrix by an amount that  
>         > scales proportionally to its distance from the axes.  
>         
>     - standard unit vectors e1 e2 e3 … ei
>         
>         > The  
>         > standard unit vectors are (1 0 0) (0 1 0) (0 0 1) and so forth. The  
>         > standard basis vectors are e1, e2, e3. the columns represent the way  
>         > these unit vectors land after transformation.  
>         
>     - Horizontal shear (parallel to the x-axis)
>         
>         ![Untitled 17 3.png](../../attachments/Untitled%2017%203.png)
>         
>     - ## Vertical shear (parallel to the y-axis)
>         
>         ![Untitled 18 3.png](../../attachments/Untitled%2018%203.png)
>         
>     - ## Rotation
>         
>         ![Untitled 19 3.png](../../attachments/Untitled%2019%203.png)
>         
>     - Find matrix A from two  
>         transformations  
>         
>         https://www.youtube.com/watch?v=p4H_vrQV6Sw
>         
>         1. Write e1, e2 as a Linear Combination of u & v.
>         2. Solve (u v e1) and (u v e2) for e1, e2.
>         3. Find T(e1) and T(e2).
>         4. Then solve T(e1) = e1,1 * [T(u)] + e1,2 * [T(v)] in order to get the first column.
>         5. Solve T(e2) = e2,2 * [T(u)] + e2,2 * [T(v)] in order to get the second column.
>         6. Combine the two and you have the Matrix A = [T(e1) T(e2)].
>         
>           
>         
> - AB Column Rule
>     
>     A of 6x5, B of 5x2, AB of 6x2 (the rows from A, the columns from B,  
>     since the rows from A are the dimensions of the final anser and the  
>     columns of B are the amount of columns that are processed)  
>     
>     ![Untitled 20 3.png](../../attachments/Untitled%2020%203.png)
>     
> - AB Row-Column Rule
>     
>     ![Untitled 21 3.png](../../attachments/Untitled%2021%203.png)
>     
> - Determinant 1
>     
>     # Scaling  
>     factor by which a linear transformation changes any area  
>     
>     # How can the determinant be  
>     negative?  
>     
>     ## A  
>     negative determinant simply means the orientation of space is  
>     inverted.  
>     
>     # Going from the  
>     matrix A to its Determinant det(A).  
>     
>     sequel:
>     
> - Matrix Addition & Scalar Multiplication
>     
>     # Matrix  
>     Addition is only defined for matrices of the same m rows and n  
>     columns.  
>     
>     ![Untitled 22 3.png](../../attachments/Untitled%2022%203.png)
>     
>     # Scalar Multiplication  
>       
>     
>     ![Untitled 23 3.png](../../attachments/Untitled%2023%203.png)
>     
> - Matrix Vector Multiplication
>     
>     - what is the product of a matrix A and a vector x?
>     
>     ![Untitled 24 3.png](../../attachments/Untitled%2024%203.png)
>     
>     - the matrix vector product of  
>     the above is as such: - -5(5 1) -1 (-2 5) 5 (3 -5) = (-8 -35) - you can  
>     visualize it as the second term, the vector x, lying horizontally above  
>     the first matrix, and then using that as a reference to the weights of  
>     each entry In the matrix, then sum it up horizontally - this product is  
>     only well defined as long as the vector x has as many entries as A has  
>     columns. in other words - if A is a matrix m x n, m rows n column, x has  
>     to be a vector in Rn (in the above example, A is in the form 2x3, x is  
>     in R3.  
>     
>     ![Untitled 25 3.png](../../attachments/Untitled%2025%203.png)
>     
> - Powers of Matrix
>     
>     ![Untitled 26 3.png](../../attachments/Untitled%2026%203.png)
>     
>     Since in a multiplication AB the  
>     result has the amount of rows from A, the amount of columns from B, and  
>     the amount of columns from A needs to match the amount of rows from B.  
>     When multiplying A by A as in AA, the rows and columns need to match,  
>     therefore powers of a matrix are only possible for square matrices (of n  
>     x n) A^0 = I, with I meaning the identity matrix (zeroes across the  
>     board except for a diagonal of 1’s)  
>     
> - Special Matrices
>     
>     # Special Matrices
>     
>     - **Zero Matrix**: A matrix in which all entries are zero.
>     - **Square Matrix**: A matrix with an equal number of rows (m) and columns (n), forming a square shape. The main diagonal of a square matrix includes all entries where the row number is the same as the column number (denoted as $a_{ii}$).
>     - **Diagonal Matrix** (must be square): A matrix in which all off-diagonal entries are zero.
>     - **Identity Matrix** (must be square): A matrix that is all zeroes except for 1's on the main diagonal. It is a type of diagonal matrix with only 1's for the main diagonal entries.
>     - **Lower Triangular Matrix** (must be square): A matrix where all entries above the main diagonal are zero. The term 'lower' refers to the populated, not-necessarily-zero part of the matrix.
>     - **Upper Triangular Matrix** (must be square): A matrix where all entries below the main diagonal are zero. The term 'upper' refers to the populated, not-necessarily-zero part of the matrix.
> - Transpose of a Matrix
>     
>     # The transpose A^T of a Matrix A is a matrix that has rows for  
>     columns- and columns for rows in the original matrix A.  
>     
>     ![Untitled 27 3.png](../../attachments/Untitled%2027%203.png)
>     
> - Inverse matrices
>     
>     > Summary: This section discusses the concept of inverse matrices, its properties, and how to find the inverse of a 3x3 matrix. Key aspects include the role of inverse matrices in undoing transformations, the impact of matrix transformations with a determinant of zero, and the significance of column space, rank, and null space in matrix transformations.
>     
>     # **Inverse Matrices**
>     
>     An **inverse matrix** represents the transformation that a matrix needs to undergo to undo the previous transformation. This process involves flipping the diagonal and negating both poles. The inverse of a matrix is the determinant of the original matrix times a new matrix where the diagonal is flipped and the poles are negated.
>     
>     ![Untitled 28 3.png](../../attachments/Untitled%2028%203.png)
>     
>     - _Note_: You can use the inverse matrix to solve a linear system, although inefficiently.
>     
>     ![Untitled 29 3.png](../../attachments/Untitled%2029%203.png)
>     
>     - _Important_: There is no inverse **function** to matrix transformations that have a determinant of zero, since mapping a higher dimension into a lower dimension cannot be reversed cleanly.
>     
>     ## **Matrix Transformation Properties**
>     
>     ### **Column Space**
>     
>     Column space is the same as the span of the columns in that standard matrix.
>     
>     ### **Rank**
>     
>     The rank is a property of a matrix transformation that represents to what dimension it projects. `Full rank` is the maximal rank for that input dimension.
>     
>     ### **Null Space**
>     
>     Null space is the subdomain of input vectors that map to the zero vector after this transformation.
>     
>     - _Note_: It matters whether you multiply on the right or left (incommutativity).
>     
>     # **Finding the Determinant of a 3x3 Matrix**
>     
>     For each cell in the top row, multiply by the determinant of the remaining 2x2 matrix if you cover the row and column of the considered cell. Each of these needs to be summed in a + - + fashion.
>     
>     # **Finding the Inverse of a 3x3 Matrix**
>     
>     ## **Find the Matrix of Minors**
>     
>     Ignore the entire row and column, and find the determinant of the remaining 2x2s for each cell.
>     
>     ## **Find the Matrix of Cofactors**
>     
>     Follow a checkerboard pattern in a diamond shape for minuses.
>     
>     ## **Find the Adjoint**
>     
>     Reflect across the main diagonal.
>     
>     ## **Divide by the Determinant**
>     
>     Divide each cell by the determinant.
>     
> - Subspaces
>     
>     # Finding  
>     Basis for Column Space, Row Space, and Null Space  
>     
>     ## Find basis for span()
>     
>     ## Null space
>     
>     Ax = 0 answer like s[]+ t[] ## Col space return the columns that  
>     would be pivot columns after reducing to rref answer like [],[] ## Row  
>     space ?  
>     
> - Coordinates and Dimension
>     
>     # Rank Theorem
>     
>     Rank(A) + Dim(Null(A)) = column count since the column count  
>     signifies the input vector dimension, and the rank the output, the  
>     difference constitutes the dimensions that we’re lost. all these lost  
>     dimensions are equal to dim(null(a)) since the null space will take the  
>     form of the entire subspace that compute to the zero vector after the  
>     linear transformation of matrix A # Basis Theorem >  
>     **Theorem:** > Let W be a p-dimensional subspace of Rn.  
>     Then:  
>     
>     > 1. Any linearly independent set of exactly p elements in W is a  
>     basis for W. > 2. Any set of exactly  p elements in W that spans W is  
>     a basis for W.  
>     
>     what this means in normal human language is that any set of vectors  
>     that are linearly independent (= nonredundant) are valid basis vectors  
>     for the subspace in Rn dimensions, with n being the amount of vectors in  
>     the set i just talked about.  
>     
> - Determinant 2
>     
>     ## Cofactor expansion
>     
>     ### Determinant of n x n  
>     matrix A  
>     
>     ![Untitled 30 3.png](../../attachments/Untitled%2030%203.png)
>     
>       
>     
>     ## Triangular matrices
>     
>     ![Untitled 31 3.png](../../attachments/Untitled%2031%203.png)
>     
>     ## Determinant vs elementary row operations  
>       
>     
>     ![Untitled 32 3.png](../../attachments/Untitled%2032%203.png)
>     
>     ![Untitled 33 3.png](../../attachments/Untitled%2033%203.png)
>     
>     ## Determinants vs invertibility
>     
>     ![Untitled 34 3.png](../../attachments/Untitled%2034%203.png)
>     
>     ![Untitled 35 3.png](../../attachments/Untitled%2035%203.png)
>     
> - Eigen
>     
>     ## Eigenvalue _λ_, Eigenvector _x_
>     
>     ![Untitled 36 3.png](../../attachments/Untitled%2036%203.png)
>     
>     ## Eigenspace _Eλ_ the geometric  
>     multiplicity of an eigenvalue is equal to the dimension of its  
>     eigenspace.  
>     
>     ![Untitled 37 3.png](../../attachments/Untitled%2037%203.png)
>     
>     ## Eigenvalues,  
>     Eigenvectors of a projection  
>     
>     ![Untitled 38 3.png](../../attachments/Untitled%2038%203.png)
>     
>       
>     #\#Characteristic equation  
>     
>     ![Untitled 39 3.png](../../attachments/Untitled%2039%203.png)
>     
>       
>     
>     (_A_−_λI_)_x_ = 0  
>     _Ax_ = _λx_
>     
>     > Av = λIvAv − λIv = 0  
>     > (A−λI)v = 0  
>     > with v ≠ 0 det(A−λI) = 0  
>     
>     > det(A−λI) = 0
>     
>     ## Algebraic multiplicity of  
>     Eigenvalues  
>     
>     ![Untitled 40 3.png](../../attachments/Untitled%2040%203.png)
>     
>     the geometric multiplicity of an  
>     eigenvalue is equal to the dimension of its eigenspace.  
>     
>     ## Add to properties of a  
>     square matrix  
>     
>     ![Untitled 41 3.png](../../attachments/Untitled%2041%203.png)
>     
>       
>     
>     # Geometric multiplicity  
>       
>     
>     ![Untitled 42 3.png](../../attachments/Untitled%2042%203.png)
>     
>     ![Untitled 43 3.png](../../attachments/Untitled%2043%203.png)
>     
> - Diagonalization
>     
>     > Main Takeaway: Diagonalization and similarity are key concepts related to matrices. Two matrices are similar if they can be converted into each other using an invertible matrix. A matrix is diagonalizable if it is similar to a diagonal matrix.
>     
>     ## **Similarity**
>     
>     - **Definition:** Two **n x n matrices A and B** are said to be _similar_ if there exists an **invertible n x n matrix P** such that `A = PBP⁻¹`.
>     - **Key Attributes:**
>         - **Characteristic Polynomial**
>         - **Eigenvalues**
>         - **Algebraic Multiplicity**
>         - **Geometric Multiplicity**
>     - **Eigenvectors:** An eigenvector of **B (v)** is an eigenvector of **A (Pv)** if and only if they have the same **eigenvalue (λ)**.
>     
>     ## **Diagonalization**
>     
>     - **Definition:** A matrix **A** is _diagonalizable_ if **A** is similar to **D**, in `A = PDP⁻¹` for a **diagonal D and invertible P**.
>     
>       
>     
>     ![Untitled 44 3.png](../../attachments/Untitled%2044%203.png)
>     
>     # Second Diagonalization Theorem
>     
>     ![Untitled 45 3.png](../../attachments/Untitled%2045%203.png)
>     
>     # Lecture
>     
>     ![Untitled 46 3.png](../../attachments/Untitled%2046%203.png)
>     
>     ![Untitled 47 3.png](../../attachments/Untitled%2047%203.png)
>     
>     ![Untitled 48 3.png](../../attachments/Untitled%2048%203.png)
>     
>     ![Untitled 49 3.png](../../attachments/Untitled%2049%203.png)
>     
>     # Example problem diagonalizability
>     
>     ![Untitled 50 3.png](../../attachments/Untitled%2050%203.png)
>     
>     Find $\alpha$ such that the following matrix is diagonalizable.
>     
>     $A = \begin{pmatrix} 5 & 4 & 9 & -8 \\ 0 & 1 & 3 & 9 \\ 0 & 0 & 5 & 4 \\ 0 & 0 & 0 & 3 \end{pmatrix}$
>     
>     The correct answer is $\alpha = -3$.
>     
>     Since $A$ is upper triangular, its eigenvalues are on its diagonal.
>     
>     We find $\lambda_1 = 5$ (algebraic multiplicity 2), $\lambda_2 = 1$ (algebraic multiplicity 1) and $\lambda_3 = 3$ (algebraic multiplicity 1).
>     
>     Our 4×4 matrix is diagonalizable if the geometric multiplicities of its eigenvalues add up to four. Since $\lambda_2$ and $\lambda_3$ both have algebraic multiplicity 1, their geometric multiplicities must also be equal to 1.
>     
>     We therefore investigate the geometric multiplicity of the eigenvalue $\lambda_1 = 5$.
>     
>     Recall that this geometric multiplicity is equal to the dimension of the eigenspace $E_5$ .
>     
>     This eigenspace is equal to the null space of $A - 5I$.
>     
>     $A - 5I = \begin{pmatrix} 0 & 4 & 9 & -8 \\ 0 & -4 & 3 & 9 \\ 0 & 0 & 0 & 4 \\ 0 & 0 & 0 & -2 \end{pmatrix} \sim \begin{pmatrix} 0 & 4 & 9 & -8 \\ 0 & 0 & 3 & 9 \\ 1 & 0 & 0 & 0 \\ 0 & 4 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}$
>     
>       
>     
>     Note that the third column of $A - 5I$ may or may not be a pivot column, depending on the value of $\alpha$ .
>     
>     And recall that the dimension of this null space is equal to the number of columns without a pivot position.
>     
>     So we find
>     
>     $dim(Nul(A - 5I)) = \begin{cases} 1 & \text{if } \alpha \neq -3 \\ 2 & \text{if } \alpha = -3 \end{cases}$  
>       
>     
>     Since our 4×4 matrix is diagonalizable if the geometric multiplicities of its eigenvalues add up to four, we find that $A$ is diagonalizable if and only if $\alpha = -3$ .
>     
>       
>     
>     # Similarity
>     
>     ![Untitled 51 3.png](../../attachments/Untitled%2051%203.png)
>     
>     ![Untitled 52 3.png](../../attachments/Untitled%2052%203.png)
>     
>     ![Untitled 53 3.png](../../attachments/Untitled%2053%203.png)
>     
>     ![Untitled 54 3.png](../../attachments/Untitled%2054%203.png)
>     
>     ![Untitled 55 3.png](../../attachments/Untitled%2055%203.png)
>     
>     ![Untitled 56 3.png](../../attachments/Untitled%2056%203.png)
>     
>     ![Untitled 57 3.png](../../attachments/Untitled%2057%203.png)
>     
>     ![Untitled 58 3.png](../../attachments/Untitled%2058%203.png)
>     
> - Complex Eigenvalue
>     
>     # Complex Eigenvalue to Eigenvector, C=SR
>     
>     ![Untitled 59 3.png](../../attachments/Untitled%2059%203.png)
>     
>     as usual, going from an eigenvalue to it’s eigenvector requires solving (A-\lambda I) x = 0. This also involves reducing the matrix (A- \lambda x) to echelon form. You should add a multiple of the nonimaginary pivot to the other entry to reduce to echelon form, for example: in the matrix
>     
>     $A-\lambda$I =
>     
>     $\begin{pmatrix}-4+2i & 2 \\-10 & 4+2i\end{pmatrix}$perform the following row operation $R_1 += (\frac{4-2i}{-10}) R_2$ to achieve $\begin{pmatrix}0 & 0 \\-10 & 4+2i\end{pmatrix}$, which after swapping $R_1 \xleftrightarrow{swap} R_2$ gives
>     
>     $\begin{pmatrix}-10 & 4+2i\\0 & 0 \end{pmatrix}$ which is in REF (=Row Echelon Form)
>     
>     The last step to get the Eigenvector is to write the solution set in parametric vector form
>     
>     $\begin{pmatrix}x_1\\ x_2 \end{pmatrix} = s/x_2\begin{pmatrix}\frac{2}{5}+\frac{1}{5}i\\ 1 \end{pmatrix}$
>     
>     associated with the eigenvalue $\lambda = 6 - 2i$, $A = \begin{pmatrix}2 & 2\\ -10 & 10 \end{pmatrix}$
>     
>       
>     
>     Considering $A=PDP^{-1}$ and $P = \begin{pmatrix} \begin{pmatrix} x_1real\\ x_2real \end{pmatrix} \begin{pmatrix} x_1imaginary\\ x_2imaginary \end{pmatrix} \end{pmatrix}$
>     
>     we find for our case that $P=\begin{pmatrix} \frac{2}{5}&\frac{1}{5} \\1 & 0 \end{pmatrix}$ and $D=\begin{pmatrix} 6 &-2 \\ 2 & 6 \end{pmatrix}$
>     
>     to write $D=SR$, with scalar matrix S and rotational matrix R, we compute the **norm**
>     
>     $r=|z|=|a+bi|$, in our case $r=2\sqrt{10}$ since we have $\lambda = 6 - 2i$.
>     
>     Then the rotation matrix is found by $R=\frac{1}{r}D$
>     
>     In our case $R=\frac{1}{2\sqrt{10}}\begin{pmatrix} 6 &-2 \\ 2 & 6 \end{pmatrix}=\begin{pmatrix} \frac{6}{2\sqrt{10}} &\frac{-2}{2\sqrt{10}} \\ \frac{2}{2\sqrt{10}} & \frac{6}{2\sqrt{10}} \end{pmatrix}$
>     
>     of course the scalar matrix
>     
>     $S=\begin{pmatrix} 2\sqrt{10} &0 \\ 0 & 2\sqrt{10} \end{pmatrix}$
>     
>     ![Untitled 60 3.png](../../attachments/Untitled%2060%203.png)
>     
> - Discrete Dynamical System
>     
>     ![Untitled 61 3.png](../../attachments/Untitled%2061%203.png)
>     
>     ![Untitled 62 3.png](../../attachments/Untitled%2062%203.png)
>     
>     ![Untitled 63 3.png](../../attachments/Untitled%2063%203.png)
>     
>     ![Untitled 64 2.png](../../attachments/Untitled%2064%202.png)
>     
>     ![Untitled 65 2.png](../../attachments/Untitled%2065%202.png)
>     
>     ![Untitled 66 2.png](../../attachments/Untitled%2066%202.png)
>     
>     ![Untitled 67 2.png](../../attachments/Untitled%2067%202.png)
>     
>     ![Untitled 68 2.png](../../attachments/Untitled%2068%202.png)
>     
>     ![Untitled 69 2.png](../../attachments/Untitled%2069%202.png)
>     
>     ![Untitled 70 2.png](../../attachments/Untitled%2070%202.png)
>     
> - Inner product, Orthogonal Projection
>     - Dot Product, Orthogonality
>         - Dot product
>             
>             > Inner product of a and b
>             > 
>             > $\overrightarrow{a}\overrightarrow{b} = \overrightarrow{a}^T \overrightarrow{b} = |\overrightarrow{a}| |\overrightarrow{b}|cos(\theta)$
>             
>         - Orthogonality
>             
>             > orthogonal == 90 degree angle
>             > 
>             > ![Untitled 71 2.png](../../attachments/Untitled%2071%202.png)
>             > 
>             > $\overrightarrow{x}$ is orthogonal to W if it is orthogonal to every basis of W; w
>             
>         - Orthogonal Complement
>             
>             > Orthogonal complement $W^\perp$= everything that is orthogonal to your current subspace
>             > 
>             > ![Untitled 72 2.png](../../attachments/Untitled%2072%202.png)
>             > 
>             > The orthogonal complement $\overrightarrow{W}$ of W is the set of vectors representing every dimension that W is orthogonal to.
>             > 
>             > ![Untitled 73 2.png](../../attachments/Untitled%2073%202.png)
>             
>             ## Fundamental matrix spaces
>             
>             > you need to know this fundamental property by heart
>             > 
>             > ![Untitled 74 2.png](../../attachments/Untitled%2074%202.png)
>             > 
>             > I don’t understand this yet, it was intuitive until the ^T, the orthogonal complement of a span of a matrix transformation is not just the null space, but the transpose thereof?
>             
>             ## Dimension, Orthogonal complement
>             
>             > the sum of the dimension of a subspace W and it’s complement, is n(as in $R ^ n$, so all currently considered dimensions)
>             
>             ![Untitled 75 2.png](../../attachments/Untitled%2075%202.png)
>             
>         - Orthogonal vs Orthonormal
>             
>             > orthogonal set = set that has orthogonal vectors
>             > 
>             > orthonormal set = orthogonal set with only lengths 1
>             > 
>             > ![Untitled 76 2.png](../../attachments/Untitled%2076%202.png)
>             > 
>             > ## Coordinates in terms of orthogonal matrices
>             > 
>             > something special happens when your bases are orthogonal, and something even more special happens when they are orthonormal.
>             > 
>             > ![Untitled 77 2.png](../../attachments/Untitled%2077%202.png)
>             > 
>             > ## Orthogonal columns
>             > 
>             > ![Untitled 78 2.png](../../attachments/Untitled%2078%202.png)
>             
>         - Orthogonal Matrix extends Square Matrix
>             
>             > A square matrix is orthogonal if it has orthonormal columns (so UTU=I)  
>             >   
>             > 
>             > ![Untitled 79 2.png](../../attachments/Untitled%2079%202.png)
>             
>             - $U^TU=I$ (Transpose = Inverse for orthogonal matrices)
>     - Orthogonal Projections
>         - Orthogonal Projection onto a subspace
>             
>             > $\overrightarrow{y} = \hat{y} + z$  
>             > for $\hat{y} \subseteq W$  
>             > and $z \subseteq W^\perp$
>             > 
>             > ![image\_2024-03-25\_171311731.png](../../attachments/image_2024-03-25_171311731.png)
>             > 
>             > $\hat{y} = \hat{y}_1 + ... + \hat{y_2}$
>             > 
>             > ### Theorem
>             > 
>             > > _Let_ $W$ _be a **subspace** of_ $R^n$.  
>             > > _If_ $\{u_1,\space...,\space u_p\}$_is an_ **orthogonal** _basis for_ $W$  
>             > > _and_ $y \in R^n$  
>             > > _Then_  
>             > > $proj_w(\overrightarrow{y}) = \frac{\overrightarrow{y}\cdot u_1}{u_1 \cdot u_1} u_1+ ... +\frac{\overrightarrow{y}\cdot u_p}{u_p \cdot u_p}u_p$
>             > 
>             > without the denominators in case of _**orthonormal**_ bases already
>             
>         - Best-Approximation of something out of reach
>             
>             > The best approximation of a point outside a subspace is it’s orthogonal projection onto the subspace (that _**is**_ accessible)  
>             > $\hat{y}$ is the optimal vector (shortest distance from $y$)
>             > 
>             > $\hat{y}$ is the best approximation of $y$ in the subspace W
>             > 
>             > > INTUITION: distance from point to line is defined as the shortest distance  
>             > > IN GENERAL:  
>             > > 
>             > > ![Untitled 80 2.png](../../attachments/Untitled%2080%202.png)
>             > 
>             > ### Theorem
>             > 
>             > > Let $W$ be a subspace of $\mathbb{R}^n$, $\overrightarrow{y}$ a vector in $\mathbb{R}^n$ and let $\hat{y}$ be the orthogonal projection of $\overrightarrow{y}$ onto $W$. Then $|y - \hat{y}| \leq |y - v|$ for all vectors $v$ in $W$.  
>             > >   
>             > > 
>             > > ![Untitled 81 2.png](../../attachments/Untitled%2081%202.png)
>             
>         - Going from orthonormal bases of a subspace to its matrix
>             
>             > “matrix” meaning the orthogonal transformation that maps to that subspace  
>             > $UU^T = P$  
>             >   
>             > 
>             > An orthogonal projection can be described as a Linear Transformation.
>             > 
>             > - evenly spaced, parallel lines are still evenly spaced and parallel after the transformation
>             > 
>             > ### Orthogonal Projections for video game shadows
>             > 
>             > A linear transformation can not represent perspective, but it can represent orthographically
>             > 
>             > ![Untitled 82 2.png](../../attachments/Untitled%2082%202.png)
>             > 
>             > ### Theorem
>             > 
>             > > Let $\{u_1,\space...,\space u_p\}$ be an ortho _**normal**_ basis for a subspace $W \subset R^n$  
>             > > Then  
>             > > 
>             > > - $proj_w(\overrightarrow{y}) =$ $UU^t (y)$, having $U = [u_1,\space ...,\space u_p]$
>             > > - $P = UU^T$, the standard matrix of the $projection_{ontoW}$, and $P=P^2=P^T$
>             
>         - Distinctions
>             
>             > An orthogonal matrix has _**orthonormal**_ columns  
>             > _**orthonormal**_ columns are orthogonal columns with unit length 1  
>             > $U^TU$ = I holds for orthogonal matrices  
>             > UUT= I holds for  
>             > orthogonal matrices  
>             > UUT = P holds for subspaces with _**orthonormal**_ bases  
>             > transform the given  
>             > orthogonal bases to _**orthonormal**_ by dividing by the length
>             
>         - Academic Reasoning II
>             
>             $\bar{v}$ vs $\overrightarrow{v}$
>             
>             ![Untitled 83 2.png](../../attachments/Untitled%2083%202.png)
>             
>             ![Untitled 84 2.png](../../attachments/Untitled%2084%202.png)
>             
>             ![Untitled 85 2.png](../../attachments/Untitled%2085%202.png)
>             
>             ![Untitled 86 2.png](../../attachments/Untitled%2086%202.png)
>             
>             ![Untitled 87 2.png](../../attachments/Untitled%2087%202.png)
>             
> - Gram-Schmidt Process
>     
>     > ==Gram-Schmidt Process==
>     > 
>     > - ==Find orthogonal/orthonormal bases from unorthogonal bases==
>     >     
>     >     > The goal is to derive orthogonal bases from bases that might not be orthogonal. The process goes as follows:
>     >     > 
>     >     > - We have the three original bases (not orthogonal) $W=span(x_1,x_2,x_3)$
>     >     > - We want the three derived orthogonal bases $\{v_1, v_2, v_3\}$
>     >     > - let $v_1 = x_1$, this makes sense, since $x_1$ by itself can not violate the requirement of orthogonality; how could a single vector have _**at least one vector that is redundant(== linearly dependent) with respect to the other vectors**_ when there are no other vectors?
>     >     > - let $v_2 = x_2 - proj_{span(v_1)}(x_2)= x_2 - \frac{x_2\centerdot v_1}{v_1 \centerdot v_1}v_1$, this can be thought of as taking everything not-orthogonal about x2 away from itself to leave v2 behind
>     >     > - let $v_3 = x_3 - \frac{x_3 \centerdot v_2}{v_2 \centerdot v_2}v_2 - \frac{x_2\centerdot v_1}{v_1 \centerdot v_1}v_1$
>     >     > - now you have $\{v_1, v_2, v_3\}$, which suffice as orthogonal bases for the same subspace
>     >     > 
>     >     > you could imagine how this process would cascade onwards for larger sets of vectors
>     >     
>     > - ==Requirements for Gram-Schmidt process==
>     >     
>     >     > There are hardly any requirements for this process. You could even do this process to bases that are already orthogonal! Although that would result in the same bases back or a similar variation of it.  
>     >     >   
>     >     > The only requirement to remember is, the original bases need to be linearly independent.  
>     >     > Suppose one of the vectors is redundant (= linearly dependent/a linear combination of the others) then the perpendicular complement of the projection of that redundant vector onto the span of the other vectors will be zero (in other words, the original vector _**is already**_ the projection of itself onto the remaining vectors)
>     >     
>     > - Turn non-orthogonal bases into ortho _**normal**_ bases
>     >     
>     >     > the idea is to first turn the bases into orthogonal ones, then to _**normalize**_ its  
>     >     >   
>     >     > 
>     >     > - Use the Gram-Schmidt process to get orthogonal bases
>     >     > - Normalize the returned vectors by dividing each by the absolute length of itself. (divide by magnitude/length, which is the square root of dot product of itself and itself)
>     >     
>     
> - Least-Squares Problem
>     
>     > Least-Squares Problem
>     > 
>     > - ==How to describe higher dimensional vector?!?==
>     >     
>     >     > Although a lower dimension vector can not fully describe a higher dimensional vector, the projection of that higher dimensional vector onto the lower-dimensional subspace is the closest approximation thereof in said lower dimension
>     >     > 
>     >     > ![Untitled 88 2.png](../../attachments/Untitled%2088%202.png)
>     >     > 
>     >     > Allison is closer to the 3d ball than Bobertus, since the ball is perpendicular to Alice, not Bob. There is nowhere Bob can stand to be closer to the ball than Alice without being where Alice is, so Alice’s 2D position best-approximates the 3D ball.
>     >     > 
>     >     > $\hat{x}$ is a least squares solution to
>     >     > 
>     >     > $Ax=b$
>     >     > 
>     >     > if
>     >     > 
>     >     > $A\hat{x}=\hat{b}$
>     >     
>     >       
>     >     
>     > 
>     > - Least-Squares Problems
>     >     
>     >     > solve $\hat{b}$, or set of solutions to normal equations $A^TAx=A^Tb$, or unique $x=(A^TA)^-A^Tb$ (when the square matrix $A^TA$ is invertible, it has a unique solution)
>     >     > 
>     >     > ![Untitled 89 2.png](../../attachments/Untitled%2089%202.png)
>     >     
>     > 
>     > - ==Linear Models==
>     >     
>     >     > ![Untitled 90 2.png](../../attachments/Untitled%2090%202.png)
>     >     > 
>     >     > What line best describes all these points, even if there is no line going through all of them?
>     >     > 
>     >     > ![Untitled 91 2.png](../../attachments/Untitled%2091%202.png)
>     >     > 
>     >     > residual = observed - predicted
>     >     > 
>     >     > residuals = $y_i - (\beta_0 + \beta_1 x_i)$  
>     >     >   
>     >     > 
>     >     > ![Untitled 92 2.png](../../attachments/Untitled%2092%202.png)
>     >     
>     > 
>     > - RSS = Residual Sum of Squares
>     >     
>     >     > A good Least Squares Solution minimizes RSS
>     >     
>     >       
>     >     
>     
> - ==Symmetric Matrix==
>     
>     > Symmetric matrices are symmetric to the main diagonal
>     > 
>     > ![Untitled 93 2.png](../../attachments/Untitled%2093%202.png)
>     > 
>     > - ==Eigenvalues and Eigenvalues of Symmetric matrix==
>     >     
>     >     > Symmetric Matrix → Real Eigenvalues  
>     >     >   
>     >     > Symmetric Matrix → + Different Eigenvalues → Orthogonal Eigenvectors  
>     >     
>     > - ==Orthogonally diagonalizable==
>     >     
>     >     > We hit the motherlodian man this shits diagonalizable _**AND**_ orthogonal cuh!
>     >     > 
>     >     > ![Untitled 94 2.png](../../attachments/Untitled%2094%202.png)
>     >     > 
>     >     > symmetric matrix A iff A orthogonally diagonalizable
>     >     > 
>     >     > ![Untitled 95 2.png](../../attachments/Untitled%2095%202.png)
>     >     > 
>     >     > geometric multiplicity = algebraic multiplicity when diagonalizable
>     >     > 
>     >     > diagonalizable iff distinct eigenvalues
>     >     
>     > - ==Spectral Theorem==
>     >     
>     >     > Overal thoughts  
>     >     >   
>     >     > 
>     >     > ![Untitled 96 2.png](../../attachments/Untitled%2096%202.png)
>     >     > 
>     >     > ![Untitled 97 2.png](../../attachments/Untitled%2097%202.png)
>     >     
>     >       
>     >     
>     
>       
>     
#### LINALG NOTES
|From Lecture|Note|estimated value (word count)|
|---|---|---|
|1|[Echelon Form](LINALG%20NOTES/Echelon%20Form.md)|473|
|1|[Linear System](LINALG%20NOTES/Linear%20System.md)|45|
|2|[Span](LINALG%20NOTES/Span.md)|269|
|2|[Vector Equation](LINALG%20NOTES/Vector%20Equation.md)|54|
|3|[Homogeneous, Solution Set](LINALG%20NOTES/Homogeneous,%20Solution%20Set.md)|202|
|3|[Parametric Vector form](LINALG%20NOTES/Parametric%20Vector%20form.md)|12|
|3|[Linearly Independant](LINALG%20NOTES/Linearly%20Independant.md)|30|
|4|[Matrix Transformations](LINALG%20NOTES/Matrix%20Transformations.md)|171|
|5|[Transpose of a Matrix](LINALG%20NOTES/Transpose%20of%20a%20Matrix.md)|20|
|5|[Matrix Vector Multiplication](LINALG%20NOTES/Matrix%20Vector%20Multiplication.md)|136|
|5|[AB Row-Column Rule](LINALG%20NOTES/AB%20Row-Column%20Rule.md)|12|
|5|[Powers of Matrix](LINALG%20NOTES/Powers%20of%20Matrix.md)|94|
|5|[Determinant 1](LINALG%20NOTES/Determinant%201.md)|38|
|5|[Matrix Addition & Scalar Multiplication](LINALG%20NOTES/Matrix%20Addition%20&%20Scalar%20Multiplication.md)|37|
|5|[Special Matrices](LINALG%20NOTES/Special%20Matrices.md)|151|
|5|[AB Column Rule](LINALG%20NOTES/AB%20Column%20Rule.md)|53|
|6|[Inverse matrices](LINALG%20NOTES/Inverse%20matrices.md)|13|
|8|[Subspaces](LINALG%20NOTES/Subspaces.md)|46|
|9|[Coordinates and Dimension](LINALG%20NOTES/Coordinates%20and%20Dimension.md)|155|
|10|[Determinant 2](LINALG%20NOTES/Determinant%202.md)|23|
|11|[Eigen](LINALG%20NOTES/Eigen.md)|58|
|12|[Diagonalization](LINALG%20NOTES/Diagonalization.md)|379|
|13|[Complex Eigenvalue](LINALG%20NOTES/Complex%20Eigenvalue.md)|215|
|14|[Discrete Dynamical System](LINALG%20NOTES/Discrete%20Dynamical%20System.md)|193|
|15-16|[Inner product, Orthogonal Projection](LINALG%20NOTES/Inner%20product,%20Orthogonal%20Projection.md)|589|
|17|[Academic Reasoning II](LINALG%20NOTES/Academic%20Reasoning%20II.md)|20|
|18|[Gram-Schmidt Process](LINALG%20NOTES/Gram-Schmidt%20Process.md)|533|
|19|[Least-Squares Problem](LINALG%20NOTES/Least-Squares%20Problem.md)|94|
|20|[Symmetric Matrix](LINALG%20NOTES/Symmetric%20Matrix.md)|65|
  
  
### queue of failed exam questions
[Distance from y to W\=span{v1,v2}](Distance%20from%20y%20to%20W=span{v1,v2}/Distance%20from%20y%20to%20W=span{v1,v2}.md)
[Gram-Schmidt](Gram-Schmidt/Gram-Schmidt.md)
[Invertible Matrix Theorem](Invertible%20Matrix%20Theorem/Invertible%20Matrix%20Theorem.md)
[Least Squares, Design matrix, Observation vector](Least%20Squares,%20Design%20matrix,%20Observation%20vector/Least%20Squares,%20Design%20matrix,%20Observation%20vector.md)
[Linear Combination](Linear%20Combination/Linear%20Combination.md)
[Orthonormal rows and columns](Orthonormal%20rows%20and%20columns/Orthonormal%20rows%20and%20columns.md)
- Invertible Matrix Theorem
    
    > A square matrix can only be invertible if any (so all) of the following hold
    > 
    > - A ~ I
    > - full rank (==only pivot columns no free variables)==
    > - null space →> x=0 ==(only has the trivial solution)==
    > - columns of A → linearly independent
    > - transformation A surjective
    > - L exists such that LA=I
    > - R exists such that AR=I
    > - $A^T$invertible aswell
    > - A’s columns span for $R^n$
    > - det not 0
    
### trace of matrix
The trace of a matrix is the sum of all eigenvalues. this holds for all square matrices not just triangle/diagonal matrices
given
![Untitled 98 2.png](../../attachments/Untitled%2098%202.png)
with known eigenvalues 4, 4, ?, we can calculate ? = trace - 8. trace = -10. ? = -18
$Col(A)^\perp=Nul(A^T)$
an invertible matrix can be row reduced to I
![Untitled 99 2.png](../../attachments/Untitled%2099%202.png)