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
	.file	"SVD_matrix.c"
	.text
	.align	2
	.global	SVD_matrix_int_to_fix
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_int_to_fix, %function
SVD_matrix_int_to_fix:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vld1.32	{q8}, [r0]
	mov	r3, r0
	vshl.i32	q8, q8, #8
	vst1.32	{q8}, [r3]!
	vld1.32	{q8}, [r3]
	vshl.i32	q8, q8, #8
	vst1.32	{q8}, [r3]
	add	r3, r0, #32
	vld1.32	{q8}, [r3]
	vshl.i32	q8, q8, #8
	vst1.32	{q8}, [r3]
	add	r0, r0, #48
	vld1.32	{q8}, [r0]
	vshl.i32	q8, q8, #8
	vst1.32	{q8}, [r0]
	bx	lr
	.size	SVD_matrix_int_to_fix, .-SVD_matrix_int_to_fix
	.align	2
	.global	SVD_matrix_fix_to_int
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_fix_to_int, %function
SVD_matrix_fix_to_int:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vld1.32	{q9}, [r0]
	vmov.i32	q10, #128  @ v4si
	vadd.i32	q9, q9, q10
	mov	r3, r0
	vshr.s32	q9, q9, #8
	vst1.32	{q9}, [r3]!
	vld1.32	{q9}, [r3]
	vadd.i32	q9, q9, q10
	vshr.s32	q9, q9, #8
	vst1.32	{q9}, [r3]
	add	r3, r0, #32
	vld1.32	{q9}, [r3]
	vadd.i32	q9, q9, q10
	vshr.s32	q9, q9, #8
	vst1.32	{q9}, [r3]
	add	r0, r0, #48
	vld1.32	{q8}, [r0]
	vadd.i32	q8, q8, q10
	vshr.s32	q8, q8, #8
	vst1.32	{q8}, [r0]
	bx	lr
	.size	SVD_matrix_fix_to_int, .-SVD_matrix_fix_to_int
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
