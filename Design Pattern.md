
- Low-level scoped pattern.
- Internal build of components.
- Reusable solution to localized problems.

### OOP Design Principles → SOLID

To make OOP designs more understandable, flexible, and maintainable:

- **Single Responsibility:** one class, one responsibility.
- **Open-Close:** open for extension, closed for modification.
- **Liskov Substitution:** subclasses can substitute superclass, preserving superclass behavior.
- **Interface Segregation:** division into specific interfaces; clients aren’t forced to depend on interfaces they don’t use.
- **Dependency Inversion:** objects depend on abstractions, not concretes.

### Behavioral Patterns

- **Iterator Pattern:** Traverses elements of a collection without exposing the underlying representation. Solves the problem of different collections supporting different iteration orders.
  
- **Strategy Pattern:** Defines a family of algorithms. Supports dependency inversion and open-close principles. Separate classes for different implementations.
  
- **Chain of Responsibility A:** Pass requests along a chain of handlers, all of which need to greenlight.
  
- **Chain of Responsibility B:** Pass requests along a chain of handlers, any of which can decide to process or pass.
  
- **Observer:** Allows two objects to collaborate despite incompatible interfaces.

### Structural Patterns

- **Adapter:** Allows objects with incompatible interfaces to collaborate by providing a different interface to the wrapped object.
  
- **Facade:** Provides a simplified interface to a complex library/framework, enhancing the interface of the wrapped object.
  
- **Proxy:** Provides a substitute placeholder for the wrapped object with the same interface.
  
- **Decorator:** Attaches new behavior to objects by wrapping them, enhancing the interface of the wrapped object.
  
- **Composite Pattern:** Composes various objects into a tree structure.

### Creational Patterns

- **Factory Method:** Provides an interface for creating objects in a superclass; allows subclasses to change the type of objects created.
  
- **Abstract Factory:** Allows the production of object families without specifying concretes.
  
- **Builder:** Constructs a complex object step-by-step, allowing various types/representations of an object from the same construction code.
  
- **Singleton:** Ensures that a class has only one instance.
