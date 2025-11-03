---
Course Name: Software Quality & Testing
Course Code: CSE1110
Course Timing: Y1Q4
Course Status: completed
Last edited time: 2024-09-20T20:35
---
![Untitled 8.png](../../attachments/Untitled%208.png)
# Specification-based Test
## Specification-based Test

> [!important] write test based of the specs of a method (javadoc)
# Property Test
---
# ==Property based testing==
## Subtopic based off example problem

> Overal thoughts.
## Subtopic based off example problem

> Overal thoughts
## Subtopic based off example problem

> Overal thoughts
## Subtopic based off example problem

> Overal thoughts
## Subtopic based off example problem

> Overal thoughts
  
# Test Driven Development

> [!important]
- what goes in place of the numbers (#)?
    
    ![Untitled 1 2.png](../../attachments/Untitled%201%202.png)
    
    ![Untitled 2 2.png](../../attachments/Untitled%202%202.png)
    
# Writing Larger Tests

> [!important] When to write large tests?
> 
>   
> What makes for a good integration test?  
> What makes for a good system test?  

> Reasons to write large test: (integration/system)
> 
> (1) components (or sets of classes) that should be exercised  
> together, because otherwise, the test suite would be too weak;  
> 
> (2) components that  
> communicate with external infrastructure, such as classes that communicate with  
> databases and are full of SQL queries; and  
> 
> (3) the entire system, end to end.
---

> Systematic Test
> 
> - **Systematic Testing**
>     
>     > developers should use systematic testing, as opposed to testing on gut feeling.
>     
> - **Absence of Errors Fallacy**
>     
>     > a functionality can be verified, having no test failures and high test coverage, but be invalid, not serving the end user correctly.
>     
> - **Exhaustive Testing**
>     
>     > testing exhaustively is impossible
>     
> - **Pesticide Paradox**
>     
>     > we can have high test coverage, but still a lot of bugs, we need to change our testing techniques
>     
> - **Test Early**
>     
>     > developers should test early in the development process to avoid dealing with an old, rooted, issue later on, which would be both harder to find and harder to change, since it already affects a big part of the code.
>     
> - **Defect Clustering**
>     
>     > defects in the functionality usually aren’t spread uniformly throughout the code, but rather _**clustered**_ in a smaller more concentrated part. Defects usually follow the Pareto Rule: 80% of defects usually stem from a mere 20% part of the code.
>     
> - **Tests Are Context-Dependent**
>     
>     > devising test cases will be very different, depending on the context of the functionality thats being implemented
>     
> - **Unit, Integration, System test**
>     
>     > a unit test tests a for a single specific case, that the functionality performs as expected, which is dogshit for testing sql queris,  
>     >   
>     > an integration test verifies the communication between the system and the external dependencies,  
>     >   
>     > a system test tests the functionality of each component as a whole, which is closer to reality, but they’re slow, and indeterministic  
>     
> - **Testing Pattern**
>     
>     > Transitioning from an ice-cream cone anti-pattern to a testing pyramid
>     
>     ![Untitled 3 2.png](../../attachments/Untitled%203%202.png)
>     
---

> 2 - Specification test
> 
> - **Specification Test + Approach**
>     
>     > systematically testing, based off of the requirements of the functionality.
>     
>     > (1) understand the requirements,
>     > 
>     > (2) explore the program if you do not know much about it,
>     > 
>     > (3) judiciously analyze the properties of the inputs and outputs and identify the  
>     > partitions,  
>     > 
>     > (4) analyze the boundaries,
>     > 
>     > (5) devise concrete test cases,
>     > 
>     > (6) implement the concrete test cases as automated (JUnit) tests, and
>     > 
>     > (7) use creativity and experience to augment the test suite.
>     
>     > We need good requirements, but they do not need to be formal models.
>     
> - **Category>Partition Method**
>     
>     > For each category (the input itself, or a property of the input) we devise the many partitions that they can come in.
>     
>     > Equivalence Partition; A group of inputs that all make a method behave in the same way.  
>     > We use the concept of equivalence partitioning to determine which tests can be removed.  
>     > We only need one test case in a certain equivalence partition.  
>     
> - **Boundary Case, Boundary Analysis, On/Off Points**
>     
>     > boundary cases test the cases at the edge of what are valid inputs and what are invalid inputs. A tester should be able to come up with these cases to make sure the functionality is as desired and the test suite well-rounded and versatile.
>     
>     > given a condition, like score <= 570, or points == 10, we testers should be able to come up with on and off points:  
>     > 570 on, 571 off  
>     > 9 off, 10 on, 11 off  
>     
>     > Boundary analysis can be done with the specification, or the source code.
>     
> - **Minimize Test Cases, Given Specifications**
>     
>     > Group existing test cases in the partitions that they aim to test,  
>     > safely remove duplicates in each partition,  
>     > since we still test that particular partition sufficiently with the remaining test(s)  
>     
>     > Exceptional partition options should be tested only once, not once for every combination of options they are in
>     
>     > certain combinations don’t make sense, so for certain partitions, we should constrain its options to rely on precursor options (can’t test for occurences in a line if the file contains no occurences)
>     
> 
> **adding constraints is a step in the functional testing technique**
---

> 3 - Structural Test, Code coverage
> 
> - Kill Mutations
>     
>     > Basically we need to test that methods with mutations fail (they don’t have the same functionality
>     > 
>     > - Conditionals boundary: Relational operators such as < and <=
>     > - Increment: It replaces i++ with i-- and vice versa.
>     > - Invert negatives: It negates variables, for example, i becomes -i.
>     > - Math operators: It replaces mathematical operators, for example, a plus becomes a minus.
>     > - True returns: It replaces entire boolean variables with true.
>     > - Remove conditionals: It replaces entire if statements with a simple if(true) {…}.
>     
> - **Loop Boundary Adequacy Criterion**
>     
>     > A test suite satisfies the loop boundary adequacy criterion if for every loop L, Test cases iterate L zero times, once, and more than once.
>     
> - **MC/DC Criterion**
>     
>     > Modified Condition/Decision Coverage Criterion  
>     >   
>     > Instead of testing ALL combinations of conditions, we should only test those that illustrate a difference.  
>     >   
>     > We must attribute to all booleans, an independence pair; both a test case where it affects the outcome in one way, and a test case where it affects the outcome in the other way.  
>     >   
>     >   
>     > 
>     > ![Untitled 4 2.png](../../attachments/Untitled%204%202.png)
>     > 
>     > ![Untitled 5 2.png](../../attachments/Untitled%205%202.png)
>     
>       
>     
> - ==**Illustratory Example Difference Basic Condition, Full Condition, Branch Coverage**==
>     
>     > Consider this branch condition (A∧B)
>     > 
>     > A test suite that tests (A,¬B), (¬A, B) has basic-condition coverage, since both A and B are evaluated for both true and false at least once.
>     > 
>     > A test suite that tests (A,¬B), (¬A, B), (A, B) has basic-condition coverage and branch-coverage, since it now also evaluates the compound condition (A∧B) both true and false.
>     > 
>     > A test suite that tests (A,¬B), (¬A, B), (A, B), (¬A, ¬B) has basic-condition coverage, branch-coverage and full-condition coverage, since it now also evaluates every single combination of A and B
>     > 
>     > > [!important] Does full condition coverage imply branch coverage?
>     > 
>     > No, sometimes you can evaluate every combination of conditions, without the compound being true and false at least once. (compound condition is never false/true; contradictions and tautologies)
>     > 
>     > consider the following expressions (not a contingency)
>     > 
>     > ((A∧B)∧¬A)
>     > 
>     > (A∨B)∨¬A
>     > 
>     > evaluating the entire truth table (as one does in full conditional coverage) will still result in only FALSE or only TRUE in the compound decision, therefore branch coverage is not reached, even with full condition coverage.
>     
> - ==**100% Path Coverage**==
>     
>     > 100% of the paths (= all combinations of branches, and all combinations of conditions like a,b,c) are tested.
>     
>       
>     ~~NOTE: this only requires branch statement compound conditions to be evaluated true/false, and doesn’t require the evaluation of each individual condition, nor the combination of individual conditions that make/don’t make the overall branch condition true. (100% path coverage won’t catch a condition that is useless, nor the difference between two combinations of conditions that both result in the compound branch condition being true/false)~~
>     
> - ~~==**100% Full Condition + Branch Coverage**== ==**(Combines Full**== ==**and Branch)**==~~
>     
>     > ~~100% of the individual _**COMBINATIONS of**_ conditions are evaluated in this test suite.~~  
>     >   
>     > ~~100% of the branches are ran at least once in this test suite ==(compound branch statement condition is evaluated for both true, false)==~~  
>     >   
>     > ~~For every branch statement, every individual condition is evaluated true/false once, and the overall compound condition is evaluated true/false once~~  
>     
>       
>     
> - ==**100% Full Condition Coverage**==
>     
>     This is used interchangeable with condition + branch coverage
>     
> - ==**100% Basic Condition+ Branch Coverage**== ==**(Combines Basic**== ==**and Branch)**==
>     
>     > 100% of the individual conditions are evaluated both true and false in this test suite.  
>     >   
>     > 100% of the branches are ran at least once in this test suite ==(compound branch statement condition is evaluated for both true, false)==  
>     >   
>     > For every branch statement, every individual condition is evaluated true/false once, and the overall compound condition is evaluated true/false once  
>     
> - ==**100% Branch Coverage(100% decision coverage)**==
>     
>     > 100% of the branches are ran at least once in this test suite ==(compound branch statement condition is evaluated for both true, false)==
>     
> - ==**100% Basic condition Coverage**==
>     
>     > 100% of the individual conditions are evaluated both true and false in this test suite. (neglects if the overall compound condition is evaluated in both the true and false case)
>     
> - ==**100% Line Coverage (100% Statement Coverage)**==
>     
>     > 100% of lines are ran at least once in this test suite  
>     > NOTE: ==ALTHOUGH A CONDITION MAY RETURN FALSE, THE LINE WHERE THE CONDITION IS EVALUATED IS STILL COUNTED!==
>     
---

> 4 - Class Contract
> 
> - **Design by Contracts**
>     
>     contracts are agreements that are followed to enforce soundness of code functionality.
>     
>       
>     
>     ==objects have== **invariants**, that need to be enforced. A **class invariant** is a condition that holds true for all instances of a class after the constructor has finished and before and after any method is called.
>     
>     ==methods have== preconditions that need to be met in order for the method to be run
>     
>     ==methods have== postconditions concerning the state the method should leave the object in after method execution.
>     
>       
>     
>     Liskov’s substitution’s principle ==(objects of a superclass shall be replaceable with objects of its subclasses without breaking the application)== can only be followed here, if subclasses of a class with invariants keeps those same invariants intact and adhered to. That means that an overwriting method shouldn’t have stricter preconditions, and it shouldn’t have more lenient postconditions
>     
>       
>     
>     static methods can’t have invariants because invariants concern the state of the entire object, and static methods are stateless, having no object.  
>       
>     contract design does not replace validation, both need to be done independently  
>     
>       
>     
>     changing a contract should be done with extreme care, as they can easily break things. We need to consider the impact of changing a contract.
>     
---

> 5 - Property test
> 
> - **Property Test (instead of example test)**
>     
>     Property testing means that instead of coming up with concrete examples, we  
>     express the property that should hold for that method. The framework then  
>     randomly generates hundreds of different inputs.  
>     
>       
>     
>     Example based testing considers the soundness of a single specific instance, while in property testing, the test defines what property needs to be sound, and the testing framework will try to find inputs that break said property.
>     
>       
>     
>     a property can be:  
>     -palindromes should return true  
>     
>     -nonpalindromes should return false
>     
>       
>     
>     the input generator in the testing framework might look like:
>     
>     -generate palindromes by generating a random string, concatenated with it’s reverse, assert that the method returns true
>     
>     -generate random string and assert false
>     
>       
>     
>     we can improve this framework by adding:
>     
>     -odd palindromes generator, that don’t have all letters in pairs, but also a random character in the middle positions
>     
>     -ensure that random strings aren’t palindromes by chance by adding a single unused character to the string, anywhere except the middle.
>     
> - Property Testing Caveats
>     - Do not generate a small or unrepresentative subset of values.
>     - Do not filter in such a way that jqwik cannot find suitable values.
>     - Do not filter in such a way that jqwik has to throw a lot of values away.
>     - Do not “abuse” jqwik. Using jqwik’s classes does not mean that it’s a proper PBT!
>     - Do not repeat the production code in the test.
>     - Do not use an existing implementation as the “oracle” (differential testing). (Or should you? Not in the context of this course anyway!)
>     - Do not do things manually that should be done by the framework.
> - **Fuzz Testing**
>     
>     fuzz testing focuses on generating fuzzy (invalid, unexpected or random) inputs to break the method. (crash)
>     
---

> 6 - Test Doubles
> 
> - **Dummy, Spy, Stub, Mock, Fake (Test Doubles)**
>     
>     ==Dummies are test doubles that are passed around but never actually used. They are typically used to== ==fill parameter lists== ==and are the simplest form of test doubles.==
>     
>     ==Spies wrap around a real object and allow you to verify the interactions with the object being spied on. They can== ==record the interactions, such as method calls and their parameters====, which can then be asserted in the test.==
>     
>     ==Stubs provide== hard-coded answers ==to the calls from tests.==
>     
>     ==Mocks== record interactions ==with the mocked object. They will keep track of how many times they were called, how they were called, and use this to verify that a method is called as intended(with specific parameters). They additionally return hardcoded answers, like stubs, for various different inputs. The mocked class’s method is called (with specific parameters) and the specified value is returned.==
>     
>     ==Fakes have real, working implementations of the class they simulate. However, they usually do the== same task in a much simpler way.
>     
> - **What to Mock? (when theres like 739 things that impact an output)**
>     
>     Use mocks to control the 738 external conditions and observe the output  
>     being returned as a consequence of the 1 tested condition. (repeat for any of 739, so 738 test cases)  
>     
> - **What Class Types to Mock**
>     
>     mock classes that are infrastructure-related, too complex, or too slow
>     
>     don’t mock entity classes, simple utility functions, and data holders
>     
>     instead of mocking the class of any static method, refactor the class to use as an input parameter, that which the static method would have returned.
>     
> - **100% Branch Coverage (without integration testing)**
>     - Unit testing with mocks can achieve 100% branch coverage of a method.
>     - By mocking dependencies, you can simulate different conditions and paths in the code without requiring actual integration with external components.
> - **Can this component be mocked?**
>     - Components that allow dependency injection (passing dependencies through constructors or setters) can be easily mocked.
>     - This design pattern facilitates testing by allowing you to replace real dependencies with mock objects.
> - **Can you write isolated unit tests? (even when the functionality has external dependencies)**
>     - It is possible to write isolated unit tests by using mocks or stubs for external dependencies.
>     - This approach allows you to focus on the logic of the unit being tested without being affected by the behavior of external components.
> - **Why are mocking tests fragile?**
>     
>     Tests that mock will be coupled to production code, since the mocked functionality will, to a degree, resemble the production code. If the actual production code ever changes in method signature, parameter syntax, or fundamental internal logic, the mock will become invalid, making the test fragile.
>     
> - **What should be integration tested?**
>     - Components that interact with external systems (e.g., databases, web services) should be integration tested to ensure that they work correctly in the context of the overall system.
>     - Integration tests verify that the different parts of the application work together as expected.
> - **Write production code to be mocked**
>     
>     Production classes allow for the mock by requiring all dependencies via the constructor.
>     
---
- **Decouple Business Logic (Domain Code) from Infrastructure Code**
    
    > Seperate domain code, business logic from infrastructure code.  
    > Instead of calling libraries and external apis directly, use the ports-and-adapters principle (hexagonal principle)  
    >   
    > For classes that depend, allow for dependency injection by making the external dependency instances a class field, allowing them to be passed through the constructor of the class.  
    > 
    > ![Untitled 6 2.png](../../attachments/Untitled%206%202.png)
    > 
    >   
    > 
    > You should also do the following improvements, but not as urgently:  
    > - create database indices  
    > - reduce excessive class fields/attributes  
    > 
    >   
    
- **Method Untestable by Unobservability or by Uncontrollability?**
    
    > How good can a method be _**controlled**_ before a test, and how can the output be _**observed**_ to assess correctness?
    
- **External Dependency > Data Access Object (DAO)**
    
    > Data Access Object: accesses data from an external dependency
    
---
- TDD cycle
    
    ![Untitled 7 2.png](../../attachments/Untitled%207%202.png)
    
    1. ==Refactor Production Code (Polish Bare minimum)==
    2. Write Test Code
    3. ==Test Fails==
    4. Adapt Production Code (bare minimum to pass)
    5. ==Test Passes==
    
    ![Untitled 2 2.png](../../attachments/Untitled%202%202.png)
    
- TDD glazing
    
    Test Feedback as Design Hint: TDD allows devs to get design hints from test feedback
    
    Steady, Incremental Progress: TDD allows for a consistent development pace, as baby steps are taken one by one. if something does break, we blame the small change we just made. (easy bug finding)
    
    Mocking allows baby step cycles: TDD relies on baby steps. We isolate a method with mocks to allow for unit tests, which represent the baby steps in TDD. (without mocking we’re forced to take large steps)
    
    Forced Testable Design: SInce the test is made before production code, production code is designed with testability in mind (if it’s not testable, we can’t greenlight the change we made)
    
- Does TDD test completely?
    
    TDD can increase test coverage, but it does not guarantee full coverage. Since the tests made with TDD are focused on functionality, it can focus on good/expected weather tests, overlooking fuzzy testing.
    
---
- make web app testable
    
    > make html elements easy to find
    
    > avoid inline js (anonymous is bad for testing purposes)
    
- End-to-End web-app testing (system cohesion testing)
    
    > End-to-end testing verify the frontend-backend communication
    
    > End-to-end testing is realistic
    
    > End-to-end testing can be automated for web-apps too
    
    > Unit testing is at least as important as end-to-end testing for web apps
    
- Page Object (PO) Design Pattern
    
    > A technique in test automation, enhancing maintainability and readability of tests. Abstracts the UI elements and UX interactions into separate classes.
    
    > POs abstract the HTML page to facilitate the engineering of end-to-end  
    > tests  
    
    > POs can be used in highly complex web applications.  
    > After introducing a PO, we still need libraries like Selenium.  
    > POs don’t make the test code more complex  
    
- Should Integration Tests cover Unit-Testable Code?
    
    > What can be tested via unit testing should be tested via unit testing. Use  
    > integration and system tests for bugs that can only be caught at that level.  
    
- Weight of Integration and System Testing Infrastructure
    
    > Large Tests take longer than Unit Tests. It is vital to be efficient. Don’t set up everything in each Test case.  
    > It is fundamental for developers to have a solid infrastructure to write  
    > such tests, as otherwise, they would feel unproductive.  
    
- Unit vs Integration Test
    
    Unit Test what is Unit Testable: Use unit tests as much as possible for catching unit-level bugs.  
    Overlap Integration Tests on Top of Unit Tests: Unit verified does not imply integration verified.  
    
- What Can Cause Web App Test Flakiness?
    
    Async JS & XML (AJAX) requests taking longer than expected (fail by timeout)
    
    Prior Tests changing the DBMS state
    
    Temporary Unavailability of UX components
    
---
- Prod Code Smell: Long Method, Long Class, God Class
    
    > A method shouldn’t be too long, that makes it less maintainable, understandable, testable.  
    > A class shouldn’t be too long, it shouldn’t try to do too much; don’t violate Single Responsibility Principle (SOLID)  
    > A class that does way too much is a god class. They have tight coupling, low cohesion (unordered, mix of levels), violate SRP, OCP (open for extension, closed for modification)  
    
- Test Code Smell: Flaky test
    
    > Flaky == succeeds sometimes, fails sometimes  
    >   
    > Thread.sleep(5000) is a statement that makes the test case flaky, since it relies on the probability that 5000ms is enough for the DBMS transaction to be complete. It might not be long enough.  
    
- Test Code Smell: General Fixture
    
    > ==A fixture is a set of inputs used in testing==  
    > A test case smells bad if the fixture it uses includes a bunch of information that is irrelevant to the test itself.  
    >   
    > Example:  
    > Testing that Person objects over the age of 18 can vote, might set up fixtures, that by the preconditions of the Person class, will also include irrelevant data like Height, Name, Ethnicity (necessary for the prod code, but it doesn’t make a difference in the test logic, and confuses people who might read the test)  
    
- Test Code Smell: Code Duplication
    
    > When many Test cases use the same initialization, the test suite smells bad because of bad maintainability.  
    >   
    > The test suite should instead use BeforeEach logic to reduce code duplication  
    
- Test Code Smell: External Resource Optimism
    
    > Test code shouldn’t assume that external dependencies are in a correct state. There should be a middle man that guarantees the correct state, by e.g. setting up that state on its own  
    >   
    > Test code shouldn’t assume that external dependencies are in an available state. The external dependency should be stubbed or mocked to the best of our ability. If that is not a sufficient solution, availability of the external dependency should be asserted, skipping depending tests if unavailable.  
    
- Test Code Smell: Unclear Assertion
    
    > An assertion should be clear in what is asserted, so that proper feedback can be given.  
    >   
    > A soft assertion is an assertion that doesn’t stop the test case when it fails, giving feedback without cutting the test case  
    
- Test Code Smell: Obscure Test
    
    > A test that’s difficult to understand smells bad because it’s hard to maintain over time, and their feedback isn’t as helpful.
    
- Test Code Smell: Condition logic in the test
    
    > A test smells bad when it has complex conditions within the test code itself, making the test logic hard to read and understand
    
- Test Code Smell: Mystery guest
    
    > A test smells bad when a test depends on external resources or conditions that are not immediately visible within the test code itself. It smells bad because it can only be understood fully, by someone who is familiar with the external mystery guest of the test.
    
- Test Run War
    
    > Two tests pass when executed in isolation but fail when executed together