![[Pasted image 20241101171340.png]]

```' Example for Submit

@startuml

title "Partial class diagram for Submit"

class Assignment <<entity>> {

  <<id>> assignmentId : long

  submissions : List<Submission>

  script : Script

}

  

class Group <<entity>> {

  <<id>> groupNr : long

  members : List<User>

}

  

class Course <<entity>> {

  <<id>> courseCode : String

  assignments : List<Assignment>

}

  

class Script <<entity>> {

  <<id>> scriptId : String

}

  

class User <<entity>> {

  <<id>> netid : String

}

  

class Submission <<entity>> {

  <<id>> submissionId : long

  group : Group

}

  

note top of User

  From the previous exercise this can be a TA or Student

end note

  
  

@enduml