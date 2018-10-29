	.file	"Test_remdiv.c"
	.text
	.globl	remdiv
	.type	remdiv, @function
remdiv:
.LFB0:
	.cfi_startproc
	movq	%rdx, %r8
	movq	%rdi, %rax
	cqto
	idivq	%rsi
	movq	%rax, (%r8)
	movq	%rdx, (%rcx)
	ret
	.cfi_endproc
.LFE0:
	.size	remdiv, .-remdiv
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
