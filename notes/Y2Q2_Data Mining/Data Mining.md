Extracting useful information into an undestandable way from a large amount of data

![Data Mining 2024-11-11 14.28.41.excalidraw](../../Excalidraw/Data%20Mining%202024-11-11%2014.28.41.excalidraw.md)

Data mining challenges
- Survivorship Bias: It is difficult to draw unbiased conclusions from biased datasets
- Clever Hans: The model doesn't learn the way we expect it to, it uses correlations to inflate performance.
- \[needs citation\] wikipedia anecdote: It is important to be aware of shortcuts that ml models take to achieve inflated accuracy
- Multiple Comparisons Problem: (Correlation does not imply causation)

Only if there are patterns in the original data should we mine it. (You can always find what you're looking for)

3 types of anomalies:
f(x) -> y
point: an individual data point is anomalous with respect to the data
classification: learn from unlabeled data and test whether the point lies in an empty part of the input space

distance based: test whether the distance to the nearest neighbour(s) is normal

data reconstruction: test whether each feature value is normal, given all other feauture values

	
	
contextual: an individual data instance is anomalous with respect to its own context
(within normal range, but strange considering surrounding data)
f(x, C) -> y
Temporal correlation: 
Solution: differencing; plot the difference with the previous point for each point
Seasonal data -> differenced data -> absolute errors -> mean of error over window

collective: A set of strange data points. detection based on multiple data points -> collective f(C) -> y

Modeling Context
sliding windows
time warping distance: sequence alignment, dynamic time warping![800](../../attachments/Pasted%20image%2020241114120057.png)
lines are not allowed to cross

![Pasted image 20241114120652.png](../../attachments/Pasted%20image%2020241114120652.png)
You are only allowed to move down, right, or down-left diagonally

Popular anomaly detection methods
Classification: minimize positive space maximize negative space (when many decision boundaries are contending)
- you could randomly add negative points (uniformly)
- fake negative data -> learn classifier off both
Nearest Neighbour
Spectral
Deep Learning


Sliding window:
obtain fixed length row by movind a window over the series
learn a model form the obtained data table

Distances with sequential Orders:
??????????