	.file	"Test_var_ele.c"
	.text
	.globl	var_ele
	.type	var_ele, @function
var_ele:
.LFB0:
	.cfi_startproc
	imulq	%rdx, %rdi
	leaq	(%rsi,%rdi,4), %rax
	movl	(%rax,%rcx,4), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	var_ele, .-var_ele
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
