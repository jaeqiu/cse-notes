Relational model represents database as a collection of relation
 
row = tuple  
column header = attribute  
table = relation  
relation = schema + instance
 
Domain D = set of atomic values  
atomic = value in domain that is indivisible (as far as the relational model is concerned)
 
Relational Schema R, denoted by R(A1, A2, ... An)  
R = name of relation  
An = attribute
 
Populated Table = state of the relation  
table definition = schema of a relation
 
TABLE.attribute notation
 
Superkey = set of attributes that no two distinct tuples in any state r of R have the same value  
every relation has at least one default superkey (set of all its attributes)
 
Superkey has redundant attributes  
Key = has no redundancy  
Any set of attributes that includes the key is the superkey
 
Relational model may have more than one key, each of the key is called candidate key
 
If a relation has several candidate keys, one is chosen arbitrarily to be the  
primary key  
Primary key = uniquely identifies tuple, other tuples can reference it

- in general, chose smallest size