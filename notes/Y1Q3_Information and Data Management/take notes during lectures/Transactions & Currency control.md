---
"Legacy Lecture #": 10-11
Created time: 2024-09-20T20:36
word count: 320
---
# Comprehensive Overview of Web Information Systems (WIS)
Web Information Systems (WIS) are complex structures that rely heavily on the successful processing of transactions and the effective control of concurrency. This discussion focuses on these key areas, underscoring the vital importance of maintaining data integrity and ensuring the safety of transactions.
## Key Concepts
1. **Transaction Processing:** This involves conducting research, running experiments, and designing and implementing projects. The focus here is on ensuring the safe execution of all transactions, particularly when they occur concurrently. These transactions are the driving force behind any operational WIS.
2. **ACID Principle:** Standing for Atomicity, Consistency, Isolation, and Durability, these principles define the essential properties that ensure reliable processing of database transactions. All transactions in databases should strictly adhere to these principles.
3. **Conflict Serializability:** This is a concept that aids in avoiding issues related to concurrency control. By restricting to serializable schedules, the system can maintain data integrity and prevent concurrency control problems.
4. **Schedule Equivalence:** Two schedules are deemed equivalent if they contain the same operations and have the same conflict relations. This understanding of schedule equivalence is crucial in maintaining uniformity across different schedules.
The concept of **Conflict Graphs** is introduced as a tool for testing conflict equivalence. Conflict graphs are constructed with transactions as nodes and conflicts as edges, providing a visual representation of conflict relations among different transactions.
The **Two-Phase Locking Protocol** is explored as a key technique in ensuring conflict serializability of schedules. This protocol ensures that all necessary locks are acquired before the first lock is released, thus producing only serializable schedules.
## Takeaway
The understanding of the importance of implementing transactions that strictly adhere to the ACID principles for the safe execution of operations in Web Information Systems (WIS) is vital. Additionally, systems should limit themselves to conflict serializable schedules to circumvent concurrency control problems. Using tools such as the Two-Phase Locking Protocol and conflict graphs can aid in achieving these goals.