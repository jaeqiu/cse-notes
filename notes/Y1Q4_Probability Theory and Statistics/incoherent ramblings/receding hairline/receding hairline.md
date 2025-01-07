---
When: "11"
Created time: 2024-09-20T20:36
---
---
# ==Main Topic==
## recession line

> Overal thoughts.
![[Untitled 110.png|Untitled 110.png]]
## Scatterplot

> Overal thoughts
![[Untitled 57.png]]
## Regression Model

> Overal thoughts.
![[Untitled 1 13.png|Untitled 1 13.png]]
- note that $\sigma^2$ has no $_i$, that is to say, every error has the same variance.
- the expectation of the error needs to be zero (if it isn’t, the regression model fuction is not refined)
![[Untitled 58.png]]
$U_i, Y_i$ are RV’s (capitalised)
$\theta$ represents the parameters (constant, slope, inflexion) $\alpha, \beta, \gamma$
![[Untitled 61.png]]
## Residual

> What is the difference between a residual and an error?
residual = prediction of error
![[Untitled 64.png]]
minimise $\sum_ir_i^2$
![[Untitled 65.png]]
## Least Squares Solution

> Overal thoughts.
![[Untitled 66.png]]
![[Untitled 2 13.png|Untitled 2 13.png]]
![[Untitled 68.png]]
![[Untitled 69.png]]
heteroskedastisch (variance is not constant)
## Link met likelihood

> Stel U1 ~ $N (0, \sigma^2)$  
> Model: Yi = $\alpha+\beta X_i + U_i$: dan Yi ~ N($\alpha + \beta X_i, \sigma^2$)  
> → pdf van Yi: f(yi)=liq$\frac{1}{\sqrt{2\pi}\sigma}*e^{-\frac{1}{2\sigma^2}*(y_i-(\alpha+\beta x_i))^2}$  
> Stel likelihood L op, die zal afhangen van de te schatten parameters $\sigma, \alpha, \beta$  
> $L = \prod_{i=1}{n}f_i$