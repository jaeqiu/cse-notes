### Context

- System scope, responsibilities, and externals (API).
  
  #### C4 Context Diagram

  The point of C4 is to have different zoom levels. It’s somewhat text-heavy, with legends, keys, and guides explaining the relevant zoom level.

  - **Context Diagram:** 
    - System-centered, surrounded by users and other systems.

  - **Container Diagram:**
    - Shows containers that are separately runnable.
    - Distributes responsibilities over containers.

  - **Component Diagram:**
    - Similar to a UML component diagram.
    - Intended for architects and developers.

  - **Code Diagram:** (optional zoom level)
    - Implemented as UML use case diagram.
    - Implemented as UML ERD.
    - Automatable using tools.

### Functional

- System components, interfaces, interactions.

  #### UML Component Diagram

  Displays various components and interactions between them:

  - Components as boxes.
  - Dependencies as dashed lines.
  - Associations as straight lines.
  - Sockets as input interfaces.
  - Lollipops as output interfaces.
  - Ports of interfaces.

  ![[Pasted image 20241026150019.png]]

  #### UML Sequence Diagram

  Displays a step-by-step for a particular action, highlighting objects:

  - **Actor:** something outside of the scope of the system.
  - **Object:** something inside the system.
  - **Synchronous Message:** communication between actors and objects or objects and objects.
  - **Return Message (dashed):** the response to a synchronous message.
  - **Lifeline (box):** the activity lifeline of an object (not an actor).
  - **Combined Fragment; Alternative:** an if-else statement where both statements overlap in real-time but are displayed sequentially to clarify alternative paths.

  ![[Pasted image 20241024145640.png]]
  ![[Pasted image 20241024145649.png]]

### Informational

- Storage, manipulation, management, and distribution of information.

  #### UML Activity Diagram

  Useful for eliciting requirements and implementing functionalities:

  - Highlights functions.
  - Not useful for designing architecture.

  ![[Pasted image 20241024145712.png]]
  ![[Pasted image 20241024145719.png]]

  #### UML Class Diagram (Behavior Focused)

  #### UML ERD

### Concurrency

### Development

### Deployment

### Operational