	.file	"Test_cread.c"
	.text
	.globl	cread
	.type	cread, @function
cread:
.LFB0:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L3
	movq	(%rdi), %rax
	ret
.L3:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	cread, .-cread
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
