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
| ADD        | 5       | 3       | 8      | 0,0,0,0        |
| SUB        | 9       | 9       | 0      | 1,0,0,0        |
| AND        | 1010    |   1100  |   1000 | 0,0,0,0        |
| OR         | 0b1010  | 0b1100  | 0b1110 | 0,0,0,0        |
| SHIFT LEFT | 0b0001  | 1       | 0b0010 | 0,0,0,0        |


## Learnings
- Parameterized design in Verilog
- Arithmetic/logic design




