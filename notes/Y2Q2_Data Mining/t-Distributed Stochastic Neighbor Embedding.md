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