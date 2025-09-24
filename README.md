# Parameterized ALU in Verilog

## Overview
Designed a scalable ALU supporting N-bit operations with CPU-style flags.

## Features
- Parameterized design (default: 8-bit).
- Operations: Add, Sub, AND, OR, XOR, Shift Left, Shift Right.
- Flags: Zero, Carry, Overflow, Negative.
- Verified with multiple testcases and waveforms.
## Testcases

| Operation  |  a      |  b      | Result | Flags (Z,C,V,N) |
|------------|---------|---------|--------|----------------|
| ADD        | 100       | 50       | 150      | 0,0,0,0        |
| SUB        | 4      | 5       | 0      | 1,0,0,0        |
| DIV        | 5      | 3      |          |                 |
| MOD          |5       |3     |    |                  |
| AND        | 8'b1010_1111   |   8'b1111_0000  |    |         |
| OR         | 8'b1111_0000  | 8'b0000_1100  | 8'b1111_1100 | 0,0,0,0        |
| SHIFT LEFT | 8'b1111_0100  | 1       | 8'b0010 | 0,0,0,0        |
|SHIFT RIGHT | 8'b0000_1111   | 1   |  | |
  

## Learnings
- Parameterized design in Verilog
- Arithmetic/logic design





