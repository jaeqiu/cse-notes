**Atomicity:** all or nothing  
**Consistency:** data constraints, replica consistency  
**Isolation:** Transactions don't interfere with each other  
**Durability:** committed → safe, assume its 100% saved

> Database never responds with committed? User cant assume anything.
**Transaction:** Totally-ordered finite sequence of actions in form of r(x) and w(x) , x is some record.  
T:=r(x)r(y)w(u).....  
## **Schedule**

> in serializable schedules, and serial. order of tx is not necessary on order of income.
**serializable schedules:**
- schedule that has the same effects on a database as a serial schedule
- 1 equivalent serial schedule, which means they are correct.
**equivalent iff**
- same set of operations
- read same values
- write same values
so: after executing the schedules the results of both should be exactly same → equivalent.
**serial schedule:**
- never issues with concurrency.
- slow
- doesn't allow db to take advantage of hard drive.
- one by one
- do not ensure durability → ACI.
**Intertwined schedule:** interleaved
**2 operations in a schedule are conflicting when:**
- different transactions.
- access same record.
- at least one of them writes data.
**conflict relation:** all pairs of conflicting operations of a schedule
**conflict equivalent:**
- same operations
- same conflict relation (in the same order)
![Untitled 126.png](../../../../attachments/Untitled%20126.png)
**conflict serializable:**
- a schedule that has exactly the same conflicting operations (in the same order) as a serial schedule
**conflict graph:**
- Two schedules are conflict equivalent, if and only  
    if their conflict graphs are identical  
    
![Untitled 1 22.png](../../../../attachments/Untitled%201%2022.png)
if non-conflict serializable schedule → contains cycle
---
# 2 Phase Commit

> 1 Coordinator. N workers.

> [!important] ==- User sends request to cooridnator.<br>- Coordinator sends a prepare commit to all workers<br>- Workers process and write changes to LOG. → If success → ready, else Failure.<br>==
> 
>   
> ==- If all workers ready, coordinator sends COMMIT to all workers. they commit.  
> - workers send back message to confirm its done. if all done the coordinator completes the transaction. coordinator send back to user  
> - if at least 1 worker fail committing → all others rollback  
> ==
Prepare Phase
Commit phase
  
---
  
## Locks
read locks: can be shared between transactions.
write lock: exclusive lock.  
**2 phase locking protocol** -> guarantee conflict serializable schedule.  
growing phase - locks granted  
shrinking phase - locks released (can't lock anymore)  
major weak point:  
- deadlocks -> only way to solve it is to kill a transaction, then try to execute again.
how to choose which to kill:
- kill the transaction with the most deadlocks.
### Deadlocks
How to deal with deadlocks  
**– Ignore**  
• Easiest, but may stop the system  
**– Deadlock Detection**  
• Allow deadlocks, detect them, and then resolve them  
**– Deadlock Prevention**  
• Prevent that deadlocks can happen  
• Ensure that at least one of the 4 criteria is not fulfilled  
**– Deadlock Avoidance**  
• Prevent that deadlocks can happen  
• Use additional information about the request to dynamically  
prevent unsafe situations.