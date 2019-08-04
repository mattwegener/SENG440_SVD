	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"SVD.c"
	.text
	.align	2
	.global	SVD_decompose
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_decompose, %function
SVD_decompose:
	@ args = 0, pretend = 0, frame = 536
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9}
	mov	r9, r2
	mov	r4, r0
	sub	sp, sp, #540
	mov	r5, r1
	str	r1, [sp, #12]
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #88
	str	r3, [sp, #20]
	bl	memset
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #152
	bl	memset
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #216
	bl	memset
	mov	r1, r9
	mov	r0, r4
	bl	SVD_matrix_copy
	movw	r0, #:lower16:.LANCHOR0
	mov	r1, r5
	movt	r0, #:upper16:.LANCHOR0
	bl	SVD_matrix_copy
	movw	r0, #:lower16:.LANCHOR0
	add	r1, sp, #24
	mov	r10, r0
	movt	r0, #:upper16:.LANCHOR0
	bl	SVD_matrix_copy
	mov	r0, r9
	bl	SVD_matrix_isDiagonal
	cmp	r0, #0
	movt	r10, #:upper16:.LANCHOR0
	bne	.L16
.L5:
	mov	r3, #16
	vmov.f32	s19, #5.0e-1
	str	r3, [sp, #16]
	add	r3, sp, #284
	str	r3, [sp, #4]
	add	r3, sp, #348
	add	fp, r9, #4
	str	r3, [sp, #8]
.L4:
	ldr	r3, [sp, #16]
	ldmib	sp, {r7, r8}
	mov	r6, fp
	mov	r5, r3
	add	r4, r3, #4
.L3:
	add	r1, sp, #88
	mov	r0, r10
	bl	SVD_matrix_copy
	add	r1, sp, #152
	mov	r0, r10
	bl	SVD_matrix_copy
	add	r1, sp, #216
	mov	r0, r10
	bl	SVD_matrix_copy
	add	r1, sp, #280
	mov	r0, r10
	bl	SVD_matrix_copy
	add	r1, sp, #344
	mov	r0, r10
	bl	SVD_matrix_copy
	add	r1, sp, #408
	mov	r0, r10
	bl	SVD_matrix_copy
	add	r1, sp, #472
	mov	r0, r10
	bl	SVD_matrix_copy
	add	r2, r9, r5
	add	r3, r9, r4
	vldmia.32	r6!, {s14}
	vldr.32	s0, [r2]
	vldr.32	s15, [fp, #-4]
	vldr.32	s1, [r3]
	vsub.f32	s17, s0, s14
	vadd.f32	s18, s1, s15
	vadd.f32	s0, s0, s14
	vsub.f32	s1, s1, s15
	bl	SVD_atan
	vmov.f32	s1, s18
	vmov.f32	s16, s0
	vmov.f32	s0, s17
	bl	SVD_atan
	vsub.f32	s0, s16, s0
	vmul.f32	s17, s0, s19
	vmov.f32	s0, s17
	bl	SVD_cos
	ldr	r3, [sp, #4]
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s17
	bl	SVD_sin
	vneg.f32	s15, s0
	vmov.f32	s0, s17
	vstmia.32	r7!, {s15}
	bl	SVD_sin
	add	r3, sp, #280
	add	r3, r3, r5
	vstr.32	s0, [r3]
	vmov.f32	s0, s17
	bl	SVD_cos
	vsub.f32	s16, s16, s17
	add	r3, sp, #280
	add	r3, r3, r4
	vstr.32	s0, [r3]
	vmov.f32	s0, s16
	bl	SVD_cos
	ldr	r3, [sp, #8]
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s16
	bl	SVD_sin
	vneg.f32	s15, s0
	vmov.f32	s0, s16
	vstmia.32	r8!, {s15}
	bl	SVD_sin
	add	r3, sp, #344
	add	r3, r3, r5
	vstr.32	s0, [r3]
	vmov.f32	s0, s16
	bl	SVD_cos
	add	r3, sp, #344
	add	r3, r3, r4
	vstr.32	s0, [r3]
	add	r1, sp, #408
	add	r0, sp, #280
	bl	SVD_matrix_trans
	add	r1, sp, #472
	add	r0, sp, #344
	bl	SVD_matrix_trans
	add	r2, sp, #88
	add	r1, sp, #408
	ldr	r0, [sp, #12]
	bl	SVD_matrix_mul
	add	r2, sp, #216
	add	r1, sp, #24
	add	r0, sp, #344
	bl	SVD_matrix_mul
	add	r2, sp, #152
	mov	r1, r9
	add	r0, sp, #280
	bl	SVD_matrix_mul
	add	r3, sp, #472
	mov	r1, r3
	mov	r2, r9
	add	r0, sp, #152
	bl	SVD_matrix_mul
	add	r1, sp, #24
	add	r0, sp, #216
	bl	SVD_matrix_copy
	ldr	r1, [sp, #20]
	add	r0, sp, #24
	bl	SVD_matrix_trans
	add	r4, r4, #20
	ldr	r1, [sp, #12]
	add	r0, sp, #88
	bl	SVD_matrix_copy
	cmp	r4, #80
	add	r5, r5, #16
	bne	.L3
	ldr	r3, [sp, #16]
	add	fp, fp, #20
	add	r3, r3, #20
	str	r3, [sp, #16]
	cmp	r3, #76
	ldr	r3, [sp, #4]
	add	r3, r3, #20
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	add	r3, r3, #20
	str	r3, [sp, #8]
	bne	.L4
	mov	r0, r9
	bl	SVD_matrix_isDiagonal
	cmp	r0, #0
	beq	.L5
.L16:
	vldr.32	s16, .L17
	mov	r7, #0
	add	r6, r9, #16
	add	r4, r9, #80
.L6:
	sub	r5, r6, #16
.L9:
	vldmia.32	r5!, {s0}
	bl	SVD_abs
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, FPSCR
	vstrpl.32	s0, [r5, #-4]
	strmi	r7, [r5, #-4]	@ float
	cmp	r5, r6
	bne	.L9
	add	r6, r5, #16
	cmp	r4, r6
	bne	.L6
	add	sp, sp, #540
	@ sp needed
	vldm	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L18:
	.align	2
.L17:
	.word	953267991
	.size	SVD_decompose, .-SVD_decompose
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	I, %object
	.size	I, 64
I:
	.word	1065353216
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1065353216
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1065353216
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1065353216
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
