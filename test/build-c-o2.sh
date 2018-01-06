#!/bin/sh
set -e
rpath="/opt/riscv/bin/"
${rpath}riscv32-unknown-elf-gcc -o ram.o -c $1 -O2 -Wall -march=rv32i -mabi=ilp32
${rpath}riscv32-unknown-elf-gcc -o ram.S -S $1 -O2 -Wall -march=rv32i -mabi=ilp32
${rpath}riscv32-unknown-elf-as -o rom.o -march=rv32i rom.s
${rpath}riscv32-unknown-elf-ld -T memory.ld rom.o ram.o -o memory.om
${rpath}riscv32-unknown-elf-objcopy -O binary memory.om memory.bin
python bin2ascii.py memory.bin memory.mem
