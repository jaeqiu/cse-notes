Three ways to scale an app:
+ X-axis scaling: processing clones
+ Y-axis scaling: functional [Microservices](Microservices.md)
+ Z-axis scaling: data partitions
![500](../../attachments/Pasted%20image%2020241031170753.png)

In order to reduce the load on a system with y and z scaling (multiple services, distributed data) we can:
+ reduce \#requests by caching api responses
+ caching idempotent-called resources like pages in Redis