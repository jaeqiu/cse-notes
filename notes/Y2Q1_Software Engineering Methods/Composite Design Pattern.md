**Composite Pattern:** Objects to trees, where each node/leaf can be used as object.

In short: literally just implement an interface with node and leaf implementations (nodes can access children (typed as interface))


![300](../../attachments/Pasted%20image%2020241103125635.png)
![300](../../attachments/Pasted%20image%2020241103125552.png)
![300](../../attachments/Pasted%20image%2020241103125406.png)
	example
	Consider a game where the game world consists of many different blocks that the player can interact with. Different blocks have different properties and traits, and this is represented in the code by different classes and interfaces (Interactable, Breakable, …).
	You are making a plugin for this game where you can make miniature versions of things. With this plugin a whole 16x16x16 region of blocks can be shrunk to the size of a single block. Any action performed on this block should be replicated to all of the tiny blocks inside of it.![Pasted image 20241103110622.png](../../attachments/Pasted%20image%2020241103110622.png)![Pasted image 20241103110407.png](../../attachments/Pasted%20image%2020241103110407.png)