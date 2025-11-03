#### UML Activity Diagram
u need to be able to read this but not make this
  Useful for eliciting requirements and implementing functionalities:

  - Highlights functions.
  - Not useful for designing architecture.

  ![Pasted image 20241024145712.png](../../attachments/Pasted%20image%2020241024145712.png)
  ![Pasted image 20241024145719.png](../../attachments/Pasted%20image%2020241024145719.png)


|                                      | Looks like                            | Activity    |
| ------------------------------------ | ------------------------------------- | ----------- |
| ![Pasted image 20241102211235.png](../../attachments/Pasted%20image%2020241102211235.png) | dot                                   | Init node   |
| ![Pasted image 20241102210824.png](../../attachments/Pasted%20image%2020241102210824.png) | rectangle                             | Object node |
| ![Pasted image 20241102212546.png](../../attachments/Pasted%20image%2020241102212546.png) | arrow                                 | Edge        |
| ![Pasted image 20241102210833.png](../../attachments/Pasted%20image%2020241102210833.png) | round rectangle                       | Action node |
| ![Pasted image 20241102212904.png](../../attachments/Pasted%20image%2020241102212904.png) | decision diamond to alternative paths | Decision    |
| ![Pasted image 20241102212915.png](../../attachments/Pasted%20image%2020241102212915.png) | alternative paths to diamond          | Merge       |
| ![Pasted image 20241102212918.png](../../attachments/Pasted%20image%2020241102212918.png) | execution path spawns more            | Parallelize |
| ![Pasted image 20241102212920.png](../../attachments/Pasted%20image%2020241102212920.png) | many execution paths sync to one      | Sync        |
| ![Pasted image 20241102212922.png](../../attachments/Pasted%20image%2020241102212922.png) | dot in circle                         | Final node  |