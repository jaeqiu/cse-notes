---
Created: 2024-09-20T20:36
Chapter: Lab Manual
Last edited time: 2024-09-20T20:36
Slides: https://collegeramavideoportal.tudelft.nl/catalogue/cse1400/presentation/e7843349bc604ecfb851744940727e2c1d?academicYear=2020-2021-cse1400
Topic: Assembly
Week Number: 1.1
---
> The Lecturer is selling us on using Assembly.
> 
> SSD = Streaming SIMD Extension
> 
> Label, Operation, Operand 1, Operand 2, +
> 
> Labels Structure your code
> 
> operations specify the operation you want
> 
> the operands specify the input and output
> 
> Assembly translates all this into 1s and 0s
> 
>   
> 
> M2 SSD
> 
> SATA SSD
> 
> SATA HDD
> 
> DIMM RAM
> 
> fastest = register (8 byte each) ,only a few per setutp
> 
> the fastest are also smallest
> 
> the biggest are also slowest
> 
> We will use Labels instead of numbers → easier use case
> 
> variable-length instructions 1-15 bytes
> 
> five types
> 
> data transfer instructions (mov =copy)
> 
> arithmetic (binary and decimal) and logic instructions
> 
> flow control instructions
> 
> processor control instructions
> 
> i/o instructions
> 
> Format : INSTR , <src>, <dst>
> 
>   
> 
> # Various ways to address memory
> 
> $25 vs 25
> 
> $25 == the decimal value 25
> 
>