---
"Legacy Lecture #": "12"
Created time: 2024-09-20T20:36
word count: 189
---
# Recovery

> what does recovery look like?
> 
> ![Untitled 115.png](../../../../attachments/Untitled%20115.png)
> 
> ## Logging
> 
> > A log keeps record of database transactions.
> > 
> > this is a solution to state destruction/overwriting due to power outages/software failures
> > 
> > ### statefulness
> > 
> > - transactions are stateful during the execution
> > 
> > otherwise they’re just maintained in memory
> > 
> > but the state is lost during system failure (since memory is volatile)
> 
> ## Transaction Manager
> 
> > Transaction Manager does Concurrency Control
> > 
> > - sends logs to log manager
> > - schedules order of execution (prevent dependency conflict)
> > - guarantees/enforces atomicity
> > 
> > ## ACID
> > 
> > - Atomic; done fully or not at all
> > - Consistency; data integrity is consistent before and after
> > - Isolation; multiple transactions are isolated (don’t mix)
> > - Durability; system failures ain’t affect transaction changes
> > 
> >   
> 
> ## Classify the Error
> 
> > what kind of error has been made?
> > 
> > is it related to a transaction?
> > 
> > is it related to the system of the dbms?
> > 
> > is it related to the disk?
> > 
> > ### transaction error outcome
> > 
> > - rollback
> > - error
> > - /abort
> > - dbms /abort
> > 
> > ### system outcome
> > 
> > - dbms/os/hardware crash
> > - data loss
> > 
> > ### media error outcome
> > 
> > - head crash/controller failure/catastrophe
> > - data destroyed
> > - …
> > 
> >   
> 
> # Page to Disk
> 
> > There are two ways to save a page to disk
> > 
> > ### in-place saving to disk
> > 
> > AFIM and BFIM don’t exist simultaneously; the before image is replaced by the after image directly in disk
> > 
> > - write log entries before the afterimage is applied/committed
> > - might need undo/redo styled logs for some recovery protocols (protocol=way of doing things)
> > 
> > ### shadow paging to disk
> > 
> > save BFIM to entirely different disk address, AFIM and BFIM coexist
> > 
> > shadow paging is really old and deprecated
> > 
> > record-based multi-version recovery protocols are mainstream (those can work loglessly)
> 
> # Page writeback
> 
> > Writing pages back to the disk
> > 
> > ![Untitled.png](../../../../attachments/Untitled.png)
> > 
> > ## Forced vs No-Forced Policy (redo)
> > 
> > ### forced writeback
> > 
> > always write/flush pages back to the disk after any changes to the buffered pages
> > 
> > ### lenient writeback
> > 
> > you can do the write/flushing of pages at a later time (risk losing the page in the buffer if it’s not written for too long)
> > 
> > ## Steal vs No-Steal Policy (undo)
> > 
> > can competing pages evict eachother from the buffer zone?
> > 
> > ### no stealing
> > 
> > A page that was modified by a transaction won’t be written back to the disk until transaction commit
> > 
> > - pin-attribute
> > - lose out on buffer content
> > 
> > ### stealing
> > 
> > A page that’s changed by a transaction can be written/flushed to disk even though it is not committed yet
> > 
> > - another transaction can steal the buffer space
> > - the disk can have changes from partial transactions, those need to be undone
> > 
> > ### A combination of these two policies will result in a unique restoration protocol
> > 
> > |   |   |   |
> > |---|---|---|
> > ||Force (no redo)|No-Force (redo)|
> > |No Steal (no undo)|no redo no undo|yes redo no undo|
> > |Steal (yes undo)|no redo yes undo|yes redo yes undo|
> 
>   
> 
> ## Executing ACID Transactions
> 
> ### DB Element
> 
> an element can mean a relation/block/record
> 
> ### DB State
> 
> a database state is just the state a database is in.
> 
> so a certain state → values for all element in the database.
> 
> is it a consistent or inconsistent state? (are the integrity constraints satisfied?)
> 
> ## Transaction Process
> 
>   
# Distributed Transactions
  
# GPT summary

> "Recovery from System Failures: Ensuring Atomicity and Durability"
---
## Introduction
- Recovery ensures atomicity and durability of transactions.
- Focus: Handling system failures to maintain database consistency.
## Failure Modes
- Transaction failure, system failure, and media failure.
- Each requires specific recovery mechanisms.
## Logging
- Crucial for ensuring atomicity.
- Log records capture transaction events for recovery.
- Types: Undo logging, redo logging, undo/redo logging.
## Undo Logging
- Focuses on undo operations in case of system failure.
- Records changes before transaction commits for rollback.
## Log Records
- Include transaction ID, element modified, old value, operation type.
## Rules of Undo Logging
- Write log records before corresponding database changes.
- Commit records written after all changes on disk.
## Recovery Process
- Examination of log file.
- Applying undo operations for uncommitted transactions.
## Example
- Demonstrates undo logging process in practice.
- Sequential actions during transaction execution and recovery steps.

> "Recovery ensures data consistency and integrity after system failures."
---
## Summary
- Recovery mechanisms ensure atomicity and durability.
- Log records capture transaction events for recovery.
- Undo logging focuses on undo operations pre-commit.
- Rules ensure effective undo logging.
- Recovery involves examining the log file and applying undo operations.
- Example illustrates the undo logging process in practice.
The End