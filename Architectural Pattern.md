## Architectural Patterns

Choosing an architectural pattern is a tradeoff. Each pattern differs in the following qualities:

- **Performance:** system response time
- **Usability:** ease of use
- **Maintainability:** ease of maintenance
- **Testability:** ease of verification
- **Reusability:** can components be reused?
- **Availability:** is the system available when needed?
- **Integrity:** can unauthorized users get in and change data?

### Client and Server

- The server provides resources so the user can consume.

### Layered Architecture

- Layering provides abstraction.
- Easy to maintain.

### Model-View-Controller

- The user sees the view; the controller forwards actions; the model verifies data.

### Pipe-and-Filter

- Used for systems that produce a stream of data.
- **Source:** provides data.
- **Pipes:** move unaltered streams.
- **Filters:** define input/output constraints.
- **Sinks:** receive final data.
- Good for data-intensive applications, buffering, and syncing.
- Easy to reuse.

### Microservices

- Rearranges the application as a collection of microservices.

### Publish-Subscribe Pattern

- The publisher provides an event to the event bus, which delivers the event to subscribers.

### Event-Driven Architecture

- Agents detect and transfer events to an event queue; the event queue decides which sink to transfer to.

### Peer-to-Peer Pattern

- Offers good performance.