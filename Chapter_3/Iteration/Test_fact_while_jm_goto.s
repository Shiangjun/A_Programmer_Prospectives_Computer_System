	.file	"Test_fact_while_jm_goto.c"
	.text
	.globl	fact_while_jm_goto
	.type	fact_while_jm_goto, @function
fact_while_jm_goto:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
	jmp	.L2
.L3:
	imulq	%rdi, %rax
	subq	$1, %rdi
.L2:
	cmpq	$1, %rdi
	jg	.L3
	rep ret
	.cfi_endproc
.LFE0:
	.size	fact_while_jm_goto, .-fact_while_jm_goto
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
