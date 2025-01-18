---
When: "01"
Created time: 2024-09-20T20:36
Volume: 48
---
---
# Intro, Data Summary, Probability Space

> modelling randomness to predict data
## Probability vs Statistics

> statistics = data to model  
> probability = model to data  
## Numerical Summary

> How can we represent the data set with numbers
![Untitled 1.png](../../../attachments/Untitled%201.png)
max = maximum value
Q3 upper quantile == lowest value where 75% is still below
median == middle value (intuitive middle when odd, mean of middle when even)
Q1 lower quantile == lowest value where 25% is still below
min = minimum value
  
IQR = Q3 - Q1
IQR is lower in a more concentrated data set, measures the variability of the dataset
  
boxplot analysis properties:
- center
- range
- outliers
- skewness
## Graphical Summary

> How can we represent the dataset with a graph
### Histogram
![Untitled 2.png](../../../attachments/Untitled%202.png)
bin height (depends on approach):
- represent _**frequency**_ of values; $h_1 = n_1$
- normalize _**area to 1**_; $h_i=\frac{n_i/n_{total}}{|B_i|}$ ($|B_i|$ means the range width for a bin interval)
![Untitled 3.png](../../../attachments/Untitled%203.png)
(1.80 - 1.75 ) * 2 = 0.10, so 0.10 * 40 = 4 basketball players lie in the bin
![Untitled 4.png](../../../attachments/Untitled%204.png)
Find the perfect bin width; Too many peaks vs Too general
### Scatter Plot
![Untitled 5.png](../../../attachments/Untitled%205.png)

> good for multidimensional data set
## Sample Space

> **experiment** prduces **outcomes**  
> **randomness**: uncertainty of outcomes
  
**Sample Space** $\Omega$; Set of possible outcomes  
$\Omega_{Terraria\space Modifiers} = \{{Mythical, Godly, Deadly, Ruthless, Weak, Shoddy}\}$  
  
exhaustive enumaration:  
$\Omega = \{(1,1), ... , (6, 6)\}$  
set builder notation:  
$\Omega_{wompwomp} = \{(i, j)|1\leq i, j \leq 6\}$
## Probability Function P(A)

> Event; subset of sample space
$P(\Omega) = 1$
$P(A \cup B) = P(A) + P(B)$ (But Events A and B must be disjoint!)