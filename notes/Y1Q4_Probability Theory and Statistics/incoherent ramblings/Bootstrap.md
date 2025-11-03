---
When: "17"
Created time: 2024-09-20T20:36
---
- Bootstrap Sampling with Monte Carlo Simulation (data → more data → statistic)
    
    > Approximate $h(X_1, ..., X_n)$ with a sample $x_1, ..., x_n$  
    >   
    > Generate bootstrap samples of form $X_1^*, ..., X_n^*$  
    > Compute $h(x_1^*, ..., x_n^*)$ for each of those bootstrap samples.
    
- Parameterized Bootstrap Sampling (data → appr. F → more data → statistic)
    
    > Approximate $h(X_1, ..., X_n)$ with a sample $x_1, ..., x_n$, knowing the distribution familiy.  
    >   
    > Compute $\hat{\theta}$, devise the estimated distribution step-function $F_{\hat{\theta}}$  
    > Generate bootstrap samples of form $X_1^*, ..., X_n^*$ with the estimated distribution  
    > Compute $h(x_1^*, ..., x_n^*)$ for each of those bootstrap samples.  
    > The histogram of these $h^*$s will approximate the underlying true $h(X_1, ..., X_n)$.
    > 
    > ![Untitled 100.png](../../../attachments/Untitled%20100.png)
    
- KS distance, $t_{KS}$ of form $T_{KS}$
    
    > Compute the largest vertical distance (KS) between $F_{\hat{\theta}}$ and the ecdf $F_n$(from $x_1, ..., x_n)$  
    > ==Was using our step-function== ==$F_{\hat{\theta}}$== ==as a distribution for our original sample== ==$x_1, ..., x_n$== ==a reasonable assumption?==  
    > How big can $t_{KS}$ be for us to decide it’s a shitty match?  
    > Draw parameterized bootstrap samples using our distribution $F_{\hat{\theta}}$, and compute $t_{KS}$  
    > ==(Basically we cope, by trying to say “it’s only that big because the line we compare ecdf with is too smooth, if you actually compared apples with apples, so 135-stepped ecdf from observed sample with 135-stepped ecdf from bootstrapped sample,== ==$t_{KS}$== ==would be a lot smaller”)==  
    > If the p-value of our $t_{KS}$ is small ==(probability of a== ==$t_{KS}$== ==at least as extreme as ours)==, we cope; we accept this distribution despite it’s large KS distance to the observed sample.