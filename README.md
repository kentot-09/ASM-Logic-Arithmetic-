# ASM Arithmetic & Logic Operations

A simple assembly program demonstrating basic arithmetic and logical operations in x86_64 assembly.

## Program Overview
- Performs arithmetic operations (`ADD`, `SUB`)
- Demonstrates bitwise operations (`OR`, `AND`, `XOR`)
- Outputs the final result to the terminal

## How It Works
1. **Initialization**: 
   - Loads the value `5` into register `AL`
2. **Arithmetic**:
   ```nasm
   add al, 3   ; AL = 5 + 3 = 8
   sub al, 2   ; AL = 8 - 2 = 6
   ```
3. **Bitwise Operations**:
   ```nasm
   or al, 1    ; AL = 6 | 1 = 7
   and al, 7   ; AL = 7 & 7 = 7
   xor al, 2   ; AL = 7 ^ 2 = 5
   ```
4. **Output**:
   - Converts the result to ASCII
   - Prints "Result: 5" to the terminal

## Build & Run
```bash
nasm -f elf64 logic_arith.asm -o logic_arith.o
ld logic_arith.o -o logic_arith
./logic_arith
```

## Expected Output
```
Result: 5
```

## Tools Used
- NASM (Netwide Assembler)
- GNU Linker (ld)
- x86_64 Linux environment
