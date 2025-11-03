---
From Lecture: "18"
Created time: 2024-09-20T20:36
estimated value (word count): 533
---
---
# ==Gram-Schmidt Process==
## Find orthogonal/orthonormal bases from unorthogonal bases

> The goal is to derive orthogonal bases from bases that might not be orthogonal. The process goes as follows:
> 
> - We have the three original bases (not orthogonal) $W=span(x_1,x_2,x_3)$
> - We want the three derived orthogonal bases $\{v_1, v_2, v_3\}$
> - let $v_1 = x_1$, this makes sense, since $x_1$ by itself can not violate the requirement of orthogonality; how could a single vector have _**at least one vector that is redundant(== linearly dependent) with respect to the other vectors**_ when there are no other vectors?
> - let $v_2 = x_2 - proj_{span(v_1)}(x_2)= x_2 - \frac{x_2\centerdot v_1}{v_1 \centerdot v_1}v_1$, this can be thought of as taking everything not-orthogonal about x2 away from itself to leave v2 behind
> - let $v_3 = x_3 - \frac{x_3 \centerdot v_2}{v_2 \centerdot v_2}v_2 - \frac{x_2\centerdot v_1}{v_1 \centerdot v_1}v_1$
> - now you have $\{v_1, v_2, v_3\}$, which suffice as orthogonal bases for the same subspace
> 
> you could imagine how this process would cascade onwards for larger sets of vectors
## Requirements for Gram-Schmidt process

> There are hardly any requirements for this process. You could even do this process to bases that are already orthogonal! Although that would result in the same bases back or a similar variation of it.  
>   
> The only requirement to remember is, the original bases need to be linearly independent.  
> Suppose one of the vectors is redundant (= linearly dependent/a linear combination of the others) then the perpendicular complement of the projection of that redundant vector onto the span of the other vectors will be zero (in other words, the original vector _**is already**_ the projection of itself onto the remaining vectors)
## Turn non-orthogonal bases into ortho normal bases

> the idea is to first turn the bases into orthogonal ones, then to _**normalize**_ its  
>   
> 
> - Use the Gram-Schmidt process to get orthogonal bases
> - Normalize the returned vectors by dividing each by the absolute length of itself. (divide by magnitude/length, which is the square root of dot product of itself and itself)
# ==Least Squares Problem==
## How to describe higher dimensional vector?!?

> Although a lower dimension vector can not fully describe a higher dimensional vector, the projection of that higher dimensional vector onto the lower-dimensional subspace is the closest approximation thereof in said lower dimension
> 
> ![Untitled 88.png](../../../attachments/Untitled%2088.png)
> 
> Allison is closer to the 3d ball than Bobertus, since the ball is perpendicular to Alice, not Bob. There is nowhere Bob can stand to be closer to the ball than Alice without being where Alice is, so Alice’s 2D position best-approximates the 3D ball.
> 
> $\hat{x}$ is a least squares solution to
> 
> $Ax=b$
> 
> if
> 
> $A\hat{x}=\hat{b}$