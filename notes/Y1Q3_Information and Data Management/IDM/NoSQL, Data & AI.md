> Exam questions : Argue about …, Linked to CAP Theorem, No calculations
  

> [!important] NoSQL - DB that is not using the relational model.
  
Aggregated data models video ==WATCH==
No aggegates:
- Relationships expressed by foreign key constraint
- using joins → costs performance, very flexible
aggregates:

> no joining needed. easier distribution of data accross machines. easier replication and redundancy.
- all in 1 row → 1NF
keyvalue models:
- deal with aggregated data structure, identified by an ID
- only the key is known to db
- the structure of value is unknown

> “Retrieve object with id 1”  
> – “Store all this data as  
> object 1  
document centric store:
- transparent aggregates
- structure known during query time

> – “Retrieve all customers  
> with shipping address city  
> in Chicago”  
> – “Update price of all  
> products in orders in  
> customers with id 27”  
wide-columnar stores:
- huge sparse table
- transactions usually cover a single row (aggregate)
**SOA**
- functionality exposed via web services.
- complex workflow composed by combining web services
**Cloud Storage**

> solves problem that traditional storage solution could not keep up with high demand , throughput, latency and storage space.
  
**Distributed databases**
- limited calling, rarely over 50 nodes
- increase performance due to parallelization
- scalable storage capacity
- high hardware costs → specialized and reliable
Homogenous DD:
- each node controlled by same ddbms
- nodes linked via slow WAN
- example: db over several branches in company.
parallel DD:
- each node controlled by same ddbms
- linked via high-speed LAN
- example high performance data center