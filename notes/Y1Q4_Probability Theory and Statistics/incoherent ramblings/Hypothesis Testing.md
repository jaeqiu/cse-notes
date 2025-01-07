---
When: "15"
Created time: 2024-09-20T20:36
---
## Hypothesis Testing

> [!important]
### $H_0, H_1$, False Positive Type I error, False Negative Type II error

> H0 bij geen verband, H1 bij verwacht verband
> 
> ![[Untitled 95.png]]
### Test Statistic T

> The Test Statistic T is used to compare the outcomes of two experiments==  
>   
> ====$T = \frac{\overline{X}=\mu_d}{S/\sqrt{n}}$====  
> if  
> ====$|T| \leq critical value$== ==c, don’t reject== ==$H_o$====  
> if  
> ====$|T| > critical value$== ==c, don’t reject== ==$H_o$====  
> the latter of which, comes in two variants  
> Right tail probability and left tail probability  
> ==
- write out the expectation of the test statistic T to find out what the alternative tested hypothesis is
    - Here, the expectation of M, which takes the minimum of an exponential function, is 1/10lambda, therefore rejecting an M too large, is rejecting a lambda too small
        
        ![[Untitled 96.png]]
        
### p-value

> The p-value represents the probability of an observation at least as extreme as the found one, given that the null hypothesis remains true  
>   
> p-value $\leq \alpha$ → reject $H_0$  
> p-value $> \alpha$ → keep $H_0$
> 
> ![[Untitled 97.png]]
### significance level $\alpha$, critical region

> Significance level $\alpha$, is the largest acceptable probability of committing Type I error  
>   
> The critical region is the set of values for the Test Statistic T for which we reject $H_o$ in favour of $H_1$
![[Untitled 99.png]]