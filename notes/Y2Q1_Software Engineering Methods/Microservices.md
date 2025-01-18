Rearranges the application as a collection of microservices.
  

Offer encapsulation of various components.
Can be reused to make multiple applications.
Fault isolation when handling failures.

High operational overhead after the initial request.
Make the system deadlock-vulnerable.
Complex deployment and maintenance

Fallback handlers handle failed calls to other services:
+ prevents one service from bringing down the whole system
+ allows the majority of functionality to stay up
+ youtube comments might be down but watching videos shouldn't be affected

a microservices pitfalls
+ don't overrely on cache: a good cache can speed up api responses, leading the requester to think they can send excessive requests for the sake of performance. If the cache fails, this excessive load can not be handled. -> Each microservice should use request-level caching, only utilising the cache for multiple accesses within a single request, and getting the real resource once at the beginning of every request.
+ don't treat realtime requests like batch job requests: realtime requests, initiated by users are usually more important, and recognising batch jobs, like feeding the recommendation algorithm with more data, as lower priority can prevent low-priority requests from bottlenecking performance for realtime requests
![Pasted image 20241103161216.png](../../attachments/Pasted%20image%2020241103161216.png)