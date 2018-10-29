	.file	"Test_mstore.c"
	.text
	.globl	mult2
	.type	mult2, @function
mult2:
.LFB11:
	.cfi_startproc
	movq	%rdi, %rax
	imulq	%rsi, %rax
	ret
	.cfi_endproc
.LFE11:
	.size	mult2, .-mult2
	.globl	multstore
	.type	multstore, @function
multstore:
.LFB12:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rbx
	call	mult2
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	multstore, .-multstore
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
