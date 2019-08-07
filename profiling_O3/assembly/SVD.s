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
	.fpu neon
	.type	SVD_decompose, %function
SVD_decompose:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9}
	sub	sp, sp, #92
	mov	r5, r1
	str	r1, [sp, #20]
	mov	r1, r2
	mov	r4, r3
	mov	fp, r2
	str	r3, [sp, #16]
	bl	SVD_matrix_copy
	movw	r0, #:lower16:.LANCHOR0
	mov	r1, r5
	movt	r0, #:upper16:.LANCHOR0
	bl	SVD_matrix_copy
	movw	r0, #:lower16:.LANCHOR0
	mov	r1, r4
	mov	r4, r0
	movt	r0, #:upper16:.LANCHOR0
	bl	SVD_matrix_copy
	mov	r3, r4
	mov	r0, fp
	movt	r3, #:upper16:.LANCHOR0
	str	r3, [sp, #4]
	bl	SVD_matrix_isDiagonal
	cmp	r0, #0
	vmov.f32	s19, #5.0e-1
	bne	.L16
.L5:
	mov	r10, fp
	str	r0, [sp, #12]
	str	fp, [sp, #8]
	add	r6, sp, #28
.L4:
	ldr	r3, [sp, #12]
	sub	r5, r6, #4
	add	r3, r3, #1
	mov	r4, r3
	mov	r8, r5
	mov	r7, r6
	mov	r9, r10
	str	r3, [sp, #12]
.L3:
	ldr	r0, [sp, #4]
	add	r1, sp, #24
	bl	SVD_matrix_copy
	ldr	r1, [sp, #8]
	lsl	r3, r4, #2
	add	r2, r3, r4
	add	r2, fp, r2, lsl #2
	add	r3, r1, r3
	add	r9, r9, #16
	vldr.32	s15, [r3]
	vldr.32	s1, [r2]
	vldr.32	s14, [r10]
	vldr.32	s0, [r9]
	vadd.f32	s18, s1, s14
	vsub.f32	s17, s0, s15
	vsub.f32	s1, s1, s14
	vadd.f32	s0, s0, s15
	bl	SVD_atan
	vmov.f32	s1, s18
	vmov.f32	s16, s0
	vmov.f32	s0, s17
	bl	SVD_atan
	vsub.f32	s0, s16, s0
	vmul.f32	s17, s0, s19
	vmov.f32	s0, s17
	bl	SVD_cos
	vstr.32	s0, [r6, #-4]
	vmov.f32	s0, s17
	bl	SVD_sin
	vneg.f32	s15, s0
	vmov.f32	s0, s17
	vstr.32	s15, [r7]
	bl	SVD_sin
	vstr.32	s0, [r5, #16]
	vmov.f32	s0, s17
	bl	SVD_cos
	mov	r1, fp
	vstr.32	s0, [r8, #20]
	add	r0, sp, #24
	bl	SVD_matrix_in_place_left_mul
	vsub.f32	s16, s16, s17
	add	r1, sp, #24
	ldr	r0, [sp, #20]
	bl	SVD_matrix_in_place_right_mul_by_trans
	add	r1, sp, #24
	ldr	r0, [sp, #4]
	bl	SVD_matrix_copy
	vmov.f32	s0, s16
	bl	SVD_cos
	vstr.32	s0, [r6, #-4]
	vmov.f32	s0, s16
	bl	SVD_sin
	vneg.f32	s15, s0
	vmov.f32	s0, s16
	vstmia.32	r7!, {s15}
	bl	SVD_sin
	add	r5, r5, #16
	vstr.32	s0, [r5]
	vmov.f32	s0, s16
	bl	SVD_cos
	add	r8, r8, #20
	add	r1, sp, #24
	mov	r0, fp
	vstr.32	s0, [r8]
	bl	SVD_matrix_in_place_right_mul_by_trans
	add	r4, r4, #1
	ldr	r1, [sp, #16]
	add	r0, sp, #24
	bl	SVD_matrix_in_place_left_mul
	cmp	r4, #4
	bne	.L3
	ldr	r3, [sp, #12]
	add	r10, r10, #20
	cmp	r3, #3
	ldr	r3, [sp, #8]
	add	r6, r6, #20
	add	r3, r3, #16
	str	r3, [sp, #8]
	bne	.L4
	mov	r0, fp
	bl	SVD_matrix_isDiagonal
	cmp	r0, #0
	beq	.L5
.L16:
	ldr	r0, [sp, #16]
	bl	SVD_matrix_in_place_trans
	vldr.32	s16, .L17
	mov	r7, #0
	add	r6, fp, #16
	add	r4, fp, #80
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
	add	sp, sp, #92
	@ sp needed
	vldm	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L18:
	.align	2
.L17:
	.word	953267991
	.size	SVD_decompose, .-SVD_decompose
	.global	I
	.data
	.align	3
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
