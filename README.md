# Parameterized ALU in Verilog

## Overview
Designed a scalable ALU supporting N-bit operations with flags.

## Features
- Parameterized design (default: 8-bit).
- Operations: Add, Sub, Modulus, division, bitwise AND, bitwise OR, Shift Left, Shift Right.
- Flags: Zero, Carry, Overflow, Negative.
- Verified with testcases.
## Testcases

| Operation  |  a      |  b      | Result | Flags (Z,C,V,N) |
|------------|---------|---------|--------|----------------|
| ADD        | 100       | 50       | 150      | 0,0,0,0        |
| SUB        | 4      | 5       | 0      | 1,0,0,0        |
| DIV        | 5      | 3      |       1   |       0,0,0,0          |
| MOD          |5       |3     |   2       | 0,0,0,0 |
| AND        | 8'b1010_1111   |   8'b1111_0000  |   1010_0000 |0,0,0,1         |
| OR         | 8'b1111_0000  | 8'b0000_1100  | 8'b1111_1100 | 0,0,0,0        |
| SHIFT LEFT | 8'b1111_0100  | 0000_0001       | 8'b1110_1000 | 0,0,0,1       |
|SHIFT RIGHT | 8'b0000_1111   | 0000_0001   | 00000111 |0,0,0,0 | 

## Learnings
- Parameterized design in Verilog
- Arithmetic/logic design








