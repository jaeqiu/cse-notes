Map/Mapping similar to R&L functions

- map some value (key) to some other value
- in programming: variables
 ![Exported image](../../../attachments/Exported%20image%2020241209225415-0.png)   
//////////
 
Hashing

- calculating some integer from a name
 
Hash Functions

- disperse the keys in an apparently random way
 
hashCode: key -> int  
compress: int -> [0, N-1]
 
Collision handling:

- Seperate chaining
    
    - have a secondary container/map in each bucket
- Open addressing
    
    - reuse other free buckets when collisions occur
   

/////////
 
Hash map
 
Get, Put, Remove: Time O(1)  
Not really sorted -> Sorting gives suboptimal time complexities
 
Improvement -> search trees