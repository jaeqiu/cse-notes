Think of Support Vector Machines like building a wall between two different types of objects (like circles and squares). The wall should be as far from both groups as possible so we can clearly tell them apart. This helps to separate things into categories.
when there are multiple decision boundaries that correctly classify all objects, you should pick a decision boundary that maximizes the margin (distance to an object). 
The support vectors are exactly on the outer edge of the margin.![[Pasted image 20241023165256.png]]
##### Soft margin svm)![[Pasted image 20241023165307.png]]
When we have don't have linearly separable data, we can use a soft margin svm, where violations are allowed (but penalized)