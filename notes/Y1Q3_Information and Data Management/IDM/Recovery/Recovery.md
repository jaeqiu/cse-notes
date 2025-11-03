> Recovery deals with the problems of **atomicity** and **durability**
# Error Classification
## transaction failure
- error in application
- abort command
- abort by dbms (deadlock)
## system failure
crash in dbms, os ,hardware  
data in memory is lost  
Solution → **LOGGING** 🪵
# **System concepts**
**Force**: directly write/flush change to disk after page in buffer was modified. Might be slow, frequent writes. write partial transaction, which might be undone.
**No-force**: write deferred to later time. might lose pages in buffer.

> ⚠️ _**VERY IMPORTANT FOR EXAM**_ ⬇️
_**No Steal / Steal Concept**_
**No-Steal:** A page modified by a transaction can't be written as long as the transaction is not committed. Chance of losing buffer content.
D_on't steal my block._
  
**Steal**: A page modified can be flushed before the transaction is committed. Useful when having a lot of transactions to make space in buffer. _**(Interesting exam questions with steal.)**_
- Another transaction can steal its place in the buffer.
- Disk can have partial transactions, which could be undone.
![Untitled 127.png](../../../../attachments/Untitled%20127.png)
---
# Processing transactions
For efficiency reasons we want to write sequentially.  
Optimizations:  
- buffer manager: if steal enabled we assume a transaction will be committed → write a couple of transactions sequentially.
To keep track of uncommitted transactions → dirty data bit
---
# Primitive Operations
**INPUT(X)**
- Copy X from disk into buffer
- Executed by the buffer manager
**READ(X,t)**
- Copy X from buffer into address space for transaction t
- Executed by the transaction
**WRITE(X,t)**
- Copy value t to element X in buffer
- Executed by the transaction
**OUTPUT(X)**
- Copy X from buffer to disk
- Executed by the buffer manager
---
# Logging

> Objective of logging is the atomicity of a transaction.
Log file is append only, for obvious reasons.
## Undo Logging

> doesn't work with steal.
_Allowed to commit when all changes are on the disk_
**Problem with Undo-Logging:**
- “Commit” not until having written to the disk → high I/O costs.
When writing, the following order is used:
- Write the old value to the log.
- Before OUTPUT, Flush the log.
- After OUTPUT, write COMMIT to log.
- FLUSH LOG ✅
- Notify user that transactions have been committed.
**Recovery using** _**undo logging**_**:**
- Examine log files.
- If COMMIT T not available, undo the transaction by writing the old values stored in the log backwards. Bottom to Top.
- Write ABORT X for all uncommitted transactions into log
- FLUSH LOG
## Redo Logging

> Doesn't work with steal.
_Allowed to commit when changes are on the log._
**COMMIT** is written to log before any value is written to the disk.
**Promise** user that transaction is committed even **before** they are on disk, because they are logged on **disk**.
**Very fast** during normal operation.
On **recovery slow** because you **can’t assume** output is **successful.**  
**When** writing, the following order is used:
- Write **new** values to the log.
- Write **COMMIT** to log.
- **FLUSH LOG**
- **OUTPUT**
**Recovery using redo logging:**
- If no COMMIT in log → elements on disk are untouched, no need to recover → ignore incomplete transactions
- Committed → not clear if changes on disk, but logs contain whole info about transaction so just **redo** it.
- For each uncommitted transaction write ABORT into log.
- FLUSH LOG
---
# Distributed Transactions
2 phase commit:  
too slow.  
user sends request to coordinator  
coordinator sends prepare commit to all workers.  
each worker log that they are about to start, and lock everything that you need.  
if successful -> ready  
if error -> failure  
if everyone successful -> send message back to all workers that they are allowed to commit.  
then all workers send back if commit successful  
only then the coordinator sends back success to user.  
non-acid tx:  
move consistency to business logic.  
## 🧢 CAP Theorem
_**C**onsistency, **A**valiability, **P**artition Tolerance_
**Consistent** here refers to all replicas of a fragment are always equal. **Replica Consistency** (_not to be confused with ACID)_
**Availability:** All requests to non-failing nodes must result in a response.
**(Network) Partition Tolerance:** System properties hold in case of network failure.
You can not have a highly available, partition-tolerant and consistent system.
  
## ACID Transaction

> Pessimistic, complex and strong consistency
## 🧂 BASE Transactions

> Optimistic, Simple and Fast
_**B**asic **A**vailability:_ even if outdated, it should be available.
_**S**oft-State:_ allow inconsistent states.
_**E**ventual Consisten_t: sooner or later, data will be in-sync.
Sacrifice transactional consistency for scalability and features! Replace with **eventual consistency**. Consistency resolved with business logic, for example: [Bol](http://Bol.com).com payment fails, get email about it _ hours later.