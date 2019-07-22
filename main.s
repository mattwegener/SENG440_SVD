	.file	"main.c"
	.text
	.globl	Min
	.data
	.align 32
	.type	Min, @object
	.size	Min, 64
Min:
	.long	1106771968
	.long	1117388800
	.long	3241148416
	.long	1104150528
	.long	3257401344
	.long	1096810496
	.long	1117650944
	.long	3260284928
	.long	3263692800
	.long	3240099840
	.long	1110704128
	.long	1119092736
	.long	1107820544
	.long	1098907648
	.long	1108869120
	.long	3247964160
	.globl	Uout
	.align 32
	.type	Uout, @object
	.size	Uout, 64
Uout:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.globl	Vout
	.align 32
	.type	Vout, @object
	.size	Vout, 64
Vout:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.globl	Sout
	.align 32
	.type	Sout, @object
	.size	Sout, 64
Sout:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
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
	leaq	Vout(%rip), %rcx
	leaq	Sout(%rip), %rdx
	leaq	Uout(%rip), %rsi
	leaq	Min(%rip), %rdi
	call	SVD_decompose@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
