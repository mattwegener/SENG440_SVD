	.file	"SVD_math.c"
	.text
	.globl	SVD_tan
	.type	SVD_tan, @function
SVD_tan:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	call	tanf@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	-4(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	SVD_tan, .-SVD_tan
	.globl	SVD_cos
	.type	SVD_cos, @function
SVD_cos:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	-4(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	SVD_cos, .-SVD_cos
	.globl	SVD_sin
	.type	SVD_sin, @function
SVD_sin:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	call	sinf@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	-4(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	SVD_sin, .-SVD_sin
	.globl	SVD_atan
	.type	SVD_atan, @function
SVD_atan:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0
	divss	-8(%rbp), %xmm0
	call	atanf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	SVD_atan, .-SVD_atan
	.globl	SVD_abs
	.type	SVD_abs, @function
SVD_abs:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm1
	movss	.LC0(%rip), %xmm0
	andps	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	SVD_abs, .-SVD_abs
	.section	.rodata
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
