1. What is an Aggregate?
    - Aggregate = cluster of related objects
    - helps define boundaries within a bounded context
    - maintain consistency and conforms to Invariants
    - has an “Aggregate root” which is responsible for checking the invariants
2. What is an Invariant?
    - Invariant = business rule or constraint that must always be true
    - e.g.: “A bank account’s balance cannot go negative.”
3. How do they relate to each other?
    - **Aggregates** are designed to maintain consistency for their internal state, ensuring that all **Invariants** are satisfied.
4. How are Invariants enforced?
    - by encapsulating business logic within the Aggregate
    - through validation logic