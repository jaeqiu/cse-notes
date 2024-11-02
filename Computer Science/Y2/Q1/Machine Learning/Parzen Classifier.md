![[Pasted image 20241023155807.png||500]]
Use average of textbook probability densities for nearby data points to use as probability density at exact data point.

We need to choose a kernel function to base our Parzen pdf off of. 
We need to compute the width of the radius that surrounds an object.
On all training-set data points within this radius, we place our kernel function (at the same width and shape)

The density estimate will be the average value of the kernel functions at a specific point