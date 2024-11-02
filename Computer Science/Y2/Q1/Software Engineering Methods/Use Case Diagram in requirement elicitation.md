Use a low-detail UML use case diagram to communicate with stakeholders (discuss the actors, features and missing interactions)![[Pasted image 20241027155803.png]]![[Pasted image 20241027160753.png]]
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