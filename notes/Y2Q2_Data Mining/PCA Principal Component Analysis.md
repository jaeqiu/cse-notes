Assumes
- Relationships between variables to be linear (Covariance is a bilinear operator)
- Direction with largest variance to be most informative
- Principal Components to be orthogonal/linearly independent/linearly uncorrelated (Even though they could be statistically correlated)
![](../../attachments/image/PCA%20Principal%20Component%20Analysis-1737832486236.jpeg)
Advantages:
- Fast compute,  Easy to interpret, works well in many cases
Disadvantages:
- Assumes orthogonality, linearity
![](../../attachments/image/PCA%20Principal%20Component%20Analysis-1737837031031.jpeg)

![](../../attachments/image/PCA%20Principal%20Component%20Analysis-1737837027975.jpeg)
The direction of _largest variance_ is the eigenvector with the _largest_ eigenvalue, _not_ the smaller one.
largest eigenvalue ↔ principal direction of greatest variance
Always choose the eigenvector with the largest eigenvalue for maximum variance retention.
![[../../attachments/PCA Principal Component Analysis 2025-01-26 12.33.11.excalidraw]]


Can be used as anomaly detector by having a cutoff point of dimensions, and stating that points that vary a lot in these unused later dimensions are anomalous (differ from most points enough to not be considered in the variance capture of the first principal components)
In other words, when we reconstruct the original data, only by the first couple of principal components, the reconstruction error/residual correlates to anomaly