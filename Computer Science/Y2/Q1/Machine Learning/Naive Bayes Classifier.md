Look at all features by themselves
assume all features $X_1, X_2, ...,\space X_n$ are independent
Actual correct class distribution:

$P(X_1, X_2, \dots, X_n \mid C) = P(X_1 \mid C) \cdot P(X_2 \mid X_1, C)$ $\dots \space \cdot P(X_n \mid X_1, X_2, \dots, X_{n-1}, C)$
“The chance of this small red fruit being an orange is the chance of it being an orange if its small times the chance of it being an orange if its red and small”

Naive class distribution:
$P(X_1, X_2, \dots, X_n \mid C) = P(X_1 \mid C) \cdot P(X_2 \mid C)$ $\cdot \dots \cdot P(X_n \mid C)$
“The chance of this small red fruit being an orange is the chance of it being an orange if its small times the chance of it being an orange if its red”

pros:
    - no curse of dimensionality → handles high dimensional featurespace
    - fast training
    - handles both continuous and discrete data
cons:
    - can’t deal with correlated features