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
[LCOM Lack of Cohesion of Methods](LCOM%20Lack%20of%20Cohesion%20of%20Methods.md)
[Connectivity metric](Connectivity%20metric.md)
solved by:
[Extract Class Refactoring](Extract%20Class%20Refactoring.md)

Long param list: method with too many params
detected by :
\#params
solved by:
[Introduce Parameter Object](Introduce%20Parameter%20Object.md)

Coupling: method uses other class's methods a lot.
[Feature Envy](Feature%20Envy.md)
detected by :
[CBO Coupling Between Objects](CBO%20Coupling%20Between%20Objects.md)
[MPC Message Passing Coupling](MPC%20Message%20Passing%20Coupling.md)
solved by:
[Move Method Refactoring](Move%20Method%20Refactoring.md)

Coupled Classes: classes accessing each others internal fields
[Feature Envy](Feature%20Envy.md)
detected by:
[CBO Coupling Between Objects](CBO%20Coupling%20Between%20Objects.md)
[DIT Depth of Inheritance Tree](DIT%20Depth%20of%20Inheritance%20Tree.md)
[NOC Number of Children](NOC%20Number%20of%20Children.md)
solved by:
[Move Method Refactoring](Move%20Method%20Refactoring.md)
[Extract Class Refactoring](Extract%20Class%20Refactoring.md) (if overlapping interests)
[Replace Delegate with Inheritance](Replace%20Delegate%20with%20Inheritance.md)

Switch Statements: violates OCP because existing conditions are NOT closed for modification
detected by:
a switch statement
solved by:
[Replace Conditional with Polymorphism](Replace%20Conditional%20with%20Polymorphism.md)
