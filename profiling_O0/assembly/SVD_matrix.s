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
	.global	SVD_matrix_in_place_left_mul
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_left_mul, %function
SVD_matrix_in_place_left_mul:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L9:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L3
.L6:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	mov	r2, #0
	str	r2, [r3]	@ float
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L4
.L5:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s13, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L4:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L5
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L3:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L6
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L7
.L8:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-44]
	add	r1, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r1, r3
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L7:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L8
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L9
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_in_place_left_mul, .-SVD_matrix_in_place_left_mul
	.align	2
	.global	SVD_matrix_in_place_right_mul
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_right_mul, %function
SVD_matrix_in_place_right_mul:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L11
.L18:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L12
.L15:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	mov	r2, #0
	str	r2, [r3]	@ float
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L13
.L14:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s13, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L13:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L14
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L12:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L15
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L16
.L17:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-40]
	add	r1, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r1, r3
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L16:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L17
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L11:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L18
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_in_place_right_mul, .-SVD_matrix_in_place_right_mul
	.align	2
	.global	SVD_matrix_in_place_trans
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_trans, %function
SVD_matrix_in_place_trans:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L20
.L23:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L21
.L22:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-16]	@ float
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r1, r3
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [fp, #-16]	@ float
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L21:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L22
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L20:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L23
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_in_place_trans, .-SVD_matrix_in_place_trans
	.align	2
	.global	SVD_matrix_in_place_left_mul_by_trans
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_left_mul_by_trans, %function
SVD_matrix_in_place_left_mul_by_trans:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L25
.L32:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L26
.L29:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	mov	r2, #0
	str	r2, [r3]	@ float
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L27
.L28:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s13, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L27:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L28
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L26:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L29
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L30
.L31:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-44]
	add	r1, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r1, r3
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L30:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L31
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L25:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L32
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_in_place_left_mul_by_trans, .-SVD_matrix_in_place_left_mul_by_trans
	.align	2
	.global	SVD_matrix_in_place_right_mul_by_trans
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_right_mul_by_trans, %function
SVD_matrix_in_place_right_mul_by_trans:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L34
.L41:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L35
.L38:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	mov	r2, #0
	str	r2, [r3]	@ float
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L36
.L37:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s13, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L36:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L37
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L35:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L38
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L39
.L40:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-40]
	add	r1, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #28
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r1, r3
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L39:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L40
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L34:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L41
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_in_place_right_mul_by_trans, .-SVD_matrix_in_place_right_mul_by_trans
	.align	2
	.global	SVD_matrix_mul
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
	b	.L43
.L48:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L44
.L47:
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
	b	.L45
.L46:
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
.L45:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L46
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L44:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L47
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L43:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L48
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
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
	b	.L50
.L53:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L51
.L52:
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
.L51:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L52
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L50:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L53
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
	b	.L55
.L58:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L56
.L57:
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
.L56:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L57
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L55:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L58
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
	b	.L60
.L61:
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
.L60:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L61
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
	b	.L64
.L70:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L65
.L69:
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
	vldr.32	s15, .L74
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L73
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L68
.L73:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L65:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L69
.L68:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L64:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L70
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L75:
	.align	2
.L74:
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
	b	.L77
.L83:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L78
.L82:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	beq	.L79
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
	vldr.32	s15, .L85
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	blt	.L79
	mov	r3, #0
	b	.L81
.L79:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L78:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L82
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L77:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L83
	mov	r3, #1
.L81:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L86:
	.align	2
.L85:
	.word	953267991
	.size	SVD_matrix_isDiagonal, .-SVD_matrix_isDiagonal
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
