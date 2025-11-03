Domain == the space that the problem exists in

Ubiquitous language is an agreed-upon and continually evolving set of terminologies that bridge domain jargon and technical jargon, allowing domain experts and technical experts to communicate effectively about the software in development. The ubiquitous language should be used in every aspect of the project, from meetings to code.

System Description
	examples:

### Queue

---

Queue is a web application that allows students to create requests to engage with teaching assistants. Students are part of courses, which have labs corresponding to times and locations of instruction hours related to the course. A student creates a request which is then placed in that lab’s queue. The request in the front of the queue can be accepted by a teaching assistant belonging to the relevant course, at which point the teaching assistant goes to the student to assist with the reason for their request.

### Submit

---

Submit is an application allowing students to upload submissions to assignments and receive feedback based on their submission. Assignments belong to courses and are defined by course staff. Course staff define properties of the assignment including the rules by which the automatic feedback is generated. Teaching assistants can also give manual feedback on a submission.

### TAM

---

TAM is a web application enabling lecturers to find and hire teaching assistants for their courses. Lecturers can post listings for their courses providing information about the position. Prospective teaching assistants (applicants) can then apply to these job offers, potentially providing additional information. Lecturers can then accept or reject these applications. Accepted applicants then accept or reject the resulting offer to choose to become a teaching assistant for the course.

Scenario
Examples
### Queue

---

- Students
    - Enrol in an edition
    - Create a request in a lab by asking a question
    - Revoke their own request
    - Provide feedback on the TA that answered a request
- TAs
    - Take the oldest request from the queue
    - Mark a taken request as accepted or rejected, with a corresponding reason
    - Forward a request to another TA
    - View feedback provided to them by students
- Lecturers
    - Create editions for their courses
    - Create labs for their editions, including time and room
    - See statistics regarding a TA (number of requests serviced, average feedback)

### Submit

---

- Students
    - Join editions
    - Join groups
    - Upload submissions
    - View feedback on submissions (automatic or manual feedback)
- TAs
    - View submission feedback
    - Add manual feedback
    - Download student submission
- Lecturers/Head TAs
    - Create courses
    - Define groups (number of groups, automatically assigned vs self-enrolled, etc)
    - Create assignments
    - Edit assignments
    - Delete assignments
    - Test assignments
    - Configure automatic feedback
    - Configure assignment limits (cpu, memory, time)

### TAM

---

- Applicants
    - Apply for job offers
    - Retract application
    - Accept an offer
    - View rejection reason
    - Provide proof of credits
- Lecturers
    - Create job offers
    - Edit job offers
    - Delete job offers
    - View applications
    - Accept or reject applications
- TA Coordinator
    - Change TA payscale
    - Indicate completed trainings for a TA

System Language
#### Queue

- Queue: The ordered list of requests which teaching assistants can respond to
- Request: A question submitted by a student and placed into the queue belonging to the relevant lab
- Lab: A time period and location associated with an edition that has a queue for requests
- Edition: An instance of a course attached to a specific year
- Course: A university subject from which editions are derived
- Lecturer: A person responsible for a course
- Student: A person enrolled in an edition who can create requests
- Teaching assistant: A person in an edition who can respond to requests
- Forwarding: A teaching assistant placing a request back in the queue (at its original spot) so it can be handled by another teaching assistant
- Feedback: A review of a teaching assistant’s performance when responding to a request provided by the student that created the request

#### Submit

- Submission: A file uploaded to an assignment by a student to get feedback
- Assignment: A place belonging to an edition to which a submission can be uploaded
- Group: A team of students in an edition who share submissions
- Edition: An instance of a course attached to a specific year
- Course: A university subject from which editions are derived
- Automatic feedback: Feedback provided by a script on a submission
- Manual feedback: Feedback provided by a teaching assistant on a submission
- Script: Code for creating automatic feedback for a given submission
- Test submission: A submission created by a lecturer or teaching assistant to test the automatic feedback provided by a script on an assignment
- Catalog: A list of editions which are available for students to join

#### TAM

- Applicant: A person who applies for listings
- Lecturer: A person responsible for creating listings and responding to applications
- Listing: An advertisement of an available job position for a course
- Application: A response to a listing by an applicant potentially containing additional information
- Rejection reason: A reason set by a lecturer on a rejected application visible to the applicant
- Offer: A positive response to a listing by a lecturer which an applicant can accept to confirm accepting the job position
- Course: A university subject with a unique course code
- Payscale: The hourly rate an applicant would receive for a position, based on a set of standardized rates
- Training: Modules for preparation for being a teaching assistant completed by applicants
- Retract: An applicant deleting their application before it is accepted or rejected by a lecturer

Domain relations
	you can make a class diagram for this [detailed class diagram example](detailed%20class%20diagram%20example.md) [UML Class Diagram](UML%20Class%20Diagram.md)

	