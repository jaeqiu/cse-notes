![Pasted image 20241101170845.png](../../attachments/Pasted%20image%2020241101170845.png)
```@startuml

' NOTE: We also show a less detailed version below.

title "Queue domain relations - Detailed"

class RequestQueue {

  requests : Queue<Request>

  enqueue(Request) : void

  forward(Request) : void

  getNext() : Request

}

note right of RequestQueue

  In this model, RequestQueue could easily be made part of Lab!

  Here, it is separate to more clearly correspond to the relations

  in the previous exercise.

end note

class Request {

  requestor : Student

  question : String

  approvalStatus : ApprovalStatus

  ta : TA

  feedback : Feedback

  handle(ApprovalStatus, TA) : void

  giveFeedback(Feedback) : void

}

class Lab {

  edition : Edition

  queue : RequestQueue

  resolvedRequests : List<Request>

  start : DateTime

  end : DateTime

  addResolvedRequest(Request) : void

}

class Edition {

  year : AcademicYear

  tas : List<TA>

  students : List<Student>

  labs : List<Lab>

  addTA(TA) : void

  removeTA(TA) : boolean

  enrol(Student) : void

  addLab(Lab) : void

  feedbackForTA(TA) : List<Feedback>

}

class Course {

  responsibleLecturer : Lecturer

  courseCode : String

  editions : List<Edition>

}

class Lecturer

class Student

class TA

class Feedback {

  Score : int

  feedbackText : String

}

  

RequestQueue "1" --> "*" Request : enqueued in <

Lab "1" --> "*" Request : stores >

Request "1" --> "0..1" Feedback : has >

Lab "1" *--> "1" RequestQueue : has >

Lab "*" --> "1" Edition : belongs to >

Course "1" *--> "*" Edition: belongs to <

Edition "*" --> "*" Student: enrolled in <

Request "*" --> "1" Student: creates, gives feedback <

Edition "*" --> "*" TA: TAs for, views feedback <

Request "*" --> "0..1" TA: handled by >

Course "*" --> "1" Lecturer: manages <

  

'Potentially, you could also include the following relations, though these aren't obvious from the data.

'Lecturer -- Edition: adds lab, adds and removes TA >

'TA -- RequestQueue : takes request from, forwards >

'Student -- RequestQueue : enqueues >

  

/'

title "Queue Domain Relations - Simplified"

class Queue as "Queue (session)"

class Request

class Lab

class Edition

class Course

class Lecturer

class Student

class TA

class Feedback

  

Queue o--  Request : contains >

TA -- Queue : takes request from >

Lab o-- Queue : has >

Lab o-- Edition : has >

Course o-- Edition: belongs to >

Lecturer -- Course:  manages >

Lecturer -- Lab: creates >

Lecturer -- Edition: creates >

Student -- Edition: enrolls for >

Student -- Request: creates >

TA -- Edition: TAs for >

TA -- Request: handles >

Student -- Feedback: gives >

TA -- Feedback: views >

'/

  

' ----- SUBMIT ------

  

/'

title "SUBMIT Domain Relations - Simplified"

class Submission

class Assignment

class Group

class Edition

class Course

class "Automatic feedback"

class "Manual feedback"

class Script

class Catalog

class Student

class TA

  

Submission -- Assignment: belongs to >

Group -- Submission: submits >

Edition -- Group: contains >

Course -- Edition: belongs to <

"Automatic feedback" -- Script: creates <

"Automatic feedback" -- Submission: contains >

"Manual feedback" -- Submission: contains >

TA -- "Manual feedback": creates >

Student -- Submission: submits >

Assignment -- Script: has >

Catalog -- Edition: contains >

'/

  

' ------ TAM --------

  

/'

title "TAM Domain Relations - Simplified"

class Applicant

class Listing

class Application

class "Rejection reason"

class Offer

class Course

class Payscale

class Training

class Lecturer

  

Applicant -- Application: creates >

Applicant -- Listing: applies for >

Application -- Listing: belongs to >

Applicant -- Offer: responds to >

"Rejection reason" -- Application: has <

"Rejection reason" -- Lecturer: specifies <

"Rejection reason" -- Applicant: views >

Applicant -- Payscale: has >

Applicant -- Training: has >

Lecturer -- Listing: creates >

Lecturer -- Offer: creates >

Lecturer -- Application: responds to >

Lecturer -- Course: manages >

Course -- Listing: belongs to <

'/

@enduml