	.section .rom,"ax"
	.globl main

	li sp, 0x10000000
	jal main
	fence
	li a0, 0xff
	sb a0, 0x108(zero)
.L0:
	j .L0
