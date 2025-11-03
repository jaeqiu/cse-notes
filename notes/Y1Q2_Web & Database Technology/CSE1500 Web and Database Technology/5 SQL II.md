using char instead of varchar -> easier to find within database
 
Create Table:  
CREATE TABLE tablename (  
attribute1 int,  
attribute2 varchar(100) NOT NULL,  
CONSTRAINT constraint_name PRIMARY KEY (attribute1) -- comment  
);
 
If you have a single-column primary key, you can use:  
attribute 1 int PRIMARY KEY,  
Instead of:  
CONSTRAINT constraint_name PRIMARY KEY (attribute1)
 
(use int for identifiers)
 
Unique:  
attribute1 varchar(100) UNIQUE -- attribute1 is unique but not PK
 
Foreign Keys:  
foreignattribute int REFERENCES table2(attribute),
 
Precise decimal numbers:  
atttribute1 NUMERIC(1, 1),  
(don't use floating point)
 
Insert rows:  
INSERT INTO tablename  
VALUES (1500, 'WDT'), (1505, 'IDM');
 
Joining tables

- a join combines tuples from one relation R1 with the matching tuples of another relation R2
- used to combine rows from tables based on a related column between them
- LEFT JOIN: even if there's no overlap
 
SELECT * FROM table1 t1 JOIN table2 t2  
ON t1.attribute1 = t2.attribute;
 
Aggregate

- COUNT
- SUM
- MIN
- MAX
- AVG 
SELECT COUNT(*)
   

Group by:  
GROUP BY attribute1, attribute2  
(postgres makes you group by all attributes you want to display)
 
Testing inequalities:  
HAVING AVG(attribute)>=8
   

////////
 
Data Quality
 
Typical issues:

- missing data
- wrong data / outliers
- "weird features"
- inconsistent data
- schema mismatches