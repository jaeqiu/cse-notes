## 1. Big data

- Why is big data important?Analyzes vast data for insights.
- What do the 3Vs of big data mean?Volume, velocity, variety
- What is the ETL cycle?Extract, transform, load data.
- What is the difference between stream and batch processing?Stream processes continuously; batch processes in chunks.

## 2. Functional programming

- What is the essence of FP?Functions as first-class citizens.
- What does f(x:A,y:[B])→C mean?Function of type A and list B to C.
- Why is lazyness a virtue in BDP?Efficient resource usage, avoids unnecessary computations.
- What is a monad and what is it used for?Structure for handling side effects.
- How can we exploit immutability?Safe concurrent programming, easier reasoning.

## 3. Data processing with FP

- What is the difference between element-wise and aggregation operations?Element-wise applies to each element; aggregation combines results.
- What is the function signature for `foldL`?
- What is the difference between `reduceL` and `reduceR`?
- How can we implement `map`, `filter`, `zip` etc with `reduce`?
- How can we implement a `join` between KV pairs?
- (How) Can we re-write an SQL query with FP primitives?

## 4. Unix

- What is a pipe(-line)?
- Which `map`-like operations does Unix support?
- Which `reduce`-like operations does Unix support?
- How can we:
    - Find all files that contain a pattern?
    - Process data as they come?
    - Compare file contents?
    - Run commands in parallel?

## 5. Distributed systems

- What is the key difference between distributed and parallel systems?
- What are the key problems with distributed systems?
- What are logical clocks?
- What are the differences between Lamport clocks and vector clocks?
- How do we make decisions in distributed settings?
- How does Paxos protocol work?
- How does Raft protocol work?
- What is Byzantine fault tolerance?

## 6. Distributed databases and filesystems

- Why do we need to replicate data?
- What are the most common replication architectures?
- Why do we need to partition datasets?
- What is the CAP theorem?
- What are the different consistency models?
- What is causal consistency?
- What is sequential consistency and what is linearisability?
- What are ACID transactions?
- What are the most common transaction isolation levels?
- How does GFS and HDFS differ from traditional databases?
- How does GFS or HDFS store a file?
- How does GFS or HDFS handle read/write requests?

## 7. Spark

- What are Spark RDDs? Why was Spark so revolutionary?
- What is the difference between RDDs and Pair RDDs? Why do we need both?
- What are the key Spark API calls?
- What are Spark transformations or actions?
- What are wide and narrow dependencies?
- How does Spark deal with faults?
- What types of partitioning can we employ for dist systems like Spark?
- How does Catalyst optimize queries?

## 8. Stream processing

- When is a problem a data streaming problem?
- Why do we need streaming windows?
- What types of windows do we get with stream processing?
- What is the difference between event, processing and ingestion time?
- What is the difference between microbatching and stream processing?
- What is the problem with state in streaming systems?
- How can we disseminate events from producers to consumers?
- How do we take consistent snapshots?

## 9. Graph processing

- How can we traverse a graph stored in an SQL database?
- What is a graph database?
- What is the bulk synchronous parallel model?
- How does Pregel implement the BSP model?