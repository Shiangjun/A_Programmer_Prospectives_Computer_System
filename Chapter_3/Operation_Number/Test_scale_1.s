	.file	"Test_scale_1.c"
	.text
	.globl	scale
	.type	scale, @function
scale:
.LFB0:
	.cfi_startproc
	leaq	(%rdi,%rsi,4), %rcx
	leaq	(%rdx,%rdx,2), %rax
	salq	$2, %rax
	addq	%rcx, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	scale, .-scale
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
