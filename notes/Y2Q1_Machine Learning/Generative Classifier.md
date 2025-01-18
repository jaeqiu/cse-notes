![300](../../attachments/Pasted%20image%2020241023143041.png)
Generative classifiers can generate new data, and discriminate classes in the feature space

##### multivariate gaussian distribution: common, few parameters
$f(x) = \frac{1}{\sqrt{(2\pi)^M*det(\Sigma)} } e^{-\frac{1}{2}\left(x-\mu\right)^T(x-\mu)\Sigma^{-1}}$
Instead of 
$f(x) = \frac{1}{\sigma \sqrt{2\pi} } e^{-\frac{1}{2}\left(\frac{x-\mu}{\sigma}\right)^2}$
Uses det(Sigma) instead of variance.

Maximum likelihood estimators for mean and covariance
    Sample Mean: 
	    $\hat{\mu} = \frac{1}{n} \sum_{i=1}^{n} \mathbf{x}_i$ 
	    average of data points 
    Sample Covariance: 
    $\hat{\Sigma} = \frac{1}{n} \sum_{i=1}^{n} (\mathbf{x}_i - \hat{\mu})(\mathbf{x}_i - \hat{\mu})^T = \frac{1}{2} \sum_{i=1}^{n} \tilde{\mathbf{x}}_i \tilde{\mathbf{x}}_i^T$
	    (unbiased when using $\frac{1}{n-1}$ instead of $\frac{1}{n}$)
	    average of symmetric square matrix based on distance to mean

Covariance Matrix:
![Pasted image 20241107034559.png](../../attachments/Pasted%20image%2020241107034559.png)


![200](../../attachments/Pasted%20image%2020241023143132.png)
[Linear Generative Classifier](Linear%20Generative%20Classifier.md):
	These classifiers use linear decision boundaries
[Non-linear Generative Classifier](Non-linear%20Generative%20Classifier.md):
	These classifiers don't use linear decision boundaries