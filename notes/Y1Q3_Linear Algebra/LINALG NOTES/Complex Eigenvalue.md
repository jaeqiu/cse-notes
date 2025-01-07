---
From Lecture: "13"
Created time: 2024-09-20T20:36
estimated value (word count): 215
---
# Complex Eigenvalue to Eigenvector, C=SR
![[Untitled 59.png]]
as usual, going from an eigenvalue to it’s eigenvector requires solving (A-\lambda I) x = 0. This also involves reducing the matrix (A- \lambda x) to echelon form. You should add a multiple of the nonimaginary pivot to the other entry to reduce to echelon form, for example: in the matrix
$A-\lambda$I =
$\begin{pmatrix}-4+2i & 2 \\-10 & 4+2i\end{pmatrix}$perform the following row operation $R_1 += (\frac{4-2i}{-10}) R_2$ to achieve $\begin{pmatrix}0 & 0 \\-10 & 4+2i\end{pmatrix}$, which after swapping $R_1 \xleftrightarrow{swap} R_2$ gives
$\begin{pmatrix}-10 & 4+2i\\0 & 0 \end{pmatrix}$ which is in REF (=Row Echelon Form)
The last step to get the Eigenvector is to write the solution set in parametric vector form
$\begin{pmatrix}x_1\\ x_2 \end{pmatrix} = s/x_2\begin{pmatrix}\frac{2}{5}+\frac{1}{5}i\\ 1 \end{pmatrix}$
associated with the eigenvalue $\lambda = 6 - 2i$, $A = \begin{pmatrix}2 & 2\\ -10 & 10 \end{pmatrix}$
  
Considering $A=PDP^{-1}$ and $P = \begin{pmatrix} \begin{pmatrix} x_1real\\ x_2real \end{pmatrix} \begin{pmatrix} x_1imaginary\\ x_2imaginary \end{pmatrix} \end{pmatrix}$
we find for our case that $P=\begin{pmatrix} \frac{2}{5}&\frac{1}{5} \\1 & 0 \end{pmatrix}$ and $D=\begin{pmatrix} 6 &-2 \\ 2 & 6 \end{pmatrix}$
to write $D=SR$, with scalar matrix S and rotational matrix R, we compute the **norm**
$r=|z|=|a+bi|$, in our case $r=2\sqrt{10}$ since we have $\lambda = 6 - 2i$.
Then the rotation matrix is found by $R=\frac{1}{r}D$
In our case $R=\frac{1}{2\sqrt{10}}\begin{pmatrix} 6 &-2 \\ 2 & 6 \end{pmatrix}=\begin{pmatrix} \frac{6}{2\sqrt{10}} &\frac{-2}{2\sqrt{10}} \\ \frac{2}{2\sqrt{10}} & \frac{6}{2\sqrt{10}} \end{pmatrix}$
of course the scalar matrix
$S=\begin{pmatrix} 2\sqrt{10} &0 \\ 0 & 2\sqrt{10} \end{pmatrix}$
![[Untitled 60.png]]