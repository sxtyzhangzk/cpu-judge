	.file	"example.c"
	.option nopic
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	li	a4,72
.L2:
	sb	a4,260(zero)
	addi	a5,a5,1
	lbu	a4,0(a5)
	bnez	a4,.L2
	li	a5,10
	sb	a5,260(zero)
	li	a0,0
	ret
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Hello World!"
	.ident	"GCC: (GNU) 7.2.0"
