	.file	"Test_fix_prod_ele.c"
	.text
	.globl	fix_pord_ele
	.type	fix_pord_ele, @function
fix_pord_ele:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	movl	$0, %r8d
	salq	$6, %rdx
	addq	%rdx, %rdi
	addq	%rdx, %rsi
	jmp	.L2
.L3:
	movl	(%rsi,%rcx,4), %r9d
	imull	(%rdi,%r8,4), %r9d
	addl	%r9d, %eax
	addq	$1, %r8
.L2:
	cmpq	$15, %r8
	jle	.L3
	rep ret
	.cfi_endproc
.LFE0:
	.size	fix_pord_ele, .-fix_pord_ele
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
