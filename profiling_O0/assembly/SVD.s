	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"SVD.c"
	.text
	.data
	.align	2
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
	.text
	.align	2
	.global	SVD_decompose
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_decompose, %function
SVD_decompose:
	@ args = 0, pretend = 0, frame = 576
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #580
	str	r0, [fp, #-576]
	str	r1, [fp, #-580]
	str	r2, [fp, #-584]
	str	r3, [fp, #-588]
	sub	r3, fp, #188
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #252
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #316
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	ldr	r1, [fp, #-584]
	ldr	r0, [fp, #-576]
	bl	SVD_matrix_copy
	ldr	r1, [fp, #-580]
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #124
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	mov	r3, #0
	str	r3, [fp, #-32]	@ float
	mov	r3, #0
	str	r3, [fp, #-36]	@ float
	mov	r3, #0
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	str	r3, [fp, #-44]	@ float
	mov	r3, #0
	str	r3, [fp, #-48]	@ float
	mov	r3, #0
	str	r3, [fp, #-52]	@ float
	mov	r3, #0
	str	r3, [fp, #-56]	@ float
	mov	r3, #0
	str	r3, [fp, #-60]	@ float
	b	.L2
.L7:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L3
.L6:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L4
.L5:
	sub	r3, fp, #188
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #252
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #316
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #380
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #444
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #508
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #572
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-32]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-36]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-40]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-44]
	vldr.32	s1, [fp, #-40]
	vldr.32	s0, [fp, #-32]
	bl	SVD_atan
	vstr.32	s0, [fp, #-48]
	vldr.32	s1, [fp, #-44]
	vldr.32	s0, [fp, #-36]
	bl	SVD_atan
	vstr.32	s0, [fp, #-52]
	vldr.32	s14, [fp, #-48]
	vldr.32	s15, [fp, #-52]
	vsub.f32	s14, s14, s15
	vmov.f32	s13, #2.0e+0
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [fp, #-60]
	vldr.32	s14, [fp, #-48]
	vldr.32	s15, [fp, #-60]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-56]
	vldr.32	s0, [fp, #-60]
	bl	SVD_cos
	vmov.f32	s15, s0
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #368
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-60]
	bl	SVD_sin
	vmov.f32	s15, s0
	vneg.f32	s15, s15
	ldr	r3, [fp, #-16]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #368
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-60]
	bl	SVD_sin
	vmov.f32	s15, s0
	ldr	r3, [fp, #-20]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #368
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-60]
	bl	SVD_cos
	vmov.f32	s15, s0
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #368
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_cos
	vmov.f32	s15, s0
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #432
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_sin
	vmov.f32	s15, s0
	vneg.f32	s15, s15
	ldr	r3, [fp, #-16]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #432
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_sin
	vmov.f32	s15, s0
	ldr	r3, [fp, #-20]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #432
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_cos
	vmov.f32	s15, s0
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #432
	vstr.32	s15, [r3]
	sub	r2, fp, #508
	sub	r3, fp, #380
	mov	r1, r2
	mov	r0, r3
	bl	SVD_matrix_trans
	sub	r2, fp, #572
	sub	r3, fp, #444
	mov	r1, r2
	mov	r0, r3
	bl	SVD_matrix_trans
	sub	r2, fp, #188
	sub	r3, fp, #508
	mov	r1, r3
	ldr	r0, [fp, #-580]
	bl	SVD_matrix_mul
	sub	r2, fp, #316
	sub	r1, fp, #124
	sub	r3, fp, #444
	mov	r0, r3
	bl	SVD_matrix_mul
	sub	r2, fp, #252
	sub	r3, fp, #380
	ldr	r1, [fp, #-584]
	mov	r0, r3
	bl	SVD_matrix_mul
	sub	r1, fp, #572
	sub	r3, fp, #252
	ldr	r2, [fp, #-584]
	mov	r0, r3
	bl	SVD_matrix_mul
	sub	r2, fp, #124
	sub	r3, fp, #316
	mov	r1, r2
	mov	r0, r3
	bl	SVD_matrix_copy
	sub	r3, fp, #124
	ldr	r1, [fp, #-588]
	mov	r0, r3
	bl	SVD_matrix_trans
	sub	r3, fp, #188
	ldr	r1, [fp, #-580]
	mov	r0, r3
	bl	SVD_matrix_copy
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L4:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	ble	.L5
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L3:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L6
.L2:
	ldr	r0, [fp, #-584]
	bl	SVD_matrix_isDiagonal
	mov	r3, r0
	cmp	r3, #0
	beq	.L7
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L8
.L13:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L9
.L12:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r4, r2, r3
	vmov.f32	s0, s15
	bl	SVD_abs
	vmov.f32	s15, s0
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r4, r3
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vldr.32	s14, .L15
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L10
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]	@ float
.L10:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L9:
	ldr	r3, [fp, #-28]
	cmp	r3, #3
	ble	.L12
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L8:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	ble	.L13
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L16:
	.align	2
.L15:
	.word	953267991
	.size	SVD_decompose, .-SVD_decompose
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
