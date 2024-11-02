Feature Envy: a method in once class accesses the methods/fields of another class more often than its own. This is unmaintainable and unclear

metrics
+ Cyclomatic Complexity: e-n+2p, shows complexity, indicates testability
+ Coupling between objects: A highly coupled class relies so heavily on another class that it becomes difficult for it to function or evolve independently (methods overrely on the class u depend on)
+ Message Passing Coupling: how objects call each others methods instead of accessing fields
+ Lack of cohesion of methods (spots bad SRP)
	+ number of random method pairs - number of related method pairs (a method relates to another method if they both somehow use a common field)
+ Connectivity metric


Cruft: clogging up a codebase with inefficient and unnecessary code because you want quick fixes over long-lasting lightweight performance