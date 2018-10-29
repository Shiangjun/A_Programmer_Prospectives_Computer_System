	.file	"Test_Switch_eg_impl.c"
	.text
	.globl	switch_eg_impl
	.type	switch_eg_impl, @function
switch_eg_impl:
.LFB0:
	.cfi_startproc
	subq	$100, %rsi
	cmpq	$6, %rsi
	ja	.L2
	jmp	*jt.1726(,%rsi,8)
.L3:
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%rdi,%rax,4), %rdi
	jmp	.L4
.L5:
	addq	$10, %rdi
.L6:
	addq	$11, %rdi
	jmp	.L4
.L7:
	imulq	%rdi, %rdi
	jmp	.L4
.L2:
	movl	$0, %edi
.L4:
	movq	%rdi, (%rdx)
	ret
	.cfi_endproc
.LFE0:
	.size	switch_eg_impl, .-switch_eg_impl
	.section	.rodata
	.align 32
	.type	jt.1726, @object
	.size	jt.1726, 56
jt.1726:
	.quad	.L3
	.quad	.L2
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L2
	.quad	.L7
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
