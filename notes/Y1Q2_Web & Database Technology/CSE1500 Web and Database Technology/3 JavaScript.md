JavaScript

- Makes webpages interactive
    
    - interactions
    - clickable buttons
    - (complex) animations
- Dynamic, interpreted, weakly typed and cross-platform language
- Server-side JS (Node.js) allows you to add more functionality than downloading files
 
Compiled

- Code is pre-compiled (from source code to machine code)

Interpreted

- Code is not pre-compiled
- Interpreter executes code line by line
 
Cross-platform

- runs on any machine with JavaScript Engine
    
    - e.g. V8 for Chrome
 
Weakly Typed

- less programming effort
- may produce errors that are difficult to find/debug
   

///////////
 
Variables can be declared

1. automatically
2. using 'var'
3. using 'let'
4. using 'const'
 
In modern JS, it's recommended to use **let** and **const** over var, due to their more  
predictable scoping behavior and the ability to catch certain types of errors at compile time.
 
Use **let** for variables that may be reassigned.  
Use **const** for constant variables (reassigning gives an error)

- when objects are declared with const, the reference is constant, but properties of the object can be modified
 
Some rules for defining variable names:

1. Names are case sensitive (y and Y are different variables).
2. Names must begin with a letter.
3. Names can contain letters, digits, underscores, and dollar signs.
 
Variables declared with **let** and **const** are block-scoped

- only accessible within block (e.g. within curly braces)
- cannot be accessed from outside block
- **var** variables can be accessed outside block
   

//////////
 
Data Types

- Number
    
    - let length = 16;
- String
    
    - let colour = "Yellow";
    - let lastName = 'Johnson';
- Boolean
 
Data Types are dynamic  
let x; // x is undefined  
x = 5; // x is now a Number  
x = "Name"; // x is now a String
 
Output to console:  
console.log(...);
 
Get Type of variable:  
typeof
   

//////////
 
Operators  
+ Addition  
- Subtraction  
* Multiplication  
** Exponentiation (ES2016)  
/ Division  
% Modulus (remainder after division)  
++ Increment  
-- Decrement
   

/////////
 
Comparisons

|   |   |
|---|---|
|==|equals|
|===|equals, without type conversion|
|!=|not equal, based on 'not equal value' OR 'not equal type'|
|>|bigger than|
|<|smaller than|
|>=|bigger than or equal to|
|<=|smaller than or equal to|
 
let x = 5;  
x == "5"; // returns true  
x === "5"; // returns false
 
Comparing different types

1. String will be converted to a number
2. An empty string will convert to 0.
3. A non-numeric string converts to NaN
 
Logical Operators

|   |   |
|---|---|
|&&|AND|
|\||OR|
|!(...)|NOT|
 
Ternary Operator

- a conditional operator that assigns a value to a variable based on some condition

```
variablename = (condition) ? value1:value2 

const
 
age
=
20
; 

const
 
voteable
 = (
age
 < 
18
) ? 
"Too young"
:
"Old enough"
;

console
.
log
(
voteable
); 
// Old enough




const
 
time
 = 
new
 
Date
().
getHours
();

let
 
greeting
;

if
 (
time
 < 
10
) {

 
 
greeting
 = 
"Good morning"
;

} 
else
 
if
 (
time
 < 
20
) {

 
 
greeting
 = 
"Good day"
;

} 
else
 {

 
 
greeting
 = 
"Good evening"
;

}

console
.
log
(
greeting
);



switch
(
expression
) {

 
 
 
 
case
 
n
:

 
 
 
 
 
 
code
 
block

 
 
 
 
 
 
break
;

 
 
 
 
case
 
n
:

 
 
 
 
 
 
code
 
block

 
 
 
 
 
 
break
;

 
 
 
 
default
:

 
 
 
 
 
 
default
 
code
 
block

 
 }









result
 = 
Number
(
null
);

console
.
log
(
result
); 
 
// 0





for
(
var
 
i
 = 
1
; 
i
 <= 
5
; 
i
++){

 
 
 
 
console
.
log
(
i
);

}



while
 (
i
 < 
10
) {

 
 
 
 
console
.
log
(
i
);

 
 
 
 
i
++;

 
 }





const
 
person
 = {
fname:
"John"
, 
lname:
"Doe"
, 
age:
25
}; 

let
 
txt
 = 
""
;

for
 (
let
 
x
 
in
 
person
) {

 
 
txt
 += 
person
[
x
] + 
" "
;

}


// The JavaScript for of statement loops through the values of an iterable object.

// Objects are variables too. But objects can contain many values.

const
 
cars
 = [
"BMW"
, 
"Volvo"
, 
"Mini"
];

let
 
text
 = 
""
;

for
 (
let
 
x
 
of
 
cars
) {

 
 
text
 += 
x
;

}

console
.
log
(
text
);

//We can also loop over a string

let
 
language
 = 
"JavaScript"
;

let
 
text1
 = 
""
;

for
 (
let
 
x
 
of
 
language
) {

text1
 += 
x
;

console
.
log
(
"x: "
+ 
x
 + 
" text1: "
 + 
text1
);

}

console
.
log
(
text1
);










function
functionName
parameters

//
 
code to be executed



let

const
 
x
 = 
function
 (
a
, 
b
) {
return
 
a
 * 
b
};

console
.
log
(
x
);

let
 
res
 = 
x
(
3
, 
3
);

console
.
log
(
res
);

9














```
 
const age=20;  
const voteable = (age < 18) ? "Too young":"Old enough";  
console.log(voteable); // Old enough
   

//////////
 
if-else Statements
 
const time = new Date().getHours();  
let greeting;  
if (time < 10) {  
  greeting = "Good morning";  
} else if (time < 20) {  
  greeting = "Good day";  
} else {  
  greeting = "Good evening";  
}  
console.log(greeting);
   

Switch statement
 
switch(expression) {  
    case n:  
      code block  
      break;  
    case n:  
      code block  
      break;  
    default:  
      default code block  
  }
   

/////////
 
Type conversions
 
// Number() Returns a number, converted from its argument  
// parseFloat() Parses a string and returns a floating point number  
// parseInt() Parses a string and returns an integer
   

Empty strings / null values return 0  
result = Number(null);  
console.log(result);  // 0
 
If string is invalid number, NaN will be returned
   

////////
 
for Loops
 
for(var i = 1; i <= 5; i++){  
    console.log(i);  
}
   

while Loops
 
while (i < 10) {  
    console.log(i);  
    i++;  
  }
   

do-while Loops

- Executes the code within do{...} once and then proceeds to the while loop
   

for in Loop
 
const person = {fname:"John", lname:"Doe", age:25};  
let txt = "";  
for (let x in person) {  
  txt += person[x] + " ";  
}
 
for of Loop
 
// The JavaScript for of statement loops through the values of an iterable object.  
// Objects are variables too. But objects can contain many values.
 
const cars = ["BMW", "Volvo", "Mini"];  
let text = "";  
for (let x of cars) {  
  text += x;  
}  
console.log(text);
 
//We can also loop over a string  
let language = "JavaScript";  
let text1 = "";  
for (let x of language) {  
text1 += x;  
console.log("x: "+ x + " text1: " + text1);  
}  
console.log(text1);
   

////////
 
Built-in Functions

|   |   |
|---|---|
|slice(x,y)|extracts part of a string and returns it in a new string<br><br>  <br><br>x = start index  <br>y = end index (optional)|
|charAt(x)|get char at index x|
|concat(x)|joins string with string x|
|search(x)|searches and returns index of first match of x|
|split(x)|splits string into array of substrings based on delimiter x|
 
|   |   |
|---|---|
|Math.pow(x, y)|Computes xy|
|Math.ceil(x)|Ceiling of x|
|Math.floor(x)|Floor of x|
|Math.random()|Random floating point number between 0 inclusive and 1 exclusive|
   

/////////
 
Functions
 
function functionName(parameters) {  
  // code to be executed  
}
   

Arrow Functions

- shorter function syntax

let myFunction = (a, b) => a * b;
 
const x = function (a, b) {return a * b};  
console.log(x);  
let res = x(3, 3);  
console.log(res);

> [Function: x]  

9
 ![Exported image](../../../attachments/Exported%20image%2020241209225308-0.png)   
//////////
 
Document Object Model (DOM)

- HTML DOM is a standard for how to get/change/add/delete HTML elements
- With this, JS can:
    
    1. Change all HTML elements and their attributes
    2. Change all CSS styles
    3. Remove existing HTML elements
    4. React to existing HTML events or create new ones
 ![JavaScript HTML DOM](../../../attachments/Exported%20image%2020241209225308-1.png)   
Getting access to elements in the DOM:
 
letuserIdEle = getElementById("user-id");￼  
letdivEles = getElementsByTagName("div");￼  
letnoticeEles = getElementsByClassName("notice");
   

Creating elements in the DOM:

|   |   |
|---|---|
|createElement(tag name)|creates an HTMLElement object for the HTML tag name that's supplied|
|createTextNode(data)|creates a text object, for example h1 or p. data is a string|
 
Misc methods/properties of DOM:

|   |   |
|---|---|
|innerHTML|retrieves and sets content of the tag as plain text|
|innerText|retreives and sets content in HTML format|
|addEventListener(...)|attaches an event handler to a document|
|appendChild(...)|adds a node to a parent node|
 ![Exported image](../../../attachments/Exported%20image%2020241209225309-2.png)