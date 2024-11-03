UML Knowledge
![[Pasted image 20241031142127.png]]
plantuml syntax and various uml diagrams

# [[UML Use Case Diagram]]

|                                      | Looks like                | Use Case                                    |
| ------------------------------------ | ------------------------- | ------------------------------------------- |
| ![[Pasted image 20241102194731.png]] | circle                    | Use case                                    |
| ![[Pasted image 20241102194740.png]] | stickman                  | Actor                                       |
| ![[Pasted image 20241102194745.png]] | line                      | Association                                 |
| ![[Pasted image 20241102194752.png]] | hollow arrow              | Generalization                              |
| ![[Pasted image 20241102194808.png]] | dashed arrow <\<extend>>  | Extend (self=optional functionality         |
| ![[Pasted image 20241102194816.png]] | dashed arrow <\<include>> | Include (pointed=\=mandatory functionality) |
| ![[Pasted image 20241103135031.png]] | box with title            | package                                     |
| ![[Pasted image 20241103135115.png]] | rectangle                 | rectangle                                   |

# [[UML Component Diagram]]
# [[UML Sequence Diagram]]


|                                      | Looks like                            | Sequence                 |
| ------------------------------------ | ------------------------------------- | ------------------------ |
| ![[Pasted image 20241102195543.png]] | dashed arrow                          | Response Message         |
| ![[Pasted image 20241102195651.png]] | vertical dashes                       | Object/Actor Lifeline    |
| ![[Pasted image 20241102210443.png]] | cross on vertical dashes              | Object/Actor Destruction |
| ![[Pasted image 20241102210525.png]] | box with title and subtitle           | Control Construct        |
| ![[Pasted image 20241102195502.png]] | solid arrow                           | Synchronous Message      |

# [[UML Activity Diagram]]


|                                      | Looks like                            | Activity    |
| ------------------------------------ | ------------------------------------- | ----------- |
| ![[Pasted image 20241102211235.png]] | dot                                   | Init node   |
| ![[Pasted image 20241102210824.png]] | rectangle                             | Object node |
| ![[Pasted image 20241102212546.png]] | arrow                                 | Edge        |
| ![[Pasted image 20241102210833.png]] | round rectangle                       | Action node |
| ![[Pasted image 20241102212904.png]] | decision diamond to alternative paths | Decision    |
| ![[Pasted image 20241102212915.png]] | alternative paths to diamond          | Merge       |
| ![[Pasted image 20241102212918.png]] | execution path spawns more            | Parallelize |
| ![[Pasted image 20241102212920.png]] | many execution paths sync to one      | Sync        |
| ![[Pasted image 20241102212922.png]] | dot in circle                         | Final node  |

# [[UML Class Diagram]]

|                                      | Looks like           | Class                                                                          |
| ------------------------------------ | -------------------- | ------------------------------------------------------------------------------ |
| ![[Pasted image 20241102214024.png]] | rectangle            | Class                                                                          |
| ![[Pasted image 20241102220407.png]] | line                 | Relationship                                                                   |
| ![[Pasted image 20241102220419.png]] | solid diamond arrow  | Composition = Strong aggregation = A is part of B, deletion of B cascades to A |
| ![[Pasted image 20241102220424.png]] | hollow diamond arrow | (weak) shared aggregation = A is part of B, deletion of B independent of A     |
| ![[Pasted image 20241102220431.png]] | hollow arrow         | Generalization: Subclass A extends B                                           |
| ![[Pasted image 20241102220439.png]] | dotted arrow         | Implementation A extends interface B                                           |
|                                      |                      |                                                                                |
