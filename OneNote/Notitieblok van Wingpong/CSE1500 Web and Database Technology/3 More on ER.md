Common Mistakes

- No Primary Key
- No relation symbol or name
- Modelling functionality as data
    
    - Review - Post - Facebook
- Model not suitable for task
- Schemas might not work the way you think
- Primary Key doesn't make sense
 
EER: Extended Entity-Relationship
 
Primary Keys are manually selected from Candidate Keys  
Candidate Keys are results of Functional Dependencies

- i.e. which attributes define others
 
Conversion from ER

- after modeling conceptual schema, schema can (semi) automatically transformed into relational schema
- n to m relation -> seperate relation schema
    
    - primary key defined by the two foreign keys
    - don't give it an id! = bad performance
- 1 to m relation -> m side gets foreign key
- 1 to 1 relation -> choose one side to get relation type
- weak entity -> Follow identifying relationship and inherit respective foreign keys
 
Conceptual Schema

- Which entities should be stored
- what are their properties
- how are they related?
 
(Relational) Logical Schema

- Which relations should exist?
- Which attributes do they have?
- What are the domains?
- What constraints should hold?
 
Physical Schema

- Where and how to store relations
- what to index
- what meta-data/statistics to collect