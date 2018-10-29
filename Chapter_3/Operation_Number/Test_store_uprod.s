	.file	"Test_store_uprod.c"
	.text
	.globl	store_uprod
	.type	store_uprod, @function
store_uprod:
.LFB4:
	.cfi_startproc
	movq	%rsi, %rax
	mulq	%rdx
	movq	%rax, (%rdi)
	movq	%rdx, 8(%rdi)
	ret
	.cfi_endproc
.LFE4:
	.size	store_uprod, .-store_uprod
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
