	.file	"Test_scale_3.c"
	.text
	.globl	scale
	.type	scale, @function
scale:
.LFB0:
	.cfi_startproc
	movq	%rdi, %rax
	salq	$63, %rax
	subq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	scale, .-scale
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
