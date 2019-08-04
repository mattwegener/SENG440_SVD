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
	.file	"SVD_math.c"
	.text
	.align	2
	.global	SVD_tan
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_tan, %function
SVD_tan:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	vstr.32	s0, [fp, #-16]
	vldr.32	s0, [fp, #-16]
	bl	tanf
	vstr.32	s0, [fp, #-8]
	ldr	r3, [fp, #-8]	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	SVD_tan, .-SVD_tan
	.align	2
	.global	SVD_cos
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_cos, %function
SVD_cos:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	vstr.32	s0, [fp, #-16]
	vldr.32	s0, [fp, #-16]
	bl	cosf
	vstr.32	s0, [fp, #-8]
	ldr	r3, [fp, #-8]	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	SVD_cos, .-SVD_cos
	.align	2
	.global	SVD_sin
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_sin, %function
SVD_sin:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	vstr.32	s0, [fp, #-16]
	vldr.32	s0, [fp, #-16]
	bl	sinf
	vstr.32	s0, [fp, #-8]
	ldr	r3, [fp, #-8]	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	SVD_sin, .-SVD_sin
	.align	2
	.global	SVD_atan
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_atan, %function
SVD_atan:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	vstr.32	s0, [fp, #-8]
	vstr.32	s1, [fp, #-12]
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vdiv.f32	s13, s14, s15
	vmov.f32	s0, s13
	bl	atanf
	vmov.f32	s15, s0
	vmov.f32	s0, s15
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	SVD_atan, .-SVD_atan
	.align	2
	.global	SVD_abs
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_abs, %function
SVD_abs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vldr.32	s15, [fp, #-8]
	vabs.f32	s15, s15
	vmov.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_abs, .-SVD_abs
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
