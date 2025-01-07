---
Course Name: Information & Data Management
Course Code: CSE1505
Course Timing: Y1Q3
Course Status: completed
Last edited time: 2024-09-20T20:35
---
# 💶Cost-Based Block-Access Optimization
## operate cost in \#Block-Access 📠

> Cost = operation + write result to disk
**Cost_IX Index Block-Access Cost**

> [!important] Tree Index:
> 
> Cost_ix = HeightOfTree (entire index on disk, nothing in memory)
> 
> Cost_ix = HeightOfTree - 1 (root in memory, depth 0)
> 
> Cost_ix = HeightOfTree - 2 (root and depth 1 layer in memory)
> 
> Cost_ix = 0 (index in memory)

> [!important] Hash Index:
> 
> Cost_ix = 0 (Hash index)
  
**σ selection**

> [!important] **Cost_LinearRelationScan = \#blocks(R)**

> [!important] **Cost_BinaryScan = ⌈log2( \#blocks(R) )⌉**

> [!important] **Cost_IndexScan = \#matchingRecords * (Cost_IX + 1)**
⨝ join
**CostsResult(R⋈S)**

> [!important] **CostsResult(R⋈S) =**
> 
> |R⋈S|/blockingfactor = \#blocks
**Block nested loop join:**
For each block in build (small table), find match in probe (big table) two blocks should fit in memory.

> [!important] **Cost_BNLJ (R⋈S) = \#blocks(R) + (#blocks(R) * #blocks(S)) + CostsResult(R⋈S)**
**Index nested loop join:**

> For each record, find matching records according to the index, only get matches from disk

> [!important] **Cost_INLJ(R⋈S) = \#blocks(R)+ (|R| * (Costs_IX+1)) + CostsResult(R⋈S)**
assumes one match per record
**Hash join:**

> Hash both relations, compare buckets

> [!important] **Cost_HJ (R⋈S) = \#blocks(R)+ #blocks(S) + CostsResult(R⋈S)**
**Sorted-Merge join:**

> both have to be sorted already

> [!important] **Cost_SMJ(R⋈S) = \#blocks(R) + #blocks(S) + CostsResult(R⋈S)**
## estimate size 🧮

> How large will intermediate result I1 be, in records, bytes, blocks?  
> How does that change for spanned/unspanned  
⨝ join

> [!important] |R⋈S| = |R|*|S| / max(\#dv(R, a), #dv(S, a))
> 
>   
> selecting  
**σ select**

> [!important] For size estimation of a selection with a condition like
> 
> _**attribute = value**_ we know:  
> size = maximum size * (1 / \#DistinctValues(I))  
# 🫰Heuristic-Based Join-Order Optimization

> heuristics are common mental shortcuts to make it easier to work through problems. In this context, heuristics involve a number of common optimizations that _**usually**_ result in a desirable operator tree  
>   
> _**they’re not always better**_
## 6 heuristics
### Break a selection $\sigma$ into multiple parts

> sometimes, a composite selection $\sigma$ should be broken down into a cascade of selections, so that they may be distributed over the operator tree
### Push selection $\sigma$ to an earlier moment

> make sure to push selections $\sigma$ to the earliest moment that they can afford to be placed, to relieve intermediate results
### Break, eliminate, push, introduce projection $\pi$

> break up (cascade into small parts)
> 
> eliminate unnecessary (remove projections $\pi$ if they are no longer needed to lower intermediate costs)
> 
> push down (push projections to the earliest moment that they can afford to be introduced
> 
> introduce (reintroduce the projection in the appropiate place)
### Collect selections $\sigma$ and projections $\pi$

> never have selections follow after projections
> 
> $\sigma_a\pi_b\sigma_c\pi_d = \pi_{bd}\sigma_{ac}$()
### Combine selection $\sigma_{condition}$ and cartesian product $\square\times\square$ into a join $\square\bowtie_{condition}\square$

> the idea is that a cartesian product $\times$ followed by a selection $\sigma$ can always be replaced by a theta join (join on condition)
### Prepare a block of unary operators for pipelining thereof

> a multitude of unary operations in immediate succession can be pipelined.
# ❤️‍🩹Recovery w/ Steal-Undo/Noforce-Redo

> Q: Given a table like ___ , give the recovery procedure if a _**crash**_ happens on line ____  
> Q: write log entries  
> Q: fill in missing cells  
### steal-undoing, noforce-redoing 🥷
![[Untitled 102.png|Untitled 102.png]]
- steal: allow flush before commit.
- steal-undo recovery: undo uncommitted transactions
- noforce: no need to force flushing after a change in buffer
- noforce-redo recovery: redo committed transactions
### steal-noforce-undo/redo log example
![[Untitled 1 7.png|Untitled 1 7.png]]
### steal-undo only log example
![[Untitled 2 7.png|Untitled 2 7.png]]
### noforce-redo only log example
![[Untitled 3 7.png|Untitled 3 7.png]]
### ❓how to read
- INPUT(A) - A from disk → memory
- OUTPUT(A) - A from memory → disk
    - for undo logging: happens before transaction commit
- READ(A,t) - memory A → var t in transaction T’s address space
- WRITE(A,t) - from var t → memory A
    
    - with undo/redo: log says <T, A, 8, 16> meaning transaction T overwrites memory A, overwriting 8 with 16
    
    - with undo: log says <T, A, 8>, meaning Transaction T overwrites memory A, overwriting 8
    
    - with redo: log says <T, A, 16> meaning Transaction T overwrites memory A with 16
### ⛔log rules for Undo, Redo, UndoRedo:

> t *= 2 → WRITE() to mem → OUTPUT to disk  
>   
> WRITE() logs <T,X,v>  
> OUTPUT() logs <COMMIT T> around the same time as OUTPUT()  
> ”flush” means log goes from mem to disk  
U1: “<T,X,v>” log before OUTPUT(X)  
U2: OUTPUT(X) before log “<COMMIT T>”  
so a commit means <T,X,v> definitely happened  
  
R1: “<T,X,v>” flushed before OUTPUT(X)  
R2: “<COMMIT T>” flushed before OUTPUT(X)  
so a commit means jack shit  
  
UR1: “<T,X,u,v>” flushed before OUTPUT(X)  
UR2: idc if commit means anything so do it before after whatever u want  
### 🩹recovery
undo:
for uncommitted /unaborted transactions, backtrack and undo changes  
ABORT uncommitted transactions, FLUSH log  
redo:
for committed/aborted transactions, forward track and redo changes
undo-redo:
for uncommitted /unaborted transactions, backtrack and undo changes
ABORT undone transactions FLUSH log
### 🏁Checkpointing

> It’s mad paranoid to track the entire log file for one small mistake;
- quiet vs non quiet
    - quiescent: everyone wait and let the checkpoint cook?
    - nonquiescent: who is he talking to?
- what it do?:
    - freeze time <START CKPT(T1,T3,T4)> and flush log
    - complete _**all**_ in-progress T transactions
    - flush log to disk (from memory to disk)
    - log <CKPT>, flush that shit immediately
    - unfreeze time <END CKPT(T1,T3,T4)> and flush log
- what it mean?
    - undo:
        - see <END CKPT> as commits of everything (T1, T3, T4, from <start ckpt(T1, T3, T4), T2 would have made it into the checkpoint if T2 was live, ckpt is commit all)
    - redo:
        - for most recent END CKPT, go to START CKPT(T1, T3, T5), go to earliest of START(T1) or START(T3) or START(T5), and redo forwards from there.
  
# 🏧Transaction
## two phase commit

> multiple database nodes that are mirrors need to agree on commit/aborting a transaction, and need to be consistent (they should have the same values no matter who u ask)
> 
> ![[Untitled 4 7.png|Untitled 4 7.png]]
> 
> > [!important] ==- User sends request to coordinator.<br>- Coordinator sends a prepare commit to all workers<br>- Workers process and write changes to LOG. → If success → ready, else Failure.<br>==
> > 
> >   
> > ==- If all workers ready, coordinator sends COMMIT to all workers. they commit.  
> > - workers send back message to confirm its done. if all done the coordinator completes the transaction. coordinator send back to user  
> > - if at least 1 worker fail committing → all others rollback  
> > ==
> 
> - deadlock can still happen
## transaction schedule
![[Untitled 5 7.png|Untitled 5 7.png]]
### schedule (ooga booga)
has every instruction of every transaction in the transaction-correct order, but with no mind for fucking things up
### serializable schedule (probably better for performance)

> Does things concurrently but achieves the same effect as serial scheduling
### conflict serializable schedule (sweet spot)

> handles conflicts in the order serial schedules would.
make precedence graph if u want to check conflict serializability
![[Untitled 6 7.png|Untitled 6 7.png]]
![[Untitled 7 7.png|Untitled 7 7.png]]
go through the table chronologically, then for each change, search for conflict in other transactions.
- cant have conflict with the past
- cant have conflict with yourself
R → W conflict
(so if u are considering R(A) in transaction 1, look for W(A) in other transactions 2/3)
W → R conflict
W → W conflict
do you end up with a cycle, the transactions are not conflict serializable.

> conflict serializable schedules are conflict-equivalent to serial schedules.
(conflict equivalent schedules only differ in order of non-conflict instructions.)
conflict equivalent if conflict graphs the same
### two-phase locking
- Weak against deadlock. Solutions:
    
    **– Ignore**
    
    • Easiest, but may halt the system
    
    **– Deadlock Detection**
    
    • Allow deadlocks, detect them, and then resolve them
    
    **– Deadlock Prevention**
    
    • Prevent that deadlocks can happen
    
    • Ensure that at least one of the 4 criteria is not fulfilled
    
    **– Deadlock Avoidance**
    
    • Prevent that deadlocks can happen
    
    • Use additional information about the request to dynamically  
    prevent unsafe situations.  
    
- rollbacks cascade to unreasonably far back
- Growing (locking) phase, shrinking (unlocking) phase
    - If you unlock something, you cannot lock anything anymore
### serial schedule (overkill)
![[Untitled 8 6.png|Untitled 8 6.png]]
no intertwining of transactions allowed
# 🫦Random Questions that make Lofi excited
## CAP-theorem for distributed systems

> _“I’m telling you, in the future we finna get long distance relationships that are:_  
> _- CONSISTENT: always on the same page about whether we still dating or not_  
> _- AVAILABLE: always tell gang if she still wifey_  
> _- ==NETWORK== PARTITION TOLERANT: never have schizo breakdowns when we apart”_  
>   
>   
> **”nah u trippin, u might achieve two of them, but all three? It ain’t exist chigga”**
> 
> ![[Untitled 9 5.png|Untitled 9 5.png]]
## NoSQL database

> relational db’s evil twin  
> -no relations  
> -horizontal scaling by sharding one big server into many tiny shard servers  
> -base instead of acid  
> **Basic Availability;** spread data over many clusters to increase availability  
> **Soft-state;**  
> values can change over time  
> **Eventual consistency;**  
> no immediate consistency but we’ll get there
![[Untitled 10 4.png|Untitled 10 4.png]]
friends notes:
[[notes/Y1Q3_Information and Data Management/IDM/IDM|IDM]]
#### take notes during lectures
|Note|Chronological Lecture #|Legacy Lecture #|word count|
|---|---|---|---|
|[[Query Processing I]]||8|243|
|[[Query Processing II]]||9||
|[[Transactions & Currency control]]||10-11|320|
|[[Recovery & Distributed Transaction]]||12|189|
|[[notes/Y1Q3_Information and Data Management/take notes during lectures/Untitled\|Untitled]]||||