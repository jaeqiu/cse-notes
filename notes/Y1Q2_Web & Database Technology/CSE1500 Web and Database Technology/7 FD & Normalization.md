Good database design

- redundancy is minimized
- modification anomalies are prevented by design
    
    - i.e. using keys and foreign keys
- good designs should match characteristics of the used RDBMS
 
Decomposing -> from one relation to a set of smaller relations  
Good decompositions have to be reversible

- the information in the new tables are the same as the previous table
- lossless
 
Normalization -> replace relations in relation schema S by lossless decompositions
 
Functional dependencies  
let X and Y be some sets of attrbiutes  
if Y functionally depends on X, and two tuples agree on their X values,  
then they also have to agree on their Y values

![Exported image](../../../attachments/Exported%20image%2020241209225236-0.png)  

FD X -> Y  
X = determinant  
Y = dependant
 
Some FDs are implied by others  
Some FDs are trivial

- iff X is a superset of Y
- e.g. {province} -> ∅
 
Closure of F -> F+

- set of all FDs that are logically implied by F
 
Armstrong's axioms:

![Exported image](../../../attachments/Exported%20image%2020241209225236-1.png)

and more additional derived rules:

![Exported image](../../../attachments/Exported%20image%2020241209225237-2.png)   
How to come up with FDs?

- Based on domain knowledge
- Based on an explicit model
- Based on existing data
 
Normalization

- finding lossless decompositions
- only decompose if relation schema is of bad quality
 
Part of schema design process: choose desired normal form to convert schema into
 
Seven normal forms

- 1NF
- 2NF
- 3NF
- CNF
- 4NF
- 5NF
- 6NF
 ![Exported image](../../../attachments/Exported%20image%2020241209225241-3.png)  
 
higher number

- stricter requirements
- less anomalies & redundancy
- better design quality
 
1NF:

- value of attribute = atomic
- multi-valued attributes must be normalized
    
    1. introduce new relation
    2. replicating tuple for each multi-value
    3. introduce own attribute for each value
 
2NF:

- 1NF
- no non-key attributes are functionally dependent on proper subsets of any candidate key
    
    - only a problem with composite keys
- 2NF is violated if there is a composite key and some non-key attribute depends only on a proper subset of this composite key
 
3NF:

- 2NF
- all non-key attributes are determined only by the candidate key
- relies on concept of transitivity
    
    - If X -> Z has been created by X -> Y and Y -> Z, normalization into 3NF is archived by decomposition according to Y -> Z
- most used