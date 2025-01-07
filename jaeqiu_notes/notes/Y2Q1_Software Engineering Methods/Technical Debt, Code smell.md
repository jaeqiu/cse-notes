While the quick and dirty solution got your product the market, you incur penalty later. It becomes more difficult to make adjustments to the software system.

Technical Debt snowballs: Broken windows theory; visible signs of crime encourages more crime.

Intrinsic complexity:** The essential complexity that is required to solve the problem (e.g. Big-oh time of sorting algorithms.

Additional complexity** or **cruft** is added to complete the implementation quickly. This “cruft” makes it **harder to understand and maintain the software.**

Code smells are not bugs, they are not technically incorrect and do not prevent the program from functioning (”maintainability defect” versus “functional defect”)

Maintainability defects:
+ lead to future maintainance/understanding issues
+ can lead to functional defects
+ are sometimes not worth fixing
+ can not be caught with jUnit tests.

# Code smells 
Blob code: long method with too many eloc 
detected by:
[[LCOM Lack of Cohesion of Methods]]
[[Connectivity metric]]
solved by:
[[Extract Class Refactoring]]

Long param list: method with too many params
detected by :
\#params
solved by:
[[Introduce Parameter Object]]

Coupling: method uses other class's methods a lot.
[[Feature Envy]]
detected by :
[[CBO Coupling Between Objects]]
[[MPC Message Passing Coupling]]
solved by:
[[Move Method Refactoring]]

Coupled Classes: classes accessing each others internal fields
[[Feature Envy]]
detected by:
[[CBO Coupling Between Objects]]
[[DIT Depth of Inheritance Tree]]
[[NOC Number of Children]]
solved by:
[[Move Method Refactoring]]
[[Extract Class Refactoring]] (if overlapping interests)
[[Replace Delegate with Inheritance]]

Switch Statements: violates OCP because existing conditions are NOT closed for modification
detected by:
a switch statement
solved by:
[[Replace Conditional with Polymorphism]]
