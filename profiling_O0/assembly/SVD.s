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
	.align	2
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_mul, %function
SVD_matrix_mul:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L7:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L3
.L6:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]	@ float
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L4
.L5:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s13, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-28]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmul.f32	s15, s13, s15
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L4:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L5
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L3:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L6
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L7
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_mul, .-SVD_matrix_mul
	.align	2
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_trans, %function
SVD_matrix_trans:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #172
	str	r0, [fp, #-168]
	str	r1, [fp, #-172]
	ldr	r3, [fp, #-168]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #160
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #160
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #96
	vstmia	r3, {d16-d23}
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L10
.L11:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-172]
	add	r3, r2, r3
	mov	r1, r3
	sub	r3, fp, #4
	sub	r2, r3, #96
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	add	r3, r2, r3
	vld1.64	{d16-d17}, [r3:64]
	str	r1, [fp, #-16]
	vstr	d16, [fp, #-36]
	vstr	d17, [fp, #-28]
	ldr	r3, [fp, #-16]
	vldr	d16, [fp, #-36]
	vldr	d17, [fp, #-28]
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L10:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L11
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_trans, .-SVD_matrix_trans
	.align	2
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_copy, %function
SVD_matrix_copy:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #68
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L13
.L15:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	vld1.32	{d16-d17}, [r3]
	vstr	d16, [fp, #-28]
	vstr	d17, [fp, #-20]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	vldr	d16, [fp, #-28]
	vldr	d17, [fp, #-20]
	vstr	d16, [fp, #-52]
	vstr	d17, [fp, #-44]
	ldr	r3, [fp, #-32]
	vldr	d16, [fp, #-52]
	vldr	d17, [fp, #-44]
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L13:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L15
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_copy, .-SVD_matrix_copy
	.align	2
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_isDiagonal, %function
SVD_matrix_isDiagonal:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L17
.L23:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L18
.L22:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	beq	.L19
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmov.f32	s0, s15
	bl	SVD_abs
	vmov.f32	s14, s0
	vldr.32	s15, .L25
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	blt	.L19
	mov	r3, #0
	b	.L21
.L19:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L18:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L22
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L17:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L23
	mov	r3, #1
.L21:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L26:
	.align	2
.L25:
	.word	953267991
	.size	SVD_matrix_isDiagonal, .-SVD_matrix_isDiagonal
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
	.syntax unified
	.arm
	.fpu neon
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
	b	.L28
.L33:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L29
.L32:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L30
.L31:
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
.L30:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	ble	.L31
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L29:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L32
.L28:
	ldr	r0, [fp, #-584]
	bl	SVD_matrix_isDiagonal
	mov	r3, r0
	cmp	r3, #0
	beq	.L33
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L34
.L39:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L35
.L38:
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
	vldr.32	s14, .L41
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L36
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]	@ float
.L36:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L35:
	ldr	r3, [fp, #-28]
	cmp	r3, #3
	ble	.L38
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L34:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	ble	.L39
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L42:
	.align	2
.L41:
	.word	953267991
	.size	SVD_decompose, .-SVD_decompose
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
