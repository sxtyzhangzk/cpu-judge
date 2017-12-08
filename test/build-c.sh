#!/bin/sh
riscv32-unknown-elf-gcc -o ram.o -c $1 -O2 -march=rv32i 
riscv32-unknown-elf-as -o rom.o -march=rv32i rom.s 
riscv32-unknown-elf-ld -T memory.ld rom.o ram.o -o memory.om
riscv32-unknown-elf-objcopy -O binary memory.om memory.bin