|                                   |                                                                     |
| --------------------------------- | ------------------------------------------------------------------- |
| Database                          | Collection of related data (using data model and data scheme)       |
| Database Management System (DBMS) | Software system managing database                                   |
| Data Model                        | Formal definition on how to represent data and available operations |
| Data Schemas                      | Definition of structure of a specific database                      |
 
////////
 
Data Schemas: Conceptual & Logical
 
Conceptual

- Describes all entity types and relation types to be stored in a database
 
Entity: A type of "thing" that exists in the real world  
Relation: Connections between entities  
These two can be represented in an ER diagram (Entity - Relationships)
 
Chen-ER Diagrams
 ![Exported image](Exported%20image%2020241209225232-0.png)  

n-m = many-to-many  
* = many-to-many  
(these are cardinalities)   Alternative diagrams:

- UML-Style
    
    - better in software
    - worse for drawing
 
**Conceptual model:** focus on entities and relations, high abstraction  
**Logical model:** the tables that connect everything together like an actual database
 
Logical

- Take conceptual schema, and focus on resulting relations / tables and constrains
 
////////
 
Data Models / Theory  
consists of

- Structure
- Integrity
- Manipulation
   

///////
 
Data Model: Relational Model  
Pros:

- Expressive
- Flexible (doesn't focus on specific query)
- Very fast

Cons:

- Required DBMS to manage
- Complex to use
- Complex to design
   

////////
 
Data Model: Single-Table Model

- all data as single table
- csv or excel files
 
Pros:

- Very simple
- Easily converted to files
- No DBMS required

Cons:

- Inflexible
- Schema is "flattened"
- Lot of data redundancy
   

////////
 
Data Model: Document Model

- represented as semi-structured text documents
- WebAPI and Web files
- Typically: Decide on a main entity type, and embed all its related sub-entities in a substructure
- xml or json files
 
Pros:

- Easily converted to files
- Some structure remains
- No DBMS required
- Very scalable/distributable

Cons:

- Somewhat inflexible
- Some data redundancy
   

////////
 
Most important in software design: Requirements
 
Database design models a miniworld / universe of discourse

- Restricted view on real world with respect to the problems the application should solve
 
Requirements Analysis:

- Interview users / stakeholders
- Data requirements, what kind of data is needed
- Functional requirements, describe operations performed on data
 
Functional analysis:

- Describes high-level user operations/transactions
    
    - no implementation details
 
Conceptual Design-> Conceptual Schema
 
-   
    

Logical Design - > Logical Schema
 
-   
    

Physical Design
 
-