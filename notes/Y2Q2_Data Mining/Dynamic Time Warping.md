Aligns sequences on the time-axis.

Not scale-invariant: If you multiply all data values by a constant factor, you will change the absolute distances computed by DTW. Thus it is **not** truly scale invariant.

DTW ≤ Euclidean

One major advantage of DTW is that it can handle sequences of **different** lengths, by warping (stretching/compressing) the time axis as needed. Even if one sequence is not just the other sequence stretched, DTW can still use the first and last point of the shorter sequence and connect it to the remaining ("out of bounds") points from the other sequence.

![](../../attachments/image/Dynamic%20Time%20Warping-1737890791101.jpeg)

Multivariate DTW: DTW can be extended to multiple feature dimensions (though it might be more complex)

DTW realigns time but doesn’t fix scale differences; people _recommend_ normalization before DTW, but it’s not a forced requirement.