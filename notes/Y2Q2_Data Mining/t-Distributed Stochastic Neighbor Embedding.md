Predecessor of SNE
- easy to optimize cost function
- pull neighbors, push distant points 
Predecessor of SNE, but solves [the Crowding Problem](Crowding%20Problem.md).
Cost function: Minimize [KL-divergence measure](KL-divergence%20measure.md)

![](../../attachments/image/t-Distributed%20Stochastic%20Neighbor%20Embedding-1737835518080.jpeg)Advantages:
- captures nonlinear relationships
- preserves both local and global structures, for visualization (seperated clusters)
- practical (more than SNE)
Disadvantages:
- Bad for downstream tasks, because of non-preserved distances.
- Bad for downstream tasks, because of change in global neighborhood.
- Manual parameters. (for both model and optimization)
- O(N^2), slow for large datasets
- Distance info lost

![](../../attachments/image/t-Distributed%20Stochastic%20Neighbor%20Embedding-1737835890078.jpeg)![](../../attachments/image/t-Distributed%20Stochastic%20Neighbor%20Embedding-1737837009419.jpeg)

_t-SNE_ tries to preserve _local neighborhoods_ probabilistically, but it does not **guarantee** perfect preservation.
Because it is a stochastic, approximate method, some local neighborhoods can still distort. The word “guarantees” is too strong.

Both t-SNE and UMAP typically do _not_ preserve the absolute orientation or exact distances in a straightforward manner. They can freely _rotate, flip, or translate_ the embedding.

t-SNE is not purely “graph-based kNN-limited.” UMAP is more explicitly a kNN graph method.

t-SNE specifically changes the kernel in low-D to a heavy-tailed distribution

t-SNE’s hallmark is that it uses **Gaussian** in high-dimensional space but a **Student-t** (heavy-tailed) distribution in the low-dimensional space to help mitigate the crowding problem.

t-SNE specifically changes the kernel in low-D to a heavy-tailed distribution.