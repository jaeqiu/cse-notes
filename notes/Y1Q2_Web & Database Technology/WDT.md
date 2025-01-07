---
Course Name: Web & Data Technology
Course Code: CSE1500
Course Timing: Y1Q2
Course Status: completed
Last edited time: 2024-09-20T20:35
---
### unimportatn yap
**What is the difference between data and information?**
![[Untitled 62.png|Untitled 62.png]]
Data lacks the necessary context to make it focused on a specific topic.
  
**What is a database?**
An organised collection of data.
  
**Data model:** 
A series which describes how I generally structure and describe data
  
**Relational model:**
The relational model is an approach to manage data, such that tuples are grouped by relations between the tuples.
  
**Schemas:**
![[Untitled 1 4.png|Untitled 1 4.png]]
_graphic on the differences between conceptual, logical and physical model designs_
**Conceptual Schema:**
purely focused on the greater outline of what we want to achieve
**Logical Schema:**
more in depth, accounting for the individual relations between tuples
**Physical Schema:**  
**(This was left out by the lecturer)**  
  
  
**What is a transaction?**
Multiple operations, done to a database, to a single goal (such as transferring starbucks credits to a friend)
For database transactions we need to adhere to the ACID principle, to prevent things like:

> [!info] Unlimited Free Boba with Computer Science  
> coding can be crazy, wacky, and even cool!  
> [https://www.youtube.com/watch?v=YSftXvy3znI](https://www.youtube.com/watch?v=YSftXvy3znI)  
where a transaction was not very ACID.
  
**What is the ACID principle?**
![[Untitled 2 4.png|Untitled 2 4.png]]
The ACID principle is used in the management of databases and the processing of transactions.
_**Atomicity:**_
The transaction happens in whole, or not at all
_**Consistency**_
The database remains consistent before and after the transaction
_**Isolation**_
Multiple transactions don’t interfere with each other because they are independent
_**Durability**_
The changes made by a transaction occur, even in the case of a system failure
### so many schemas
**Conceptual Schema:**
purely focused on the greater outline of what we want to achieve
**Logical Schema:**
more in depth, accounting for the individual relations between tuples
**Physical Schema:**  
**(This was left out by the lecturer)**  
### acid principle
atomic - done or not done  
consistency - integrity constraints are never broken by transaction  
isolation - the number of concurrent transactions does not fuck things up for any of them  
durability - the effect of a transaction is permanent, unbothered by lightning strikes and floods and black holes and stuff  
### 1nf 2nf 3nf
![[Untitled 3 4.png|Untitled 3 4.png]]
1nf
- single column attribute can’t save two things
- so no “couple” attribute with both “alice, bob” as value
- example breaks 1nf. has more than one value in cell
![[Untitled 4 4.png|Untitled 4 4.png]]
2nf
- derive non-primes by the _**entire**_ candidate key
- so no more B → C and when A B candidate key.
- example breaks 2nf. non-primes can be found by part of candidate key, instead of needing it all.
![[Untitled 5 4.png|Untitled 5 4.png]]
3nf
- direct so no more **A**→B →C to derive C from A
### disjoint generalize relation
![[Untitled 6 4.png|Untitled 6 4.png]]
every artist has to be a band or a musician and can’t be both - d for disjoint, subset symbols, double lines for total participation
### overlapping generalize relation
![[Untitled 7 4.png|Untitled 7 4.png]]
here, a musician might be any combination of the right entities, or neither, since they are not required to be anything (since it’s a single line) - o for overlapping, subset symbols, single line for partial participation in the relation
### weak entity, derived attribute, total participation
![[Untitled 8 3.png|Untitled 8 3.png]]
animal weak because animal can’t exist without adoption center - animal id attribute is derived from adoption center - double lined square for weak entity - double lines to the relation diamond for total participation -
### crow’s foot instead of n, m, 1
![[Untitled 9 3.png|Untitled 9 3.png]]
  
### if you can understand everything here you are ready to make/read an erd
![[Untitled 10 2.png|Untitled 10 2.png]]
### logical relational schema notation
![[Untitled 11 2.png|Untitled 11 2.png]]
looks like
**Relation** (**Candidate Key**, Attribute, Attribute, DerivedAttribute→OtherRelation(Key))
  
### special sql function
- LIKE ‘%World%’
    - ‘Hello World!”, “Hi World!”, “World”, “World?!?!”
- SUM(salary)
    - sum of all salaries in group
- COUNT(attr/*)  
    (if the attribute is a primary key it counts unique tuples anyway so might as well use *)  
    - count number of entries
- MAX(salary)
    - return the baller
- AVG(salary)
    - return average salary from aggregate
- MIN(salary)
    - return the albert heijn employee
- YEAR('1998/05/25 09:08')
    - 1998
- SUBSTRING(’Hello World!’, 1, 5)  
    SUBSTRINT(string, startIndex+1, resultLength)  
    - ‘Hello’ (they count from 1, not 0)
- LENGTH(’Hello’)
    - 5
  
### window function (idm level sql)

> summar y
> 
> |   |   |
> |---|---|
> |ROW_Number|It assigns the sequential rank number to each unique record.|
> |RANK|It assigns the rank number to each row in a partition. It skips the number for similar values.|
> |Dense_RANK|It assigns the rank number to each row in a partition. It does not skip the number for similar values.|
> |NTILE(N)|It divides the number of rows as per specified partition and assigns unique value in the partition.|
### ROW_NUMBER() OVER() AS alias
```SQL
SELECT Studentname,
Subject,
Marks,
ROW_NUMBER() OVER(ORDER BY Marks) RowNumber
```
![[Untitled 12 2.png|Untitled 12 2.png]]
### RANK() OVER() AS alias
```SQL
SELECT Studentname,
Subject,
Marks,
RANK() OVER(PARTITION BY Studentname ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Studentname,
Rank;
```
![[Untitled 13 2.png|Untitled 13 2.png]]
### DENSE_RANK() OVER() AS alias
```SQL
SELECT Studentname,
Subject,
Marks,
DENSE_RANK() OVER(PARTITION BY StudentName ORDER BY Marks ) Rank
FROM ExamResult
ORDER BY Studentname,
Rank;
```
![[Untitled 14 2.png|Untitled 14 2.png]]
### NTILE() OVER() AS alias
```SQL
SELECT *,
NTILE(2) OVER(PARTITION  BY subject ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY subject, rank;
```
![[Untitled 15 2.png|Untitled 15 2.png]]
  
---
### api restful principle
- Stateless
    - store nothing about client session
- Layered System
    - seperate layers: client, comms interface, storage
- Uniform Interface
    - intuitive layering for the endpoints /book/chapter/page and not /library/page
- Cacheable
    - sent-back data has to be cacheable
- Client-Server
    - clear roles of server and client as provider and recipient of data
- Code-on-Demand
    - (optional) send code to client to run
### js hoisting var, const, let
- let hoist to block scope (declaration only)
- const hoist to block scope (declaration only)
- var hoist to function scope (declaration+undefined initialisation, real init unhoisted)
### js lambda functional
```JavaScript
// Function with no parameters
const greet = () => 'Hello';
// Function with one parameter
const double = n => n * 2;
// Function with two parameters
const add = (x, y) => x + y;
// Function with a multiline body
const processData = (data) => {
    console.log('Processing data...');
    const processed = data.map(item => item * 2); // Implicit return
    return processed;
};
// Returning an object
const createPerson = (name, age) => ({
    name: name,
    age: age
});
// Example usage
console.log(greet());             // "Hello"
console.log(double(3));           // 6
console.log(add(5, 7));           // 12
console.log(processData([1, 2, 3])); // Logs "Processing data..." and returns [2, 4, 6]
console.log(createPerson('Alice', 30)); // { name: 'Alice', age: 30 }
```
### css flexbox

> [!info] A Complete Guide to Flexbox | CSS-Tricks  
> Our comprehensive guide to CSS flexbox layout.  
> [https://css-tricks.com/snippets/css/a-guide-to-flexbox/](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)  
- display: flex; start
- flex-direction: row, row-reverse, column, column-reverse
- justify-content: flex-start, flex-end, center, space-between, space-around, space-evenly (spacing of elements along main axis)
### middleware
![[Untitled 16 2.png|Untitled 16 2.png]]
middleware is chain step by step
### express.js model-view-controller
- model data structure
- view ui
- controller connection between model and view
### react.js
### soap protocol
### js bind vs call method