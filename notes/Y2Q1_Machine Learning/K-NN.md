Expand scope until you hit k data points, and pick most frequent label. 
Measures similarity as boolean (all within range are "similar", no matter the relative distance)   

Optimise k:
	low k:
		too high temperature (variable, unstable)
	high k:
		everyone votes regardless of relative distance (essentially just pick higher prior probability) 
	best k:
		k that performs best in validation set
		in other words, pick the k that has the lowest epsilon in the validation set (the validation set is a subset of the training set reserved for this purposes
		![Pasted image 20241023143252.png](../../attachments/Pasted%20image%2020241023143252.png)
K-nn pro's vs con's
    - adaptable complexity
    - usually good performing
    - simple/flexible
    - needs large training sets
    - many distance computations
    - need sensible scaling of feature measurements
    - needs optimization of k
Resolve a tie
    - if 2 classes, use odd k (uneven voters)
    maybe we can expand this to work for multiclass: pick k such that k mod \#labels ≠ 0
    - coinflip: pick class with greater prior
    - use k=1 to resolve tie (which just picks the closest)

Ways to measure distance when increasing scope
    - Euclidean: straight distance in arbitrary dimensions, w/ Pythagoras
    - Manhattan distance: sum up distance in each dimension
    - Hamming distance: count number of differing features
	for Euclidean and Manhattan: requires sensible feature scaling.
    Another caveat of all these distancing measures is that a certain feature might have incomparable scale compared to other features.
    ![Pasted image 20241023154407.png](../../attachments/Pasted%20image%2020241023154407.png)