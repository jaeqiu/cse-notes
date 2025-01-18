---
Course Name: "Object Oriented Programming "
Course Code: "CSE1100 "
Course Timing: Y1Q1
Course Status: completed
Last edited time: 2025-01-07T16:47
---
![Untitled.png](../../attachments/Untitled.png)
#### CSE1100
|Desciption|Cues|Week Number|Lecture Count|
|---|---|---|---|
|Container Classes||1.2|[Lecture 5](CSE1100/Lecture%205.md)|
|Arrays||1.2|[notes/Y1Q1\_Introduction to Programming/CSE1100/Lecture 4](CSE1100/Lecture%204.md)|
|Programming Structures|Type cast, bitwise vs boolean operators|1.1|[notes/Y1Q1\_Introduction to Programming/CSE1100/Lecture 1](CSE1100/Lecture%201.md)|
|Methods|Parts of a Class, Method|1.1|[notes/Y1Q1\_Introduction to Programming/CSE1100/Lecture 2](CSE1100/Lecture%202.md)|
|Classes|QUIZ INSIDE|1.2|[notes/Y1Q1\_Introduction to Programming/CSE1100/Lecture 3/Lecture 3](CSE1100/Lecture%203/Lecture%203.md)|
|Container Classes, Class Composition, Packages||1.3|[Lecture 6](CSE1100/Lecture%206.md)|
|Introduction, First Steps|Data Types, Integer Overflow|1.1|[notes/Y1Q1\_Introduction to Programming/CSE1100/Lecture 0/Lecture 0](CSE1100/Lecture%200/Lecture%200.md)|
  
  
# Library
## Failures
always use .equals() when comparing strings. it is a reference type
### variable shadowing
As you can see, the method attribute takes unintended precedence over the object attribute y, which causes the constructor method to fail setting y to the given attributes.
![Untitled 1.png](../../attachments/Untitled%201.png)
At the level of identifiers, this is called name masking, an identifier is the name we give to variables for personal usage
  
# Cues
![Untitled 2.png](../../attachments/Untitled%202.png)
![Untitled 3.png](../../attachments/Untitled%203.png)
![Untitled 4.png](../../attachments/Untitled%204.png)
![Untitled 5.png](../../attachments/Untitled%205.png)
So it's like super(a1) in a subclass constructor,  
tells java to process the parameters a1,  
as it would be in the superclass  
and then a constructor with no parameters is optionally defined,  
but if you leave it out you make sure the superclass does have a defined constructor with no parameters?  
and in a subclass, if you want to call, from the superclass,  
the defined-constructor-with-no-parameters, then you can (but don't need to)  
write super() in the subclass-constructor?  
![Untitled 6.png](../../attachments/Untitled%206.png)
![Untitled 7.png](../../attachments/Untitled%207.png)