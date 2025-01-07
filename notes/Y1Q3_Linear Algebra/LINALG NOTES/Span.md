---
From Lecture: "2"
Created time: 2024-09-20T20:36
estimated value (word count): 269
---
> Main Takeaway: Understanding the concepts of linear combination and span of vectors, along with the idea of linear dependency, is crucial. Linear dependency is defined when one vector of the basis lies in the span of the remaining vectors, implying it doesn't contribute to the dimensionality of the span. Two vectors that point in the same or opposite direction are linearly dependent, creating a straight line, not a plane.
# **Linear Combination and Span**
- **Linear Combination**: A linear combination of vectors is a combination of those vectors using scalar multiplication and addition.
- **Span**: The span of multiple vectors is the set of all possible vectors that can be created by a linear combination of the given vectors.
- **The Relationship**: The relationship between a linear combination and a span of input vectors is that the span represents all possible linear combinations of the input vectors.
# **Linear Dependency**
- **Definition**: Linear dependency is defined by the equation `Ax = 0` having a nontrivial solution.
- **Implication**: If one vector of the basis already lies in the `span` of the remaining vectors, it is `linearly dependent` on them. This vector doesn’t add anything useful as it roams around the same span.
- **Linear Independence**: If every basis vector adds another dimension to the span, each of those vectors is `linearly independent`.
- **Linear Dependency of Direction**: Two vectors are said to be linearly dependent, if they point in the same or opposite direction. Their span doesn’t take the form of a plane but a straight line.
- **Zero Vectors**: Two zero vectors suffice this condition of linear dependency.