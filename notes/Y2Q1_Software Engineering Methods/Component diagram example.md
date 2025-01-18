![Pasted image 20241101171658.png](../../attachments/Pasted%20image%2020241101171658.png)
```plantuml
' Queue

  

@startuml

title Example component diagram for a subset of Queue

  

' This diagram simplifies the structure, as the main purpose of the component diagram is to

' give a higher level overview of the system. Every component like Session, Person, etc. has:

' - Model (holds basic information, only getters/setters)

' - Repository (methods for loading models from database),

' - Service (methods to work with model)

' - (Optionally) Cache (keeps models / Data Transfer Objects cached on application side)

' We model here only the part that the service provides.

  

' We model the pages where you can make a request / see details of your current request

' and the page where TAs grab requests as starting points

component RequestPages <<UI>>

  

component RequestService

component LabService

  

' Some components live in Labracore

component LabraCore {

  component PersonService

  component SessionService

  component AssignmentService

  

  interface "Person Details"

  interface "Session Details"

  interface "Assignment Details"

  

  PersonService --() "Person Details"

  SessionService --() "Session Details"

  AssignmentService --() "Assignment Details"

}

  

RequestService --() "Create Request"

RequestService --() "Request Details"

RequestService --() "Take Request"

RequestService --( "Lab Details"

RequestService --( "Queued Requests"

  

LabService --() "Lab Details"

LabService --() "Queued Requests"

LabService --( "Assignment Details"

LabService --( "Session Details"

LabService --( "Person Details"

  

RequestPages --( "Create Request"

RequestPages --( "Request Details"

RequestPages --( "Take Request"

  

@enduml```
