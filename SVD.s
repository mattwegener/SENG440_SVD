	.file	"SVD.c"
	.text
	.data
	.align 32
	.type	I, @object
	.size	I, 64
I:
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
	.globl	SVD_decompose
	.type	SVD_decompose, @function
SVD_decompose:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$632, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	%rdx, -616(%rbp)
	movq	%rcx, -624(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -480(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -456(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -440(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -416(%rbp)
	movq	$0, -408(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	-616(%rbp), %rdx
	movq	-600(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_copy@PLT
	movq	-608(%rbp), %rax
	movq	%rax, %rsi
	leaq	I(%rip), %rdi
	call	SVD_matrix_copy@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rsi
	leaq	I(%rip), %rdi
	call	SVD_matrix_copy@PLT
	pxor	%xmm0, %xmm0
	movss	%xmm0, -576(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -572(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -568(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -564(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -560(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -556(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -552(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -548(%rbp)
	jmp	.L2
.L7:
	movl	$0, -592(%rbp)
	jmp	.L3
.L6:
	movl	-592(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -588(%rbp)
	jmp	.L4
.L5:
	leaq	-480(%rbp), %rax
	movq	%rax, %rsi
	leaq	I(%rip), %rdi
	call	SVD_matrix_copy@PLT
	leaq	-416(%rbp), %rax
	movq	%rax, %rsi
	leaq	I(%rip), %rdi
	call	SVD_matrix_copy@PLT
	leaq	-352(%rbp), %rax
	movq	%rax, %rsi
	leaq	I(%rip), %rdi
	call	SVD_matrix_copy@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	leaq	I(%rip), %rdi
	call	SVD_matrix_copy@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	leaq	I(%rip), %rdi
	call	SVD_matrix_copy@PLT
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	leaq	I(%rip), %rdi
	call	SVD_matrix_copy@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	I(%rip), %rdi
	call	SVD_matrix_copy@PLT
	movl	-588(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-592(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movl	-592(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-588(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -576(%rbp)
	movl	-588(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-592(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movl	-592(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-588(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -572(%rbp)
	movl	-588(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-588(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movl	-592(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-592(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -568(%rbp)
	movl	-588(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-588(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movl	-592(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-592(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -564(%rbp)
	movss	-568(%rbp), %xmm0
	movl	-576(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_atan@PLT
	movd	%xmm0, %eax
	movl	%eax, -560(%rbp)
	movss	-564(%rbp), %xmm0
	movl	-572(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_atan@PLT
	movd	%xmm0, %eax
	movl	%eax, -556(%rbp)
	movss	-560(%rbp), %xmm0
	subss	-556(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -548(%rbp)
	movss	-560(%rbp), %xmm0
	subss	-548(%rbp), %xmm0
	movss	%xmm0, -552(%rbp)
	movl	-548(%rbp), %eax
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_cos@PLT
	movd	%xmm0, %ecx
	movl	-592(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$272, %rax
	movl	%ecx, (%rax)
	movl	-548(%rbp), %eax
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_sin@PLT
	movaps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	xorps	%xmm1, %xmm0
	movl	-588(%rbp), %eax
	cltq
	movl	-592(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	%xmm0, -288(%rbp,%rax,4)
	movl	-548(%rbp), %eax
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_sin@PLT
	movd	%xmm0, %eax
	movl	-592(%rbp), %edx
	movslq	%edx, %rdx
	movl	-588(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, -288(%rbp,%rdx,4)
	movl	-548(%rbp), %eax
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_cos@PLT
	movd	%xmm0, %ecx
	movl	-588(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$272, %rax
	movl	%ecx, (%rax)
	movl	-552(%rbp), %eax
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_cos@PLT
	movd	%xmm0, %ecx
	movl	-592(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$208, %rax
	movl	%ecx, (%rax)
	movl	-552(%rbp), %eax
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_sin@PLT
	movaps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	xorps	%xmm1, %xmm0
	movl	-588(%rbp), %eax
	cltq
	movl	-592(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	%xmm0, -224(%rbp,%rax,4)
	movl	-552(%rbp), %eax
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_sin@PLT
	movd	%xmm0, %eax
	movl	-592(%rbp), %edx
	movslq	%edx, %rdx
	movl	-588(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, -224(%rbp,%rdx,4)
	movl	-552(%rbp), %eax
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_cos@PLT
	movd	%xmm0, %ecx
	movl	-588(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$208, %rax
	movl	%ecx, (%rax)
	leaq	-160(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_trans@PLT
	leaq	-96(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_trans@PLT
	leaq	-480(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-608(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_mul@PLT
	leaq	-352(%rbp), %rdx
	leaq	-544(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_mul@PLT
	leaq	-416(%rbp), %rdx
	movq	-616(%rbp), %rcx
	leaq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_mul@PLT
	movq	-616(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-416(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_mul@PLT
	leaq	-544(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_copy@PLT
	movq	-624(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_trans@PLT
	movq	-608(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SVD_matrix_copy@PLT
	addl	$1, -588(%rbp)
.L4:
	cmpl	$3, -588(%rbp)
	jle	.L5
	addl	$1, -592(%rbp)
.L3:
	cmpl	$2, -592(%rbp)
	jle	.L6
.L2:
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	SVD_matrix_isDiagonal@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L7
	movl	$0, -584(%rbp)
	jmp	.L8
.L13:
	movl	$0, -580(%rbp)
	jmp	.L9
.L12:
	movl	-584(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-580(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	-584(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-616(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	%eax, -628(%rbp)
	movss	-628(%rbp), %xmm0
	call	SVD_abs@PLT
	movd	%xmm0, %edx
	movl	-580(%rbp), %eax
	cltq
	movl	%edx, (%rbx,%rax,4)
	movl	-584(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-580(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movss	.LC3(%rip), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L10
	movl	-584(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movl	-580(%rbp), %eax
	cltq
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rax,4)
.L10:
	addl	$1, -580(%rbp)
.L9:
	cmpl	$3, -580(%rbp)
	jle	.L12
	addl	$1, -584(%rbp)
.L8:
	cmpl	$3, -584(%rbp)
	jle	.L13
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	addq	$632, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	SVD_decompose, .-SVD_decompose
	.section	.rodata
	.align 4
.LC1:
	.long	1073741824
	.align 16
.LC2:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC3:
	.long	953267991
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
