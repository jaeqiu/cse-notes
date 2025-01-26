k-neighbor based graph learning algorithm

1. Build a graph-based representation of the data, in high-dimensional space, based on k-nearest neighbors
2. Find a similar graph, in lower dimensions.
![](../../attachments/image/Uniform%20Manifold%20Approximation%20&%20Projection-1737837004418.jpeg)

Advantages:
- Allows control over what information is preserved in low-D (local vs global)
- Fast compute
- Works well on complex, real world data (clusters are well-seperated)
Disadvantages:
- Free parameters need to be optimized (k in k-nn)
- Distance info is lost. (Even though global clusters are better preserved than in [t-Distributed Stochastic Neighbor Embedding](t-Distributed%20Stochastic%20Neighbor%20Embedding.md))
- sensitive to optimization parameters
- sensitive to initial conditions

The choice of nearest neighbor k defines how connected the graph is
![](../../attachments/image/Uniform%20Manifold%20Approximation%20&%20Projection-1737837498007.jpeg)
(high k, low k)
![](../../attachments/image/Uniform%20Manifold%20Approximation%20&%20Projection-1737837549663.jpeg)
Both t-SNE and UMAP typically do _not_ preserve the absolute orientation or exact distances in a straightforward manner. They can freely _rotate, flip, or translate_ the embedding.


**UMAP** explicitly chooses _k_ nearest neighbors to construct a graph.