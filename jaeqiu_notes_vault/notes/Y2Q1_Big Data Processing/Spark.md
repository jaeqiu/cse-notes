Spark RDD functions
- reduce
- fold
- aggregate
- mapPartitions

Spark Fault-Tolerance relies on RDD immutability to prevent inconsistencies across partitions, as recomputing will be idempotent and reliable

Spark uses RDD lineage to track transformations applied unto RDDs, to determine what needs to be recomputed

Spark can recover from worker-node fialures, without restating the entire app

Shuffling
distributing data across partitions
+ 