# MIPS Assembly Practice

This repository contains MIPS assembly projects developed as part of the **NTUST Computer Organization (2025)** course. These projects focus on practicing fundamental MIPS assembly programming techniques and understanding computer architecture concepts.

## Environment Setup
- **[MARS 4.5](https://github.com/aeris170/MARS-Theme-Engine.git)** - A lightweight MIPS simulator for executing assembly programs.
- Compatible with **Windows, macOS, and Linux** (via Java Runtime Environment).

## Techniques & Concepts Used
This repository demonstrates various MIPS programming techniques, including:

- **Basic I/O Operations** (`syscall` for reading/writing data)
- **Arithmetic and Logical Operations** (`add`, `sub`, `mul`, `div`, `and`, `or`)
- **Conditional Branching** (`beq`, `bne`, `bgt`, `blt`, `bge`, `ble`)
- **Loop Structures** (`for`, `while`, `do-while` using `j`, `jal`, `jr`)
- **Function Calls and Stack Management** (`jal`, `jr`, `push`, `pop`)
- **Memory Management** (`.data`, `.text`, `la`, `lw`, `sw`)
- **Array and String Processing**
- **Bitwise Operations and Shifting**
- **Recursive Function Implementations**

## Projects

### Project - 1

In this start-up project, you are required to get familiar with both MARS (MIPS 
Assembler and Runtime Simulator) programming environment and basic MIPS 
(Microprocessor without Interlocked Pipeline Stages) instructions. 
The letter grade system is popular with most prestigious international universities. 
Compared to the one-hundred-percent numerical grade system, the letter grade system 
helps students put into the proper perspective and avoid unnecessary competition by 
comparing minor score differences. 

| Numerical Grade | Letter Grade | Description |
|---------------|-------------|------------------------------------------|
| 90~100       | A+          | Superior.                                |
| 85~89        | A           | Excellent.                               |
| 80~84        | A-          | Excellent, but needs improvement.        |
| 77~79        | B+          | Very good.                               |
| 73~76        | B           | Good.                                    |
| 70~72        | B-          | Good, but needs improvement.             |
| 67~69        | C+          | Satisfactory.                            |
| 63~66        | C           | Satisfactory, but needs improvement.     |
| 60~62        | C-          | Satisfactory with major flaws.           |
| 50~59        | D           | Unsatisfactory, repeat recommended.      |
| 1~49         | E           | Failure.                                 |
| 0            | X           | Not graded due to unexcused absences or other reasons. |


Not graded due to unexcused absences or other reasons. 
You are required to write a program to convert a numerical grade to the 
corresponding letter grade along with the description according to the above conversion 
table.

### Project - 2

# Project 2 – MIPS Assembly (Recursive Digit Sum)

In this project, you are required to write a **recursive program** in **MIPS Assembly** to compute the **sum of the digits** of an integer.
The *sum of digits* function calculates the sum of all individual digits in a given **positive integer**. This function can be defined recursively as follows:
1. **Use recursion** to implement the digit sum.
2. **Prompt the user** to input a non-negative integer.
3. **If the input is negative**, print `"Illegal input."`

Eample I\O:
```
Please input a non-negative integer: 12345
The sum of the digits of 12345 is 15.

Please input a non-negative integer: 9876
The sum of the digits of 9876 is 30.

Please input a non-negative integer: 5
The sum of digits of 5 is 5.

Please input a non-negative integer: -543
Illegal input.
```
