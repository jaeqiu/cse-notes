---
Course Name: Probability & Statistics
Course Code: CSE1210
Course Timing: Y1Q4
Course Status: completed
Last edited time: 2025-01-07T16:40
---
## Probability Theory
---
### Intro, Data Summary, Probability Space
- Map of Probability Theory
    
    ![Untitled 63.png](../../attachments/Untitled%2063.png)
    
- ==Probability vs Statistics==
    
    > statistics = data to model  
    > probability = model to data  
    
- ==Numerical Summary==
    
    > How can we represent the data set with numbers
    
    ![Untitled 1 5.png](../../attachments/Untitled%201%205.png)
    
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
- ==Graphical Summary==
    
    > How can we represent the dataset with a graph
    
    ### Histogram
    
    ![Untitled 2 5.png](../../attachments/Untitled%202%205.png)
    
    bin height (depends on approach):
    
    - represent _**frequency**_ of values; $h_1 = n_1$
    - normalize _**area to 1**_; $h_i=\frac{n_i/n_{total}}{|B_i|}$ ($|B_i|$ means the range width for a bin interval)
    
    ![Untitled 3 5.png](../../attachments/Untitled%203%205.png)
    
    (1.80 - 1.75 ) * 2 = 0.10, so 0.10 * 40 = 4 basketball players lie in the bin
    
    ![Untitled 4 5.png](../../attachments/Untitled%204%205.png)
    
    Find the perfect bin width; Too many peaks vs Too general
    
    ### Scatter Plot
    
    ![Untitled 5 5.png](../../attachments/Untitled%205%205.png)
    
    > good for multidimensional data set
    
- ==Sample Space==
    
    > **experiment** prduces **outcomes**  
    > **randomness**: uncertainty of outcomes
    
      
    **Sample Space** $\Omega$; Set of possible outcomes  
    $\Omega_{Terraria\space Modifiers} = \{{Mythical, Godly, Deadly, Ruthless, Weak, Shoddy}\}$  
      
    exhaustive enumaration:  
    $\Omega = \{(1,1), ... , (6, 6)\}$  
    set builder notation:  
    $\Omega_{wompwomp} = \{(i, j)|1\leq i, j \leq 6\}$
    
- ==Probability Function P(A)==
    
    > Event; subset of sample space
    
    $P(\Omega) = 1$
    
    $P(A \cup B) = P(A) + P(B)$ (But Events A and B must be disjoint!)
    
---
### ==Conditional Probability, Bayes Rule==
- ==Sum Rule, Complement Rule:== ==$P(A\cup B), \space P(A^c)$==
    
    ![Untitled 6 5.png](../../attachments/Untitled%206%205.png)
    
    > What is the probability that the union of an event occurs?
    > 
    > _**You might remember the original:**_
    > 
    > $P(A \cup B) = P(A) + P(B)$ _==(with A and B disjoint sets)==_
    
    $P(A \cup B) = P(A) + P(B)$ $-P(A \cap B)$
    
    _**The addition of subtracting** $P(A\cap B)$ **accounts for counting the overlap once, not twice**_
    
      
    
    > What is the probability that an event doesn’t occur?
    
    $P(A^C) = 1 - P(A)$ (1 represents all outcomees)
    
- ==Conditional Probability:== ==$P(A|C)$==
    
    > What is the chance of an event, given another event happens? (such that)
    
    $P(\space A|C_{ondition}\space ) = \frac{P (A\space \cap\space C)}{P(\space C\space )}$ ==( P( C ) non-zero)==
    
    The chance that event A happens given C happens  
    is the chance _**both**_ happen, _**divided by the chance the condition event happens**_
    
    (You can think of the denominator as restricting sample space to only where the condition holds, then simply computing the chance in this new perspective)
    
- ==Multiplication Rule:== ==$P(A \cap B)$==
    
    ![Untitled 7 5.png](../../attachments/Untitled%207%205.png)
    
    > What is the probability that the intersection of an event occurs?
    
    $P(A\space \cap \space C) = P( A \space | \space C) P(C)$
    
- ==Bayes’ Rule:== ==$P(A|C) \rightarrow P(C|A)$==
    
    ![Untitled 8 4.png](../../attachments/Untitled%208%204.png)
    
    > What does the Law of Total Probability state?
    
    $P(A) = P( A \space | \space C) \space P(C) \space+ \space P( A \space | \space C^C \space ) \space P( \space C^C \space )$
    
    $P(A) = P(A|C_1)P(C_1) + \space ... \space + P(A| C_m)P(C_m)$
    
    Given $C_1\space +\space ...\space +\space C_n = \Omega$ (sample space)
    
    ==(corresponds to probability functions== ==$P(C_1)\space +\space ...\space +\space P(C_n) = 1$====)==
    
    > Bayes’ Rule for switching condition and event
    
    $P(C_i|A)=\frac{P(A|C_i)P(C_i)}{P(A|C_1)P(C_1) + \space ... \space + P(A| C_m)P(C_m)}$
    
    given $C_1 \cup ... \cup C_m$ are _**disjoint**_ and _**fill the sample space**_:
    
    knowing the chance of A given Ci, the chance of Ci given A is given by the chance of A given Ci, multiplied by the chance of Ci, divided by the chance of A
    
  
---
### Independent Events, Discrete RV from Discrete Distribution
- ==Independent Events==
    
    > Events are independent if, knowing one event to be true doesn’t affect the probability of the other event.  
    >   
    > Defined as: the likelyhood of the intersection is the same as the product of individual probabilities  
    
    ![Untitled 9 4.png](../../attachments/Untitled%209%204.png)
    
- ==Discrete Random Variable==
    
    > A discrete random variable works off of a sample space and assigns each event to a value, finite or infinite.
    
    ![Untitled 10 3.png](../../attachments/Untitled%2010%203.png)
    
- ==Probability Mass Function==
    
    > A Probability Mass Function returns the probability mass of an event, given the underlying discrete random variable
    
    ![Untitled 11 3.png](../../attachments/Untitled%2011%203.png)
    
    ![Untitled 12 3.png](../../attachments/Untitled%2012%203.png)
    
- ==Distribution Function, Probability Mass Function for Discrete RV==
    
    > The distribution takes the probability-mass and returns between 0 and 1, representing the probability of the associated event, from the value.
    
    ![Untitled 13 3.png](../../attachments/Untitled%2013%203.png)
    
    ![Untitled 14 3.png](../../attachments/Untitled%2014%203.png)
    
- ==Bernoulli Distribution (type of discrete distribution)==
    
    > Overal thoughts
    
    ![Untitled 15 3.png](../../attachments/Untitled%2015%203.png)
    
    ![Untitled 16 3.png](../../attachments/Untitled%2016%203.png)
    
    ![Untitled 17 2.png](../../attachments/Untitled%2017%202.png)
    
- ==Binomial Distribution==
    
    > Overal thoughts
    
    ![Untitled 18 2.png](../../attachments/Untitled%2018%202.png)
    
    ![Untitled 19 2.png](../../attachments/Untitled%2019%202.png)
    
    ![Untitled 20 2.png](../../attachments/Untitled%2020%202.png)
    
    ## Combinations - Notation
    
    > The notation for a combination of “any distinct 3 of 12” looks like $\begin{pmatrix}12 (options) \\3 (picks)\end{pmatrix}$
    
    ![Untitled 21 2.png](../../attachments/Untitled%2021%202.png)
    
- ==Geometric Distribution==
    
    > Overal thoughts
    
    ![Untitled 22 2.png](../../attachments/Untitled%2022%202.png)
    
    ![Untitled 23 2.png](../../attachments/Untitled%2023%202.png)
    
    ![Untitled 24 2.png](../../attachments/Untitled%2024%202.png)
    
- ==Poisson Distribution==
    
    > Overal thoughts
    
    ![Untitled 25 2.png](../../attachments/Untitled%2025%202.png)
    
    ![Untitled 26 2.png](../../attachments/Untitled%2026%202.png)
    
    ![Untitled 27 2.png](../../attachments/Untitled%2027%202.png)
    
---
### **Continuous RV, Quantile**
- ==Subtopic based off example problem==
    
    > Overal thoughts.
    
    ![Untitled 28 2.png](../../attachments/Untitled%2028%202.png)
    
- ==Quantile==
    
    > splits data in equal parts
    
- ==Subtopic based off example problem==
    
    > Overal thoughts.
    
- ==Subtopic based off example problem==
    
    > Overal thoughts
    
- ==Subtopic based off example problem==
    
    > Overal thoughts.
    
- ==Subtopic based off example problem==
    
    > Overal thoughts
    
  
---
### **Expectation, variance and change of variable**
- ==Expected Value==
    
    > Overal thoughts.
    
    ![Untitled 29 2.png](../../attachments/Untitled%2029%202.png)
    
    ![Untitled 30 2.png](../../attachments/Untitled%2030%202.png)
    
    ![Untitled 31 2.png](../../attachments/Untitled%2031%202.png)
    
    ![Untitled 32 2.png](../../attachments/Untitled%2032%202.png)
    
- ==Variance==
    
    > Overal thoughts
    
    ![Untitled 33 2.png](../../attachments/Untitled%2033%202.png)
    
    ![Untitled 34 2.png](../../attachments/Untitled%2034%202.png)
    
    ![Untitled 35 2.png](../../attachments/Untitled%2035%202.png)
    
- ==Change of RV==
    
    > Overal thoughts.
    
  
---
### **Joint distributions** 
- ==Transform normal RV to standard normal RV==
    
    > Overal thoughts.
    
---
### ==Independence, covariance and correlation==
- ==Independence of RV==
    
    > RVs are independent when P(X=A,Y=B) = P(X=A)P(Y=B)
    
- ==Expectation of Joint Function E[g(X, Y)]==
    
    > Overal thoughts
    
    ![Untitled 36 2.png](../../attachments/Untitled%2036%202.png)
    
    ![Untitled 37 2.png](../../attachments/Untitled%2037%202.png)
    
- ==Linearity of Expectations==
    
    > Overal thoughts.
    
    ![Untitled 38 2.png](../../attachments/Untitled%2038%202.png)
    
- ==Covariance==
    
    > Overal thoughts
    
    ![Untitled 39 2.png](../../attachments/Untitled%2039%202.png)
    
- ==Uncorrelated==
    
    > Overal thoughts.
    
    ![Untitled 40 2.png](../../attachments/Untitled%2040%202.png)
    
- ==Change of Units for Covariance==
    
    > Overal thoughts
    
    ![Untitled 41 2.png](../../attachments/Untitled%2041%202.png)
    
- ==Bivariate normal probability density==
    
    > Overal thoughts.
    
    ![Untitled 42 2.png](../../attachments/Untitled%2042%202.png)
    
      
    
---
### LLN and CLT
- ==Law of Large Numbers==
    
    > “A sample gets better the bigger it is” (better at approximating the theoretical
    
    ![Untitled 43 2.png](../../attachments/Untitled%2043%202.png)
    
- ==Central Limit Theorem==
    
    > the mean of a sample is normally distributed, if the sample size tends to infinity
    
    ![Untitled 44 2.png](../../attachments/Untitled%2044%202.png)
    
- ==Sum of normal RV==
    
    > Overal thoughts.
    
    ![Untitled 45 2.png](../../attachments/Untitled%2045%202.png)
    
- ==Subtopic based off example problem==
    
    > Overal thoughts
    
- ==Subtopic based off example problem==
    
    > Overal thoughts.
    
- ==Subtopic based off example problem==
    
    > Overal thoughts
    
---
## Statistics
---
### Statistical model, Estimation
- Random Sample
    
    > Collection of independent, identically distributed RV’s of size n
    
- Statistical Model
    
    > A statistical model generates more data (using statistical assumptions)
    
- Model Distribution
    
    > The underlying model to the random sample.  
    > $x_1, ..., x_n$ i.i.d. to model distribution
    
- Sample Statistic
    
    > A random variable h(X1, …, Xn) that only depends on the random sample
    
- Estimator, Bias
    
    > An estimator T estimates a parameter $\theta$ of the underlying model distribution, using samples.  
    > T estimates $\theta$.  
    >   
    > The bias of an estimator is by how much the expectation of the estimator differs from the real parameter (in other words, does the estimator do a better job, for bigger samples?)  
    > Bias(T)=E[T] - $\theta$
    > 
    > ![Untitled 46 2.png](../../attachments/Untitled%2046%202.png)
    > 
    > If you actually used the estimator on a sample, you would get an estimate, which is a realization of the estimator. (lowercase for realizations)
    > 
    > ![Untitled 47 2.png](../../attachments/Untitled%2047%202.png)
    
- Sampling Distribution
    
    > The value you end up with after getting an estimate of $\theta$, is denoted $\hat{\theta}$ (hats for estimates). If you use this parameter in the distribution family of the underlying distribution, you get the sampling distribution (basically your best attempt at the true underlying model distribution)
    
    ![Untitled 48 2.png](../../attachments/Untitled%2048%202.png)
    
- Useful Unbiased Estimators (for mean and variance)
    
    > ![Untitled 49 2.png](../../attachments/Untitled%2049%202.png)
    
- Useful Biased Estimator (Sample Standard Deviation)
    
    > ![Untitled 50 2.png](../../attachments/Untitled%2050%202.png)
    
---
### **Efficiency and Maximum likelihood**
- Mean Squared Error (MSE)
    
    > lower MSE → more efficient
    
    ![Untitled 51 2.png](../../attachments/Untitled%2051%202.png)
    
    ![Untitled 52 2.png](../../attachments/Untitled%2052%202.png)
    
- likelihood $L(\theta)$
    
    > The likelihood function returns the likelihood that a certain parameter is true for the underlying model distribution (it takes a sample)
    
    ![Untitled 53 2.png](../../attachments/Untitled%2053%202.png)
    
    ![Untitled 54 2.png](../../attachments/Untitled%2054%202.png)
    
- log(likelihood) $l(\theta)$
    
    > The ln of the Likelihood function is a step in computing the maximum likelihood estimate. (over the range of the likelihood function, ln(x) is strictly increasing, so the maximum of L is also the maximum of ln, but much easier to compute)
    
    ![Untitled 55 2.png](../../attachments/Untitled%2055%202.png)
    
- maximum likelihood estimate $\hat{\theta}$
    
    > Setting the derivative of the ln($\theta$) function to 0, we can compute critical points.  
    > If there is any doubt left, we can take the second derivative, and if it’s negative, we have our maximum  
    >   
    > The result is the an estimate of the underlying model distribution’s parameter $\theta$, with the maximum likelihood, given our sample.
    > 
    > ![Untitled 56 2.png](../../attachments/Untitled%2056%202.png)
    
---
### receding hairline
- ==Scatterplot==
    
    > A scatterplot takes a bivariate datasets and plots the points.
    
    ![Untitled 57 2.png](../../attachments/Untitled%2057%202.png)
    
- ==Regression Model==
    
    > A regression model can be built from a bunch of samples, to predict future data.
    > 
    > ![Untitled 58 2.png](../../attachments/Untitled%2058%202.png)
    > 
    > ![Untitled 59 2.png](../../attachments/Untitled%2059%202.png)
    > 
    > - $\theta$ represents the parameters (constant, slope, inflexion) $\alpha, \beta, \gamma$
    > - $U_i, Y_i$ are RV’s (capitalised)
    > - E[U] = 0 (if it isn’t, the regression model fuction is not refined)
    > - Var[U] = $\sigma^2$ (No i, since it needs to be constant)
    
    ![Untitled 60 2.png](../../attachments/Untitled%2060%202.png)
    
- Simple Linear Regression Model
    
    > A Linear Regression Model with a single explanatory variable
    > 
    > ![Untitled 61 2.png](../../attachments/Untitled%2061%202.png)
    
    ![Untitled 62 2.png](../../attachments/Untitled%2062%202.png)
    
    ![Untitled 63 2.png](../../attachments/Untitled%2063%202.png)
    
- ==Residual==
    
    > The ith residual is by how much the modelled response variable differs from the true value, at that x-value  
    > When building the model, minimise $\sum_ir_i^2$ (maximise the explanatory capability of your model)
    > 
    > ![Untitled 64.png](../../attachments/Untitled%2064.png)
    > 
    > ![Untitled 65.png](../../attachments/Untitled%2065.png)
    
- ==Least Squares Solution==
    
    > Overal thoughts.
    > 
    > ![Untitled 66.png](../../attachments/Untitled%2066.png)
    > 
    > ![Untitled 67.png](../../attachments/Untitled%2067.png)
    > 
    > ![Untitled 68.png](../../attachments/Untitled%2068.png)
    
- Constant Variance Required
    
    > The variance of the error U should stay constant
    > 
    > ![Untitled 69.png](../../attachments/Untitled%2069.png)
    > 
    > ![Untitled 70.png](../../attachments/Untitled%2070.png)
    
- ==Link met likelihood==
    
    > (update: idk what these ramblings are about anymore, sry)  
    >   
    > Stel U1 ~ $N (0, \sigma^2)$  
    > Model: Yi = $\alpha+\beta X_i + U_i$: dan Yi ~ N($\alpha + \beta X_i, \sigma^2$)  
    > → pdf van Yi: f(yi)=liq$\frac{1}{\sqrt{2\pi}\sigma}*e^{-\frac{1}{2\sigma^2}*(y_i-(\alpha+\beta x_i))^2}$  
    > Stel likelihood L op, die zal afhangen van de te schatten parameters $\sigma, \alpha, \beta$  
    > $L = \prod_{i=1}{n}f_i$
    
---
### receding hairline part 2
- Multiple Linear Regression
    
    > Instead of having a single explanatory variable, we can have multiple
    
    ![Untitled 71.png](../../attachments/Untitled%2071.png)
    
    ![Untitled 72.png](../../attachments/Untitled%2072.png)
    
    ![Untitled 73.png](../../attachments/Untitled%2073.png)
    
- Reading Regression Model Outputs
    
    > r squared →
    > 
    > ![Untitled 74.png](../../attachments/Untitled%2074.png)
    
- Coefficient of Determination R-squared ($R^2)$
    
    > This is a property of the Regression Model, the higher R-squared, the better the model.  
    >   
    > $R^2=1-\frac{\sum_{i=1}^n(y_1-\hat{y}_i)^2}{\sum_{i=1}^n(y_1-\bar{y}_i)^2}=1 - \frac{unexplained \space error}{all\space error}$, alternatively  
    > $R^2 = \frac{\sum_{i=1}^n(\hat{y}_i-\bar{y}_1)^2}{\sum_{i=1}^n(y_1-\bar{y}_i)^2}=\frac{explained \space error}{all\space error}$  
    > Since a good model explains most error, the “unexplained error” numerator would be very little, resulting in an R-squared very close to 1. (say, 0.978)  
    > 
    > ![Untitled 75.png](../../attachments/Untitled%2075.png)
    > 
    > ![Untitled 76.png](../../attachments/Untitled%2076.png)
    > 
    > ![Untitled 77.png](../../attachments/Untitled%2077.png)
    
- Categorical Variables
    
    > To use a categorical explanatory variable (WEEKDAY/SATURDAY/SUNDAY) you need to count the number of options, choose 1 as the default and the rest as variables
    > 
    > ![Untitled 78.png](../../attachments/Untitled%2078.png)
    > 
    > ![Untitled 79.png](../../attachments/Untitled%2079.png)
    > 
    > ![Untitled 80.png](../../attachments/Untitled%2080.png)
    
---
### Statistical Analysis; devise alternative models
- Regression Tree instead of Linear Regression
    
    > This model is an alternative to the linear regression model, allowing for decision trees, meaning the model can account for non-linear data.  
    >   
    > Perform splits that minimise the sum of squares of both subtrees:  
    > 
    > $S^2_{P_1} + S^2_{P_2} = \sum\limits_{i \in P_1} (y_i - \overline{y}_{P_1})^2 + \sum\limits_{i \in P_2} (y_i - \overline{y}_{P_2})^2$
    > 
    > ![Untitled 81.png](../../attachments/Untitled%2081.png)
    > 
    > Meaning, minimise $S^2_{P_1} + S^2_{P_2}$ by maximising $\frac{|P_1| \cdot |P_2|}{|P|} \left( \overline{y}_{P_1} - \overline{y}_{P_2} \right)^2$
    
---
### ==$100\gamma$====%-==Confidence Interval ==of sample; is true mean prolly nearby here?==
- Critical Value
    
    > ![Untitled 82.png](../../attachments/Untitled%2082.png)
    
    - be aware of twin/single tails when computing the critical value
        - At first i thought we should halve the significance level .05 to obtain the right tail probability .025, before looking up the critical value for such a probability.  
            The reason why we should not do this, is because H1 states mu greater than 84, not ≠, so it only has one tail  
            
            ![Untitled 83.png](../../attachments/Untitled%2083.png)
            
            ![Untitled 84.png](../../attachments/Untitled%2084.png)
            
- Confidence Interval for True Mean ==(computed using sample mean, distribution type, true/sample parameters)==
    
    > The 95% confidence interval can be calculated from a sample.  
    > It means that if you devise many confidence intervals from the same model distribution, around 95% of those intervals will include the true value of $\theta$ (theta represents the distribution parameter you are interested in)
    > 
    > ![Untitled 85.png](../../attachments/Untitled%2085.png)
    > 
    > It’s always the same format (==red for variance unknown==):  
    > Confidence Interval = Center $\pm$ Margin of Error
    > 
    > Confidence Interval = Center $\pm$ Critical Value
    > 
    > Confidence Interval = Center $\pm$ z-value * Destandardization Scalar
    > 
    > ==Confidence Interval = Center== ==$\pm$== ==t-value * Destandardization Scalar==
    > 
    > Confidence Interval = $\bar{x}_n \pm z_{\alpha/2} * \frac{\sigma}{\sqrt{n}}$  
    > ==Confidence Interval === ==$\bar{x}_n \pm t_{n-1,\space\alpha/2} * \frac{\bar{S}_n}{\sqrt{n}}$==
    > 
    >   
    > Strategy:  
    > 
    > 1. Standardize RV Sample Mean $\bar{X}_n$ (or Studentize if variance unknown)
    > 2. Find z value (or t value for Studentized Sample Mean)
    > 3. Destandardize to get critical value c  
    >       
    >     
    > 
    > Explanation:
    > 
    > 1. $X \sim N(\mu, \sigma^2)$  
    >     ==We know the underlying model distribution’s RV==
    > 2. $\bar{X}_n \sim N(\mu, \frac{\sigma^2}{n})$ or $\bar{X}_n \sim N(\mu, \frac{{\bar{S}_n}^2}{n})$  
    >     ==The Sample Mean’s distribution (latter if we don’t know the real== ==$\sigma^2$====, only sample standard deviation== ==$\bar{S}_n$====.)==
    > 3. $\frac{\bar{X}_n-\mu}{\sqrt{\frac{\bar{\sigma^2}}{n}}} \sim N(0, 1)$ or $\frac{\bar{X}_n-\mu}{\sqrt{\frac{{\bar{S}_n}^2}{n}}} \sim T_{n-1, \alpha/2}$
    > 4. $\frac{\bar{X}_n-\mu}{\frac{\bar{\sigma}}{\sqrt{n}}} \sim N(0, 1)$ or $\frac{\bar{X}_n-\mu}{\frac{\bar{{\bar{S}_n}}}{\sqrt{n}}} \sim T_{n-1, \alpha/2}$  
    >     ==Standardizing or Studentizing to allow usage of z-table, t-table==
    > 
    > ![Untitled 86.png](../../attachments/Untitled%2086.png)
    > 
    > ![Untitled 87.png](../../attachments/Untitled%2087.png)
    > 
    > ![Untitled 88.png](../../attachments/Untitled%2088.png)
    > 
    > ![Untitled 89.png](../../attachments/Untitled%2089.png)
    > 
    > ![Untitled 90.png](../../attachments/Untitled%2090.png)
    
- Confidence Interval for Proportion
    
    > By the Central Limit Theorem, the sample means of samples taken from an unknown distribution will be normally distributed, if n large enough.  
    >   
    > We additionally want them to be standardized, so for binomial:  
    > Estimating p instead of mu! (so using relative frequency instead of sample mean)  
    > 
    > 1. $X \sim Bin(n, p)$
    > 2. $\frac{X-E[X]}{\sqrt{Var[X]}} \sim N(0, 1)$ for large n
    > 3. $\frac{X-np}{\sqrt{np(1-p)}} \sim N(0, 1)$, and relative frequency $\hat{p}=\frac{X}{n}$
    > 4. $\frac{n\hat{p}-np}{\sqrt{np(1-p)}} \sim N(0, 1)$
    > 5. $\frac{\hat{p}-p}{\sqrt{\frac{p(1-p)}{n}}} \sim N(0, 1)$
    > 6. Then confidence interval for true p:  
    >     $P\left( -z_{\frac{\alpha}{2}} \leq \frac{\hat{p} - p}{\sqrt{\frac{p(1 - p)}{n}}} \leq z_{\frac{\alpha}{2}} \right) = 1 - \alpha$
    > 7. $\hat{p} - z_{\frac{\alpha}{2}} \sqrt{\frac{p(1 - p)}{n}} \leq p \leq \hat{p} + z_{\frac{\alpha}{2}} \sqrt{\frac{p(1 - p)}{n}}$
    > 8. $\left( \hat{p} - z_{\frac{\alpha}{2}} \sqrt{\frac{\hat{p}(1 - \hat{p})}{n}}, \hat{p} + z_{\frac{\alpha}{2}} \sqrt{\frac{\hat{p}(1 - \hat{p})}{n}} \right)$
    > 
    > ![Untitled 91.png](../../attachments/Untitled%2091.png)
    
- Fixed width → minimum sample size
    
    > The width of the confidence interval is 2 * Margin of Error MoE
    > 
    > ![Untitled 92.png](../../attachments/Untitled%2092.png)
    
- Proportion of Success
    
    > This is what the middle of the interval is called.
    
    ![Untitled 93.png](../../attachments/Untitled%2093.png)
    
    ![Untitled 94.png](../../attachments/Untitled%2094.png)
    
---
### Hypothesis testing; $H_0$ vs $H_1$
- $H_0, H_1$, False Positive Type I error (should not have rejected), False Negative Type II error (should have rejected)
    
    > In regression modelling, $H_0$ represents that there is no correlation between the explanatory variables and the response variable.
    > 
    > ![Untitled 95.png](../../attachments/Untitled%2095.png)
    
- Test Statistic T
    
    > The Test Statistic T is used to compare the outcomes of two experiments==  
    >   
    > ====$T = \frac{\overline{X}-\mu_0}{S/\sqrt{n}}$====  
    > if  
    > ====$|T| < critical value$== ==c, don’t reject== ==$H_o$====  
    > if  
    > ====$|T| \ge critical value$== ==c, reject== ==$H_o$====, IN FAVOR OF H1  
    > the latter of which, comes in two variants  
    > Right tail probability and left tail probability  
    > ==
    
- Using E[T] to find out $H_1$
    
    > Here, the expectation of M, which takes the minimum of an exponential function, is 1/10lambda, therefore rejecting an M too large, is rejecting a lambda too small
    > 
    > ![Untitled 96.png](../../attachments/Untitled%2096.png)
    
- p-value
    
    > The p-value represents the probability of an observation at least as extreme as the found one, given that the null hypothesis remains true  
    >   
    > p-value $\leq \alpha$ → reject $H_0$  
    > p-value $> \alpha$ → keep $H_0$
    > 
    > ![Untitled 97.png](../../attachments/Untitled%2097.png)
    
- Deciding what direction p-value is. (when asymmetrical, unknown distribution)
    
    > Decide which direction represents p-value, by computation rather than visual reasoning (single-tail H₁):
    > 
    > ![Untitled 98.png](../../attachments/Untitled%2098.png)
    > 
    > The p-value is the probability of an observation as least as extreme as ours. (The confusing part is the meaning of " extreme ")
    > 
    > The direction that's more extreme is the direction where observations lie that are unlikely in H₀ , but more likely in H₁ . ( extreme observations provide evidence for H₁ )
    > 
    > To decide if leftward, or rightward, is the direction of the extreme observations, compare the probability of an observation on either side while moving towards H₁.
    > 
    > Compute change in blue area with CDF(1.2) for H₀, and any example to represent H₁:
    > 
    > if H₀: α=3, then the blue area = 0.99  
    > if H₁: α<3, say 0.1, then blue area = 0.14  
    > 
    > Observations in the blue area became less likely, going from H₀ to H₁.  
    > Therefore observations in the red area became more likely, going from H₀ to H₁.  
    > That means those observations are evidence to reject H₀, and change model to H₁.  
    > 
    > So the red area is the p-value.
    
- significance level $\alpha$, critical region beyond c
    
    > Significance level $\alpha$, is the largest acceptable probability of committing Type I error  
    >   
    > The critical region is the set of values for the Test Statistic T for which we reject $H_o$ in favour of $H_1$
    
    ![Untitled 99.png](../../attachments/Untitled%2099.png)
    
---
### T-test; the value we compare with c to keep/reject $H_0$
- ==The== t-test statistic ==T==
    
    > Testing the null hypothesis $H_0:\mu=\mu_0$,  
    > A sample from $N(\mu, \sigma^2)$ has a t-test statistic $T = \frac{\bar{X}-\mu_0}{S_n/\sqrt{n}}$  
    > This statistic T follows the Student’s Distribution  
    >   
    > Testing the null hypothesis $H_0:\mu=\mu_0$,  
    > A sample from ??? has a t-test statistic $T = \frac{\bar{X}-\mu_0}{S_n/\sqrt{n}}$,  
    > The sample mean $\bar{X}_n$ will approximately follow a normal distribution for large n (CLT)
    
---
### Bootstrap;
- Bootstrap Sampling ==with Monte Carlo Simulation (data → more data → statistic)==
    
    > Approximate $h(X_1, ..., X_n)$ with a sample $x_1, ..., x_n$  
    >   
    > Generate bootstrap samples of form $X_1^*, ..., X_n^*$  
    > Compute $h(x_1^*, ..., x_n^*)$ for each of those bootstrap samples.
    
- Parameterized Bootstrap Sampling ==(data → appr. f → more data → statistic)==
    
    > Approximate $h(X_1, ..., X_n)$ with a sample $x_1, ..., x_n$, knowing the distribution familiy.  
    >   
    > Compute $\hat{\theta}$, devise the estimated distribution step-function $F_{\hat{\theta}}$  
    > Generate bootstrap samples of form $X_1^*, ..., X_n^*$ with the estimated distribution  
    > Compute $h(x_1^*, ..., x_n^*)$ for each of those bootstrap samples.  
    > The histogram of these $h^*$s will approximate the underlying true $h(X_1, ..., X_n)$.
    > 
    > ![Untitled 100.png](../../attachments/Untitled%20100.png)
    
- ==KS distance,== $t_{KS}$ ==of form== ==$T_{KS}$==
    
    > Compute the largest vertical distance (KS) between $F_{\hat{\theta}}$ and the ecdf $F_n$(from $x_1, ..., x_n)$  
    > ==Was using our step-function== ==$F_{\hat{\theta}}$== ==as a distribution for our original sample== ==$x_1, ..., x_n$== ==a reasonable assumption?==  
    > How big can $t_{KS}$ be for us to decide it’s a shitty match?  
    > Draw parameterized bootstrap samples using our distribution $F_{\hat{\theta}}$, and compute $t_{KS}$  
    > ==(Basically we cope, by trying to say “it’s only that big because the line we compare ecdf with is too smooth, if you actually compared apples with apples, so 135-stepped ecdf from observed sample with 135-stepped ecdf from bootstrapped sample,== ==$t_{KS}$== ==would be a lot smaller”)==  
    > If the p-value of our $t_{KS}$ is small ==(probability of a== ==$t_{KS}$== ==at least as extreme as ours)==, we cope; we accept this distribution despite it’s large KS distance to the observed sample.
    
---
#### incoherent ramblings
|When|Key Word|Volume|
|---|---|---|
|01|[Intro, Data Summary, Probability Space](incoherent%20ramblings/Intro,%20Data%20Summary,%20Probability%20Space.md)|48|
|02|[Conditional Probability, Bayes Rule](incoherent%20ramblings/Conditional%20Probability,%20Bayes%20Rule.md)|177|
|03|[Independent, Random, Distribution](incoherent%20ramblings/Independent,%20Random,%20Distribution.md)||
|04|[Continuous RV, Quantile](incoherent%20ramblings/Continuous%20RV,%20Quantile.md)||
|05|[Expectation, variance and change of variable](incoherent%20ramblings/Expectation,%20variance%20and%20change%20of%20variable.md)||
|06|[Joint distributions](incoherent%20ramblings/Joint%20distributions.md)||
|07|[Independence, covariance and correlation](incoherent%20ramblings/Independence,%20covariance%20and%20correlation.md)||
|08|[Law of Large Numbers and Central Limit Theorem](incoherent%20ramblings/Law%20of%20Large%20Numbers%20and%20Central%20Limit%20Theorem.md)||
|09|[Statistical model, Estimation](incoherent%20ramblings/Statistical%20model,%20Estimation.md)||
|10|[Main Topics](incoherent%20ramblings/Main%20Topics/Main%20Topics.md)||
|11|[receding hairline](incoherent%20ramblings/receding%20hairline/receding%20hairline.md)||
|12|[receding hairline part 2](incoherent%20ramblings/receding%20hairline%20part%202/receding%20hairline%20part%202.md)||
|12.5|[Revision Module 3](incoherent%20ramblings/Revision%20Module%203/Revision%20Module%203.md)||
|13|[Statistical Analysis](incoherent%20ramblings/Statistical%20Analysis.md)||
|14|[Confidence Intervala](incoherent%20ramblings/Confidence%20Intervala.md)||
|15|[Hypothesis Testing](incoherent%20ramblings/Hypothesis%20Testing.md)||
|16|[T test](incoherent%20ramblings/T%20test/T%20test.md)||
|17|[Bootstrap](incoherent%20ramblings/Bootstrap.md)||