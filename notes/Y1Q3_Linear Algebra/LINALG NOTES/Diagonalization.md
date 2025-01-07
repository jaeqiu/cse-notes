---
From Lecture: "12"
Created time: 2024-09-20T20:36
estimated value (word count): 379
---
> Main Takeaway: Diagonalization and similarity are key concepts related to matrices. Two matrices are similar if they can be converted into each other using an invertible matrix. A matrix is diagonalizable if it is similar to a diagonal matrix.
## **Similarity**
- **Definition:** Two **n x n matrices A and B** are said to be _similar_ if there exists an **invertible n x n matrix P** such that `A = PBP⁻¹`.
- **Key Attributes:**
    - **Characteristic Polynomial**
    - **Eigenvalues**
    - **Algebraic Multiplicity**
    - **Geometric Multiplicity**
- **Eigenvectors:** An eigenvector of **B (v)** is an eigenvector of **A (Pv)** if and only if they have the same **eigenvalue (λ)**.
## **Diagonalization**
- **Definition:** A matrix **A** is _diagonalizable_ if **A** is similar to **D**, in `A = PDP⁻¹` for a **diagonal D and invertible P**.
  
![[Untitled 44.png]]
# Second Diagonalization Theorem
![[Untitled 45.png]]
# Lecture
![[Untitled 46.png]]
![[Untitled 47.png]]
![[Untitled 48.png]]
![[Untitled 49.png]]
# Example problem diagonalizability
![[Untitled 50.png]]
Find $\alpha$ such that the following matrix is diagonalizable.
$A = \begin{pmatrix} 5 & 4 & 9 & -8 \\ 0 & 1 & 3 & 9 \\ 0 & 0 & 5 & 4 \\ 0 & 0 & 0 & 3 \end{pmatrix}$
The correct answer is $\alpha = -3$.
Since $A$ is upper triangular, its eigenvalues are on its diagonal.
We find $\lambda_1 = 5$ (algebraic multiplicity 2), $\lambda_2 = 1$ (algebraic multiplicity 1) and $\lambda_3 = 3$ (algebraic multiplicity 1).
Our 4×4 matrix is diagonalizable if the geometric multiplicities of its eigenvalues add up to four. Since $\lambda_2$ and $\lambda_3$ both have algebraic multiplicity 1, their geometric multiplicities must also be equal to 1.
We therefore investigate the geometric multiplicity of the eigenvalue $\lambda_1 = 5$.
Recall that this geometric multiplicity is equal to the dimension of the eigenspace $E_5$ .
This eigenspace is equal to the null space of $A - 5I$.
$A - 5I = \begin{pmatrix} 0 & 4 & 9 & -8 \\ 0 & -4 & 3 & 9 \\ 0 & 0 & 0 & 4 \\ 0 & 0 & 0 & -2 \end{pmatrix} \sim \begin{pmatrix} 0 & 4 & 9 & -8 \\ 0 & 0 & 3 & 9 \\ 1 & 0 & 0 & 0 \\ 0 & 4 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}$
  
Note that the third column of $A - 5I$ may or may not be a pivot column, depending on the value of $\alpha$ .
And recall that the dimension of this null space is equal to the number of columns without a pivot position.
So we find
$dim(Nul(A - 5I)) = \begin{cases} 1 & \text{if } \alpha \neq -3 \\ 2 & \text{if } \alpha = -3 \end{cases}$  
  
Since our 4×4 matrix is diagonalizable if the geometric multiplicities of its eigenvalues add up to four, we find that $A$ is diagonalizable if and only if $\alpha = -3$ .
  
# Similarity
![[Untitled 51.png]]
![[Untitled 52.png]]
![[Untitled 53.png]]
![[Untitled 54.png]]
![[Untitled 55.png]]
![[Untitled 56.png]]
![[Untitled 57.png]]
![[Untitled 58.png]]