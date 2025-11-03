Idea: Anomalous points take LESS splits to isolate

Advantages:
- Fast Compute
- Accurate
- Scales to large datasets
- No need to calculate distances with [Distance Measure](Distance%20Measure.md), leads to protection against [Curse of Dimensionality](Curse%20of%20Dimensionality.md)



Repeat N times: 
- Randomly pick a feature f 
- Split the f uniformly at randomly between [min,max] 
- Continue until all leafs contain singletons 
The path length to reach a leaf is the isolation score
Average isolation score over all trees to get the anomaly score

ANOMALOUS <--------------------------------> REGULAR
LOW ANOMALY SCORE ----------------------- HIGH ANOMALY SCORE