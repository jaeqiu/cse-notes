This is like a yes/no decision maker. (Binary classification)
Linear Classifier Decision function $\theta^T x + bias$: 
	The decision function $\theta^T x + bias$ returns a high value when x belongs to class positive (1) and a low value when x belongs to class negative (0)
Quality of solution $\theta$:
	It is difficult to find parameters that minimize the number of misclassified objects (when given the training set)
	We might also care about giving an accurate estimate of uncertainty in decisions made.
	Instead of finding the $\theta$ that is best (minimizes misclassification error), we will construct a classifier that returns the probability that a given object belongs to different classes, and only then find the best $\theta$ (the one that maximizes how accurately these probabilities reflect the data we observed.)
	The first step is to convert our decision function $\theta^T x + bias$ into a function that returns probability of belonging to a class, the hypothesis function:  $h_{\theta;bias}(x) = \frac{1}{1 + e^{-(\theta^T x + bias)}}$
	
Hypothesis function $h_{\theta;bias}(x) = \frac{1}{1 + e^{-(\theta^T x + bias)}}$:
	![[Pasted image 20241023164934.png|400]]
	To implement our hypothesis function we will use a logistic function $\sigma(z) = \frac{1}{1 + \exp(-z)}$ that maps real numbers to $(0,1)$
	The hypothesis function has a decision boundary which is set at $0.5$. 
	Now there is a distinction between a confident classification and an uncertain classification:
		Let's say two feature vectors, passed through this hypothesis function return $0.55$ and $0.95$.
		Then both will classify as positive class (1)
		But since $0.55$ is less certain, the loss will also be lower if it turns out to be negative class (0)
		Confidently correct => no loss
		Unconfidently wrong => low loss
		Confidently wrong => high loss
	These values, that range from $(0,1)$ are much better usable; It is now possible to actually calculate the error of the predicted values, compared to the desired, true values.
	![[Pasted image 20241023161515.png|400]]
[[Gradient Descent]] is used:
	![[Pasted image 20241023161531.png|400]]