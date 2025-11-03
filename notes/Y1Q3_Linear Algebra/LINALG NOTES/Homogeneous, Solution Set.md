---
From Lecture: "3"
Created time: 2024-09-20T20:36
estimated value (word count): 202
---
> Main Takeaway: A homogeneous linear system, where constants are set to 0, can have either one or infinitely many solutions. The solution set of a consistent nonhomogeneous linear system parallels that of its corresponding homogeneous linear system.
# Homogeneous Linear Systems
A **homogeneous** linear system has an augmented matrix with strictly zeroes in the constants column. The constants are set to 0.
![Untitled 13.png](../../../attachments/Untitled%2013.png)
## Solutions
The **trivial solution** is for every unknown (`X1, X2,…`) to be zero, since `0 + 0 = 0`. A homogeneous linear system has either one or infinitely many solutions.
- If the number of unknowns exceeds the number of equations (more columns than rows), there are **infinitely many solutions**. Each row can at most express one unknown entirely out of other unknowns.
- If there are 4 columns and 3 rows, only 3 unknowns can be expressed in terms of others. The last unknown (`Xn`) has full control over the solution, therefore the solution set is **infinite**.
# Nonhomogeneous Linear Systems
The solution set of a **consistent nonhomogeneous linear system** is parallel to the solution set of its corresponding homogeneous linear system.
- A nonhomogeneous linear system can also be **inconsistent**, in which case it has no solutions.