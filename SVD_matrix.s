	.file	"SVD_matrix.c"
	.text
	.globl	SVD_matrix_mul
	.type	SVD_matrix_mul, @function
SVD_matrix_mul:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2
.L5:
	movl	$0, -20(%rbp)
	jmp	.L3
.L4:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SVD_matrix_dot
	movd	%xmm0, %edx
	movl	-20(%rbp), %eax
	cltq
	movl	%edx, (%rbx,%rax,4)
	addl	$1, -20(%rbp)
.L3:
	cmpl	$3, -20(%rbp)
	jle	.L4
	addl	$1, -24(%rbp)
.L2:
	cmpl	$3, -24(%rbp)
	jle	.L5
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	SVD_matrix_mul, .-SVD_matrix_mul
	.globl	SVD_matrix_trans
	.type	SVD_matrix_trans, @function
SVD_matrix_trans:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L7
.L10:
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movss	(%rcx,%rax,4), %xmm0
	movl	-8(%rbp), %eax
	cltq
	movss	%xmm0, (%rdx,%rax,4)
	addl	$1, -4(%rbp)
.L8:
	cmpl	$3, -4(%rbp)
	jle	.L9
	addl	$1, -8(%rbp)
.L7:
	cmpl	$3, -8(%rbp)
	jle	.L10
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	SVD_matrix_trans, .-SVD_matrix_trans
	.globl	SVD_matrix_copy
	.type	SVD_matrix_copy, @function
SVD_matrix_copy:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L12
.L15:
	movl	$0, -4(%rbp)
	jmp	.L13
.L14:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movss	(%rcx,%rax,4), %xmm0
	movl	-4(%rbp), %eax
	cltq
	movss	%xmm0, (%rdx,%rax,4)
	addl	$1, -4(%rbp)
.L13:
	cmpl	$3, -4(%rbp)
	jle	.L14
	addl	$1, -8(%rbp)
.L12:
	cmpl	$3, -8(%rbp)
	jle	.L15
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	SVD_matrix_copy, .-SVD_matrix_copy
	.globl	SVD_matrix_dot
	.type	SVD_matrix_dot, @function
SVD_matrix_dot:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	-8(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	addl	$1, -4(%rbp)
.L17:
	cmpl	$3, -4(%rbp)
	jle	.L18
	movss	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	SVD_matrix_dot, .-SVD_matrix_dot
	.globl	SVD_matrix_equal
	.type	SVD_matrix_equal, @function
SVD_matrix_equal:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$1, -9(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L21
.L27:
	movl	$0, -4(%rbp)
	jmp	.L22
.L26:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	call	SVD_abs@PLT
	ucomiss	.LC1(%rip), %xmm0
	jbe	.L30
	movb	$0, -9(%rbp)
	jmp	.L25
.L30:
	addl	$1, -4(%rbp)
.L22:
	cmpl	$3, -4(%rbp)
	jle	.L26
.L25:
	addl	$1, -8(%rbp)
.L21:
	cmpl	$3, -8(%rbp)
	jle	.L27
	movzbl	-9(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	SVD_matrix_equal, .-SVD_matrix_equal
	.globl	SVD_matrix_isDiagonal
	.type	SVD_matrix_isDiagonal, @function
SVD_matrix_isDiagonal:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L32
.L38:
	movl	$0, -4(%rbp)
	jmp	.L33
.L37:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L34
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -28(%rbp)
	movss	-28(%rbp), %xmm0
	call	SVD_abs@PLT
	ucomiss	.LC1(%rip), %xmm0
	jb	.L34
	movl	$0, %eax
	jmp	.L36
.L34:
	addl	$1, -4(%rbp)
.L33:
	cmpl	$3, -4(%rbp)
	jle	.L37
	addl	$1, -8(%rbp)
.L32:
	cmpl	$3, -8(%rbp)
	jle	.L38
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SVD_matrix_isDiagonal, .-SVD_matrix_isDiagonal
	.section	.rodata
.LC2:
	.string	"%10.5f %10.5f %10.5f %10.5f\n"
	.text
	.globl	SVD_matrix_print
	.type	SVD_matrix_print, @function
SVD_matrix_print:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movq	-8(%rbp), %rax
	movss	8(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movq	-8(%rbp), %rax
	movss	4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movss	8(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movss	4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movss	8(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movss	4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movss	8(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movss	4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	SVD_matrix_print, .-SVD_matrix_print
	.section	.rodata
	.align 4
.LC1:
	.long	953267991
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
