Classification: map features to a label
Feature vector => single value hypothesis
##### Curse of Dimensionality:
Intuitively, adding more features should make for a better classifier since there will be more features to distinguish objects. In reality, each additional feature has it’s own underlying true distribution, which we also need to estimate. In order to estimate those parameters accurately, we need even more objects in the training data set. Therefore there is an optimal amount of features to use on a given dataset.
##### Nomenclature and Prior Knowledge
Data Distribution: p(x)
Class Prior: p(y)
Class Distribution: p(x|y)
Posterior: p(y|x)
Dataset
	![[Pasted image 20241023135524.png|450]]
	Object: 
		The true underlying object is represented as a feature vector, dissimilarity or structural pattern
	Feature: 
		A feature has many measurements (one for each object)
	Measurement: 
		A measurement is the value of a particular feature alongside the object.
	Design matrix: 
		The design matrix consists of all measurements (all measurements of all features)
	Labeled object: 
		A labeled object consists of all measurements of this object with a numerical label 
	Dataset: 
		A dataset consists of all measurements and respective labels
Probability Theory Rules
	Sum Rule:
		$p(X) = \sum_Y p(X, Y)$
		Probability is sum of parts
	Product Rule:
		$p(X, Y) = p(Y\mid X) \space p(X)$
		Joint = conditional * marginal 
##### Misclassification
![[Pasted image 20241023135739.png|800]]
False negative error: $\varepsilon_1$
	$\varepsilon_1 = \int_{\mathcal{R}_2} p(\mathbf{x} | y_1) d\mathbf{x}$
False positive error: $\varepsilon_2$
	$\varepsilon_2 = \int_{\mathcal{R}_1} p(\mathbf{x} | y_2) d\mathbf{x}$
Classification Error: 
	Total probability of misclassifying. 
	It sums up the error for each class prior 
	$p(\text{error}) = \sum_{i=1}^{C} p(\text{error} | y_i) p(y_i)$
	Note: the error here is not the false positive but the false negative error(orange area over green area)
Misclass cost: $\lambda_{true, predicted}$

##### Risk
Dataset Empirical Risk 
	$R$: $R = \frac{1}{N}\sum_{i=1}^n\lambda_{y_i,\hat{y_i}}$
	Average misclass cost per true class
Class Conditional Risk $l^i$: 
	$l^i(\mathbf{x}) = \sum_{j=1}^C \lambda_{ji} p(y_j|\mathbf{x})$
	The total cost of deciding on a class i
	Calculated by summing the probability that it is actually a different class, weighted by the cost (risk = cost * probability)
Region Average Risk $r^i$:
	$r^i = \int_{R_i} l^i	(\mathbf{x}) p(\mathbf{x}) \, dx$
	$r^i = \int_{R_i} \su	m_{j=1}^C \lambda_{ji} p(y_j|\mathbf{x}) p(\mathbf{x}) \, dx$
Average risk of a decision region
	The area of the conditional risk of this region weighted by the prior probability of that class
	Classifier Total Risk $r$:
	$r = \sum_{i=1}^C r^i = \sum_{i=1}^C \int_{R_i} \sum_{j=1}^C \lambda_{ji} p(y_j|\mathbf{x}) p(\mathbf{x}) \, dx$the total risk of a model, is the sum of average risks of each decision region
	
##### Classifier Construction using Empirical Risk Minimisation
![[Pasted image 20241023165318.png|400]]
Minimise the average cost, varying the hypotheses functions, when they are evaluated in the training set
##### Hypothesis function (linear model):
![[Pasted image 20241023165331	.png|400]]![[Pasted image 20241023165340.png|400]]
By varying the weights $w_1, \dots, w_D$, we obtain the general class, of possible functions for this hypothesis model.
some h(x) map feature sets to continuous values (regressor)
some h(x) maps feature sets to a single value (classifier)

