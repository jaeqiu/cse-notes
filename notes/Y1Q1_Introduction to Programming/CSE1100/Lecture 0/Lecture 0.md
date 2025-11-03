---
Week Number: "1.1"
Desciption: Introduction, First Steps
Cues: Data Types, Integer Overflow
Slides: https://brightspace.tudelft.nl/d2l/le/content/595284/viewContent/3471900/View
Slides 2: https://brightspace.tudelft.nl/d2l/le/content/595284/viewContent/3236121/View
Created: 2024-09-20T20:36
---
# Course Path
Basics and Building Blocks → Objects & OOP → Building Useful Software → Advanced Features
# Data Types
|   |   |   |   |
|---|---|---|---|
||Primitive Data Types|Reference Data Types|Comment|
|Properties||||
||simple|complex||
||made for speed|made for objects||
||limited to 8|more can be created||
||fully lowercase|starts with capital||
|List||||
|>Boolean|boolean|String|true or false|
|>Integer|byte||-128 until 127|
|>Integer|short||-32786 until 32767|
|>Integer|int (!)||-2147483648 to 2147483647|
|>Integer|long||-9223372036854775808 to  <br>9223372036854775807|
|>Real number|float||+/- 1.4 * 10^-45 to 3.4 * 10^38|
|>Real number|double (!)||+/- 4.9 * 10^-324 to 1.8 * 10^308|
|>Character|char||Unicode character set|
# Integer Overflow
The leftmost bit represents a negative.  
Counting in binary follows from right to left.  
The leftmost bit acts as a ceiling, in which reaching it through counting makes the entire value negative.
This outcome is unintended, and named a value overflow
  
# Software
Java Open JDK
Jetbrains IntelliJ IDEA
  
# Declaring and Populating Memory
```Java
//examples
	//example 1
		double length = 2.34;
		char letter = 'd';
		boolean f = false;
		String text = "abc";
	//example 2
		// Say hello
		String name = "John";
		String salutation = "Hello, " + name;
		System.out.println(salutation);
		
		// Calculate the area
		double width = 3.25;
		double height = 2.1;
		double area = width * height;
		System.out.println("The area is " + area);
		
		// Calculate the number of passing students
		int numberOfStudents = 500 + 20;
		double passingRate = 0.67;
		int numberOfPassingStudents =
		(int) (passingRate * numberOfStudents);
		System.out.println("The number of passing students"
		+ " might be " + numberOfPassingStudents);
//theory
	int number; //Declaration
	number = 45; //Assigning a Value
	int number = 45; //This combines both
```
  
# Converting Data Types into One Another
A Type Cast is used to convert the outcome of a certain function in the desired data type:
![Untitled 107.png](../../../../attachments/Untitled%20107.png)
![Untitled 1 11.png](../../../../attachments/Untitled%201%2011.png)
# Operators
Concatenation work on Strings by attaching them together ( “Hello” + “Kitty” = “GoodMorning”)
![Untitled 2 11.png](../../../../attachments/Untitled%202%2011.png)
![Untitled 3 11.png](../../../../attachments/Untitled%203%2011.png)
![Untitled 4 10.png](../../../../attachments/Untitled%204%2010.png)
![Untitled 5 10.png](../../../../attachments/Untitled%205%2010.png)
# Cues (Reproduce All Knowledge With Only These)
![Untitled 6 10.png](../../../../attachments/Untitled%206%2010.png)
# Sneak Peak
  
![Untitled 7 10.png](../../../../attachments/Untitled%207%2010.png)