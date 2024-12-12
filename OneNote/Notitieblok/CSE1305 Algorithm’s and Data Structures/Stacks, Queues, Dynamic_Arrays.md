Learning Objective: Which kind of data structure for what use cases?
 
We can choose between:

- Array
- Linked List
- Queue
- Deque
- Stack  
Queue vs Deque:  
Similarly to a Queue, a Deque element can only be removed from a side, not from the middle of the deque.  
A deque is different from a queue in that elements can be inserted/removed from/to a deque from either side, instead of from a dedicated front/end of the queue.
 
What is the order of removal for those?  
Array (not applicable)  
Linked List (not applicable)  
Queue FIFO  
Deque (special removal order)  
Stack LIFO
 
What is a Dynamic array?  
As opposed to a static array, a dynamic array can automatically resize  
, whereas a static array is bound to the size declared.
 
Exam Question midterm 19-20:  
Consider that an operation without array resizing in a given data structure takes O(log2n) time, where n is the number of elements. The data structure is implemented using a dynamic array that grows when needed by adding n/2 extra positions. What is the tightest worst case time complexity of performing the mentioned operation n times?  
O( n*2log(n) )