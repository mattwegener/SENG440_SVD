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
	.file	"SVD_math.c"
	.text
	.align	2
	.global	SVD_tan
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_tan, %function
SVD_tan:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	tanf
	.size	SVD_tan, .-SVD_tan
	.align	2
	.global	SVD_cos
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_cos, %function
SVD_cos:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	cosf
	.size	SVD_cos, .-SVD_cos
	.align	2
	.global	SVD_sin
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_sin, %function
SVD_sin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	sinf
	.size	SVD_sin, .-SVD_sin
	.align	2
	.global	SVD_atan
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_atan, %function
SVD_atan:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vdiv.f32	s0, s0, s1
	b	atanf
	.size	SVD_atan, .-SVD_atan
	.align	2
	.global	SVD_abs
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_abs, %function
SVD_abs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vabs.f32	s0, s0
	bx	lr
	.size	SVD_abs, .-SVD_abs
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
