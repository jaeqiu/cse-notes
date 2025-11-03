Use a low-detail UML use case diagram to communicate with stakeholders (discuss the actors, features and missing interactions)

|                                      | Looks like                            | Use Case                                    |
| ------------------------------------ | ------------------------------------- | ------------------------------------------- |
| ![Pasted image 20241102194731.png](../../attachments/Pasted%20image%2020241102194731.png) | circle                                | Use case                                    |
| ![Pasted image 20241102194740.png](../../attachments/Pasted%20image%2020241102194740.png) | stickman                              | Actor                                       |
| ![Pasted image 20241102194745.png](../../attachments/Pasted%20image%2020241102194745.png) | line                                  | Association                                 |
| ![Pasted image 20241102194752.png](../../attachments/Pasted%20image%2020241102194752.png) | hollow arrow                          | Generalization                              |
| ![Pasted image 20241102194808.png](../../attachments/Pasted%20image%2020241102194808.png) | dashed arrow <\<extend>>              | Extend (self=optional functionality         |
| ![Pasted image 20241102194816.png](../../attachments/Pasted%20image%2020241102194816.png) | dashed arrow <\<include>>             | Include (pointed=\=mandatory functionality) |

![Pasted image 20241027155803.png](../../attachments/Pasted%20image%2020241027155803.png)![Pasted image 20241027160753.png](../../attachments/Pasted%20image%2020241027160753.png)
plantuml:
```
left to right direction
'comment
skinparam actorStyle awesome

(feature) as f1
(feature2) as f2

:client: -left-> f1
:client: -right-> f1
:server: -up-> f1
:server: -down-> f2

newpage
'default
top to bottom direction
(feature3) as f3

:wowowow: -> f3
```