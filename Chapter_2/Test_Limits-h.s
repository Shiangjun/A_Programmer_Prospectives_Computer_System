	.file	"Test_Limits-h.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"The number of bits in a byte %d\n"
	.align 8
.LC1:
	.string	"The minimum value of signed char = %d\n"
	.align 8
.LC2:
	.string	"The maximum value of signed char = %d\n"
	.align 8
.LC3:
	.string	"The maximum value of unsigned char = %d\n"
	.align 8
.LC4:
	.string	"The minimum value of short int = %d\n"
	.align 8
.LC5:
	.string	"The maximum value of short int = %d\n"
	.align 8
.LC6:
	.string	"The minimum value of int = %d\n"
	.align 8
.LC7:
	.string	"The maximum value of int = %d\n"
	.align 8
.LC8:
	.string	"The minimum value of char = %d\n"
	.align 8
.LC9:
	.string	"The maximum value of char = %d\n"
	.align 8
.LC10:
	.string	"The minimum value of long = %ld\n"
	.align 8
.LC11:
	.string	"The maximum value of long = %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$8, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$-128, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$127, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$255, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$-32768, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$32767, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$-2147483648, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	$2147483647, %esi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movl	$-128, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movl	$127, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movabsq	$-9223372036854775808, %rsi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movabsq	$9223372036854775807, %rsi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
