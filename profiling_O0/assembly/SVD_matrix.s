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
	.file	"SVD_matrix.c"
	.text
	.align	2
	.global	SVD_matrix_mul
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_mul, %function
SVD_matrix_mul:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L5:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L3
.L4:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-32]
	add	r4, r2, r3
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-24]
	bl	SVD_matrix_dot
	vmov.f32	s15, s0
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r4, r3
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L3:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	ble	.L4
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L5
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	SVD_matrix_mul, .-SVD_matrix_mul
	.align	2
	.global	SVD_matrix_trans
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_trans, %function
SVD_matrix_trans:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L7
.L10:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L8
.L9:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-20]
	add	r1, r1, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r1, r3
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L8:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L9
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L7:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L10
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_trans, .-SVD_matrix_trans
	.align	2
	.global	SVD_matrix_copy
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_copy, %function
SVD_matrix_copy:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L12
.L15:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L13
.L14:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-20]
	add	r1, r1, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r1, r3
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L13:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L14
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L12:
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
	.global	SVD_matrix_dot
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_dot, %function
SVD_matrix_dot:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]	@ float
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L17
.L18:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmul.f32	s15, s14, s15
	vldr.32	s14, [fp, #-8]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L17:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L18
	ldr	r3, [fp, #-8]	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_dot, .-SVD_matrix_dot
	.align	2
	.global	SVD_matrix_equal
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_equal, %function
SVD_matrix_equal:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #1
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L21
.L27:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L22
.L26:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-28]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	vmov.f32	s0, s15
	bl	SVD_abs
	vmov.f32	s14, s0
	vldr.32	s15, .L31
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L30
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L25
.L30:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L22:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L26
.L25:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L21:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L27
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L32:
	.align	2
.L31:
	.word	953267991
	.size	SVD_matrix_equal, .-SVD_matrix_equal
	.align	2
	.global	SVD_matrix_isDiagonal
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
	b	.L34
.L40:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L35
.L39:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	beq	.L36
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
	vldr.32	s15, .L42
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	blt	.L36
	mov	r3, #0
	b	.L38
.L36:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L35:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L39
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L34:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L40
	mov	r3, #1
.L38:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L43:
	.align	2
.L42:
	.word	953267991
	.size	SVD_matrix_isDiagonal, .-SVD_matrix_isDiagonal
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
