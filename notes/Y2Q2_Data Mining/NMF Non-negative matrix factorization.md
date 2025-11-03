![](../../attachments/image/NMF%20Non-negative%20matrix%20factorization-1737837997765.jpeg)

minimize $∣∣R−W⋅H∣∣_F^2​$

NMF is well-suited for sparse matrices where most user-item interactions are unknown. It uses the known values to predict missing entries

NMF automatically identifies latent features (hidden patterns) that describe user preferences and item characteristics

Factorize (nonnegative) A into B and C, s.t. B, C also non-negative
Standard procedure for cross-validation in matrix factorization is to pick a subset of entries (ratings), not entire columns (users/items).

Multiplicative update: In the gradient descent step, we use a multiplicative update.

In k-fold cross-validation, we randomly partition the dataset into k folds—each fold is a representative subset of all data.

You shouldn’t select hyperparameters solely from the final test set.
Cross-validation is strongly recommended (or at least a separate validation set)
Removing entire columns is not the correct procedure for k-fold CV in NMF, and the multiplicative update algorithm doesn’t magically fix that.