---
Course Name: Computer Organisation
Course Code: CSE1400
Course Timing: Y1Q1
Course Status: completed
Last edited time: 2024-09-20T20:35
---
# Course Structure
![Untitled 103.png](../../attachments/Untitled%20103.png)
#### CSE1400)
|Week Number|Title|Topic|Chapter|
|---|---|---|---|
|1.2|[Lecture 4](CSE1400)/Lecture%204.md)|Logic Circuits II|Appendix A|
|1.2|[Lecture 3](CSE1400)/Lecture%203.md)|Logic Circuits I|Appendix A|
|1.1|[Lecture 2](CSE1400)/Lecture%202.md)|Assembly|Lab Manual|
|1.1|[Lecture 1](CSE1400)/Lecture%201/Lecture%201.md)|History|Chapter 1 + Lab manual|
|1.1|[Lecture 0](CSE1400)/Lecture%200.md)|Introduction|Brightspace|
  
  
# Assembly Subcourse
### Unsorted Knowledge
there are some things that matei told me about assembly today
rax is usually where the returned is stored
rdi is what is displayed on the console for user input
rsi is where the user input will be held after
for subroutines, there are fixed things to start and end
```Assembly
push    %rbp                   \#add rbp value to stack
	movq 	%rsp, %rbp              \#copy copy the value of rsp, which is pointing to the top of the stack, as a value to the rbp register
movq 	%rbp, %rsp              \#copy the value of the rbp register to the value of the rsp, this makes the rsp point to rbp
	popq 	%rbp                  \#pop 16 bits into the rbp register
	ret                          \#return
```
  
## concepts to know, but do nothing with
### Von Neumann architecture
![Untitled 1 8.png](../../attachments/Untitled%201%208.png)
a computer roughly consists of a cpu, memory, i/o
### levels of program language representation
![Untitled 2 8.png](../../attachments/Untitled%202%208.png)
you either sacrifice performance or readability
### cpu architecture variants
![Untitled 3 8.png](../../attachments/Untitled%203%208.png)
AMD architecture vs Intel (really AMD) architecture
### “prior knowledge” terms?
|   |   |   |
|---|---|---|
|**Term**|**Simple Explanation**|**Example**|
|Opcodes|Basic computer commands|"Add"|
|Instructions|Tasks for the computer|"Add 5 and 3"|
|Subroutines|Mini-programs|Pizza recipe|
|Stacks|Task order tracker|Stack of plates|
|Registers|Fast memory|Sticky notes|
|Program Counters|Next task bookmark|Sticky in a book|
|Compilation|Code translation|Translate book|
|Linking|Combine program parts|Assemble book|
### another assembly syntax?
Intex Syntax
```Plain
instr   dest,source
```
```Plain
mov     eax,[ecx]
```
AT&T Syntax (TU DELFT)
```Plain
instr   source,dest
```
```Plain
movl    (%ecx),%eax
```
### lab manual condescenscion
![Untitled 4 8.png](../../attachments/Untitled%204%208.png)
![Untitled 5 8.png](../../attachments/Untitled%205%208.png)
![Untitled 6 8.png](../../attachments/Untitled%206%208.png)
![Untitled 7 8.png](../../attachments/Untitled%207%208.png)
## registers
### what is a register?
a register is extremely fast memory in a cpu that can store very little very fast.
  
### how many registers exist?
16 registers in total, each 64-bit:
2/16 special registers
RSP Stack Pointer → memory address of top, of stack, of current program (register in cpu, stack in memory)
RBP Base Pointer →value of stack pointer, at the start of the function (use in subroutine execution)
14/16 general purpose registers
RAX, RBX, RCX, RDX, RDI, RSI, R8, R9, R10, R11, R12, R12, R13, R14, R15
## symbol table
a symbol table is like a book's table of contents in a computer file, helping share labels for debugging, allowing subroutines to be used by other programs or program start.
## program design
### guide step-by-step
these are the recommended steps in designing a program
![Untitled 8 7.png](../../attachments/Untitled%208%207.png)
description
broadly lay the foundations by deciding what the program should do, given what
![Untitled 9 6.png](../../attachments/Untitled%209%206.png)
specification
write pseudocode → go from human descriptions to computational logic
![Untitled 10 5.png](../../attachments/Untitled%2010%205.png)
implementation
translate the pseudocode into working, recognised, acceptable code
  
## register vs literal
The AT&T syntax uses a number of prefixes for operands.
- Register names are prefixed by the % character (e.g. %rax, %rsp).
- Literal values are prefixed with the $ character (e.g. $3)
![Untitled 11 4.png](../../attachments/Untitled%2011%204.png)
## directive functions
in assembler languages, some functions start with a dot .
that’s how you recognise an assembler → a special function
section directive
```Assembly
print “Hello World!”
```
.text → regular ass code
  
```Assembly
player spawn HP: 100
```
.data → initialized variables
  
```Assembly
bullet fired from coordinate: 712, 420
```
.bss → uninitialized variables (initialize during runtime)
  
constant-define directive
```Assembly
BUILDLIMIT = 256
```
.equ ⇒ constants, use like variables, can’t change stored values
variable-define directive
.byte ⇒ variable with 1 byte ≙ 8 bits reserved
.word ⇒ variable with 2 bytes ≙ 16 bits reserved
.long ⇒ variable with 4 bytes ≙ 32 bits reserved
.quad ⇒ variable with 8 bytes ≙ 64 bits reserved
memory-reserve directive
```Assembly
.skip 1024 # reserve 1024 bytes of memory for when needed
```
.skip ⇒ reserve memory for the future, keep it reserved with zeroes meanwhile
  
string variable directive
```Assembly
WELCOME: .ascii "Hello!!" # A string
.byte 0x00 # followed by a null byte
```
.ascii ⇒ ascii string variable
```Assembly
WELCOME: .asciz "Hello!!" # A string followed by a null byte
```
.asciz ⇒ ascii string variable, automatically terminates string with zero byte character
global symbol directive
```Assembly
.global label
```
.global ⇒ adds a label to the symbol table for debugging, knowing where main is, and transparency to other (cooperating) programs.
## subroutines
### how to start subroutine
p**repare and initialize the stack frame for the subroutine: (c**reate a new frame when calling a subroutine)
CALL the subroutine
pushes the return address on the stack
PUSH %RBP (base pointer)
saves the base pts on the stack, for later use.
MOV %RSP %RBP
creates a new base
SUB %24 %RSP
creates a space for local variables
  
GPT SAYS
```Assembly
**Subroutine Setup**
1. **Prepare and Initialize the Stack Frame**
   - Create a new frame when calling a subroutine.
2. **CALL the Subroutine**
   - Pushes the return address onto the stack.
3. **Save Base Pointer**
   - PUSH %RBP
   - Save the base pointer on the stack for later use.
4. **Create New Base Pointer**
   - MOV %RSP, %RBP
   - Establish a new base pointer.
5. **Allocate Space for Local Variables**
   - SUB $24, %RSP
   - Create space on the stack for local variables.
```
### run and debug 101
cd /mnt/e/Computer\ Science\ \&\ Engineering/CSE1400  
  
code .
  
  
gcc -no-pie -o nameofyourprogram nameofyoursource.s
./nameofyourprogram
  

> enable gdb debug flags
gcc -no-pie -g -o nameofyourprogram nameofyoursource.s
gdb ./nameofyourprogram
  
gcc -no-pie -o t1 recursion.s
./t1
### default conventions for starting an assembly file
```Assembly
.text
format: .asciz "%ld"
.global main
main:
	pushq 	%rbp                    \#initialize the stack layout
	movq 	%rsp, %rbp              \#moving the stack pointer at the start of the stack

	movq    %rbp, %rsp
	popq 	%rbp                    \#restore base pointer location
	movq 	$0, %rdi                \#load the exit code 0
	call    exit
input:
.data
n:  .quad 0
result:  .quad 0
```