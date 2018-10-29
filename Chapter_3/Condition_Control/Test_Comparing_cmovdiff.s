	.file	"Test_Comparing_cmovdiff.c"
	.text
	.globl	cmovdiff
	.type	cmovdiff, @function
cmovdiff:
.LFB0:
	.cfi_startproc
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	movq	%rdi, %rax
	subq	%rsi, %rax
	cmpq	%rdi, %rsi
	jle	.L2
	movq	%rdx, %rax
.L2:
	rep ret
	.cfi_endproc
.LFE0:
	.size	cmovdiff, .-cmovdiff
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
