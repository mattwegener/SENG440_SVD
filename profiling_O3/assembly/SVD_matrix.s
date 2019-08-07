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
	.global	SVD_matrix_in_place_left_mul
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_left_mul, %function
SVD_matrix_in_place_left_mul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L4
	vldr.32	s14, [r1]
	vldr.32	s12, [r0, #16]
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s12
	vldr.32	s13, [r0, #32]
	vmov.f32	s12, s7
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s13
	vldr.32	s11, [r0]
	vldr.32	s8, [r0, #48]
	vmov.f32	s10, s15
	vmov.f32	s13, s7
	vmov.f32	s7, s15
	vmla.f32	s10, s14, s11
	vmla.f32	s7, s14, s8
	vldr.32	s9, [r0, #4]
	vldr.32	s5, [r0, #20]
	vldr.32	s8, [r0, #52]
	vmov.f32	s11, s10
	vmov.f32	s14, s7
	vldr.32	s10, [r1, #16]
	vldr.32	s7, [r0, #36]
	vldr.32	s6, [r0, #8]
	vmla.f32	s11, s10, s9
	vmla.f32	s12, s10, s5
	vldr.32	s9, [r1, #32]
	vldr.32	s5, [r0, #24]
	vmla.f32	s13, s10, s7
	vmla.f32	s14, s10, s8
	vldr.32	s7, [r0, #40]
	vldr.32	s8, [r0, #56]
	vldr.32	s10, [r1, #48]
	vmla.f32	s11, s9, s6
	vmla.f32	s12, s9, s5
	vldr.32	s6, [r0, #12]
	vmla.f32	s13, s9, s7
	vmla.f32	s14, s9, s8
	vldr.32	s7, [r0, #28]
	vldr.32	s8, [r0, #44]
	vldr.32	s9, [r0, #60]
	vmla.f32	s11, s10, s6
	vmla.f32	s12, s10, s7
	vmla.f32	s13, s10, s8
	vmla.f32	s14, s10, s9
	vstr.32	s11, [r1]
	vstr.32	s13, [r1, #32]
	vstr.32	s14, [r1, #48]
	vstr.32	s12, [r1, #16]
	vldr.32	s14, [r1, #4]
	vldr.32	s12, [r0, #16]
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s12
	vldr.32	s8, [r1, #20]
	vldr.32	s9, [r1, #36]
	vpush.64	{d8, d9}
	vldr.32	s2, [r0, #20]
	vldr.32	s4, [r0, #24]
	vldr.32	s6, [r0, #28]
	vmov.f32	s12, s7
	vldr.32	s10, [r1, #52]
	vmov.f32	s7, s15
	vldr.32	s13, [r0, #32]
	vmla.f32	s7, s14, s13
	vldr.32	s11, [r0]
	vldr.32	s5, [r0, #48]
	vmov.f32	s13, s7
	vmov.f32	s3, s15
	vmov.f32	s7, s15
	vmla.f32	s3, s14, s5
	vmla.f32	s7, s14, s11
	vldr.32	s5, [r0, #52]
	vmov.f32	s11, s7
	vmov.f32	s14, s3
	vldr.32	s7, [r0, #4]
	vldr.32	s3, [r0, #36]
	vmla.f32	s12, s8, s2
	vmla.f32	s11, s8, s7
	vmla.f32	s13, s8, s3
	vldr.32	s7, [r0, #8]
	vmla.f32	s14, s8, s5
	vldr.32	s5, [r0, #40]
	vldr.32	s8, [r0, #56]
	vmla.f32	s12, s9, s4
	vmla.f32	s11, s9, s7
	vmla.f32	s13, s9, s5
	vldr.32	s7, [r0, #12]
	vmla.f32	s14, s9, s8
	vldr.32	s8, [r0, #44]
	vldr.32	s9, [r0, #60]
	vmla.f32	s12, s10, s6
	vmla.f32	s11, s10, s7
	vmla.f32	s13, s10, s8
	vmla.f32	s14, s10, s9
	vstr.32	s12, [r1, #20]
	vstr.32	s11, [r1, #4]
	vstr.32	s13, [r1, #36]
	vstr.32	s14, [r1, #52]
	vldr.32	s12, [r1, #8]
	vldr.32	s11, [r0, #16]
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s11
	vldr.32	s13, [r0, #32]
	vmov.f32	s11, s18
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s13
	vldr.32	s14, [r0, #48]
	vmov.f32	s13, s18
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s14
	vldr.32	s8, [r1, #24]
	vldr.32	s9, [r1, #40]
	vldr.32	s17, [r0, #20]
	vldr.32	s16, [r0, #36]
	vldr.32	s6, [r0, #44]
	vldr.32	s7, [r0, #60]
	vldr.32	s2, [r0, #24]
	vldr.32	s5, [r0, #28]
	vldr.32	s3, [r0, #40]
	vldr.32	s0, [r0, #52]
	vldr.32	s4, [r0, #56]
	vmov.f32	s14, s18
	vldr.32	s10, [r1, #56]
	vmov.f32	s18, s15
	vldr.32	s1, [r0]
	vmla.f32	s18, s12, s1
	vldr.32	s1, [r0, #4]
	vmov.f32	s12, s18
	vmla.f32	s11, s8, s17
	vmla.f32	s13, s8, s16
	vmla.f32	s14, s8, s0
	vmla.f32	s12, s8, s1
	vldr.32	s8, [r0, #8]
	vmla.f32	s11, s9, s2
	vmla.f32	s12, s9, s8
	vmla.f32	s13, s9, s3
	vmla.f32	s14, s9, s4
	vldr.32	s9, [r0, #12]
	vmla.f32	s13, s10, s6
	vmla.f32	s14, s10, s7
	vmla.f32	s12, s10, s9
	vmla.f32	s11, s10, s5
	vstr.32	s12, [r1, #8]
	vstr.32	s11, [r1, #24]
	vstr.32	s13, [r1, #40]
	vstr.32	s14, [r1, #56]
	vldr.32	s11, [r1, #12]
	vldr.32	s13, [r0, #16]
	vmov.f32	s9, s15
	vmla.f32	s9, s11, s13
	vldr.32	s12, [r0]
	vmov.f32	s13, s9
	vmov.f32	s9, s15
	vmla.f32	s9, s11, s12
	vldr.32	s14, [r0, #32]
	vmov.f32	s12, s9
	vmov.f32	s9, s15
	vldr.32	s10, [r0, #48]
	vmla.f32	s9, s11, s14
	vldr.32	s6, [r0, #20]
	vldr.32	s8, [r0, #36]
	vmla.f32	s15, s11, s10
	vmov.f32	s14, s9
	vldr.32	s11, [r1, #28]
	vldr.32	s10, [r0, #4]
	vldr.32	s9, [r0, #52]
	vldr.32	s7, [r0, #8]
	vmla.f32	s12, s11, s10
	vmla.f32	s13, s11, s6
	vldr.32	s10, [r1, #44]
	vldr.32	s6, [r0, #24]
	vmla.f32	s14, s11, s8
	vmla.f32	s15, s11, s9
	vldr.32	s8, [r0, #40]
	vldr.32	s9, [r0, #56]
	vldr.32	s11, [r1, #60]
	vmla.f32	s12, s10, s7
	vmla.f32	s14, s10, s8
	vldr.32	s7, [r0, #12]
	vldr.32	s8, [r0, #28]
	vmla.f32	s15, s10, s9
	vmla.f32	s13, s10, s6
	vldr.32	s9, [r0, #44]
	vldr.32	s10, [r0, #60]
	vmla.f32	s12, s11, s7
	vmla.f32	s13, s11, s8
	vmla.f32	s14, s11, s9
	vmla.f32	s15, s11, s10
	vstr.32	s12, [r1, #12]
	vstr.32	s13, [r1, #28]
	vstr.32	s14, [r1, #44]
	vstr.32	s15, [r1, #60]
	vldm	sp!, {d8-d9}
	bx	lr
.L5:
	.align	2
.L4:
	.word	0
	.size	SVD_matrix_in_place_left_mul, .-SVD_matrix_in_place_left_mul
	.align	2
	.global	SVD_matrix_in_place_right_mul
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_right_mul, %function
SVD_matrix_in_place_right_mul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L8
	vldr.32	s14, [r0]
	vldr.32	s12, [r1, #4]
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s12
	vldr.32	s13, [r1, #8]
	vmov.f32	s12, s7
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s13
	vldr.32	s11, [r1]
	vldr.32	s8, [r1, #12]
	vmov.f32	s10, s15
	vmov.f32	s13, s7
	vmov.f32	s7, s15
	vmla.f32	s10, s14, s11
	vmla.f32	s7, s14, s8
	vldr.32	s9, [r1, #16]
	vldr.32	s5, [r1, #20]
	vldr.32	s8, [r1, #28]
	vmov.f32	s11, s10
	vmov.f32	s14, s7
	vldr.32	s10, [r0, #4]
	vldr.32	s7, [r1, #24]
	vldr.32	s6, [r1, #32]
	vmla.f32	s11, s10, s9
	vmla.f32	s12, s10, s5
	vldr.32	s9, [r0, #8]
	vldr.32	s5, [r1, #36]
	vmla.f32	s13, s10, s7
	vmla.f32	s14, s10, s8
	vldr.32	s7, [r1, #40]
	vldr.32	s8, [r1, #44]
	vldr.32	s10, [r0, #12]
	vmla.f32	s11, s9, s6
	vmla.f32	s12, s9, s5
	vldr.32	s6, [r1, #48]
	vmla.f32	s13, s9, s7
	vmla.f32	s14, s9, s8
	vldr.32	s7, [r1, #52]
	vldr.32	s8, [r1, #56]
	vldr.32	s9, [r1, #60]
	vmla.f32	s11, s10, s6
	vmla.f32	s12, s10, s7
	vmla.f32	s13, s10, s8
	vmla.f32	s14, s10, s9
	vstr.32	s11, [r0]
	vstr.32	s13, [r0, #8]
	vstr.32	s14, [r0, #12]
	vstr.32	s12, [r0, #4]
	vldr.32	s14, [r0, #16]
	vldr.32	s12, [r1, #4]
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s12
	vldr.32	s8, [r0, #20]
	vldr.32	s9, [r0, #24]
	vpush.64	{d8, d9}
	vldr.32	s2, [r1, #20]
	vldr.32	s4, [r1, #36]
	vldr.32	s6, [r1, #52]
	vmov.f32	s12, s7
	vldr.32	s10, [r0, #28]
	vmov.f32	s7, s15
	vldr.32	s13, [r1, #8]
	vmla.f32	s7, s14, s13
	vldr.32	s11, [r1]
	vldr.32	s5, [r1, #12]
	vmov.f32	s13, s7
	vmov.f32	s3, s15
	vmov.f32	s7, s15
	vmla.f32	s3, s14, s5
	vmla.f32	s7, s14, s11
	vldr.32	s5, [r1, #28]
	vmov.f32	s11, s7
	vmov.f32	s14, s3
	vldr.32	s7, [r1, #16]
	vldr.32	s3, [r1, #24]
	vmla.f32	s12, s8, s2
	vmla.f32	s11, s8, s7
	vmla.f32	s13, s8, s3
	vldr.32	s7, [r1, #32]
	vmla.f32	s14, s8, s5
	vldr.32	s5, [r1, #40]
	vldr.32	s8, [r1, #44]
	vmla.f32	s12, s9, s4
	vmla.f32	s11, s9, s7
	vmla.f32	s13, s9, s5
	vldr.32	s7, [r1, #48]
	vmla.f32	s14, s9, s8
	vldr.32	s8, [r1, #56]
	vldr.32	s9, [r1, #60]
	vmla.f32	s12, s10, s6
	vmla.f32	s11, s10, s7
	vmla.f32	s13, s10, s8
	vmla.f32	s14, s10, s9
	vstr.32	s12, [r0, #20]
	vstr.32	s11, [r0, #16]
	vstr.32	s13, [r0, #24]
	vstr.32	s14, [r0, #28]
	vldr.32	s12, [r0, #32]
	vldr.32	s11, [r1, #4]
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s11
	vldr.32	s13, [r1, #8]
	vmov.f32	s11, s18
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s13
	vldr.32	s14, [r1, #12]
	vmov.f32	s13, s18
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s14
	vldr.32	s8, [r0, #36]
	vldr.32	s9, [r0, #40]
	vldr.32	s17, [r1, #20]
	vldr.32	s16, [r1, #24]
	vldr.32	s6, [r1, #56]
	vldr.32	s7, [r1, #60]
	vldr.32	s2, [r1, #36]
	vldr.32	s5, [r1, #52]
	vldr.32	s3, [r1, #40]
	vldr.32	s0, [r1, #28]
	vldr.32	s4, [r1, #44]
	vmov.f32	s14, s18
	vldr.32	s10, [r0, #44]
	vmov.f32	s18, s15
	vldr.32	s1, [r1]
	vmla.f32	s18, s12, s1
	vldr.32	s1, [r1, #16]
	vmov.f32	s12, s18
	vmla.f32	s11, s8, s17
	vmla.f32	s13, s8, s16
	vmla.f32	s14, s8, s0
	vmla.f32	s12, s8, s1
	vldr.32	s8, [r1, #32]
	vmla.f32	s11, s9, s2
	vmla.f32	s12, s9, s8
	vmla.f32	s13, s9, s3
	vmla.f32	s14, s9, s4
	vldr.32	s9, [r1, #48]
	vmla.f32	s13, s10, s6
	vmla.f32	s14, s10, s7
	vmla.f32	s12, s10, s9
	vmla.f32	s11, s10, s5
	vstr.32	s12, [r0, #32]
	vstr.32	s11, [r0, #36]
	vstr.32	s13, [r0, #40]
	vstr.32	s14, [r0, #44]
	vldr.32	s11, [r0, #48]
	vldr.32	s13, [r1, #4]
	vmov.f32	s9, s15
	vmla.f32	s9, s11, s13
	vldr.32	s12, [r1]
	vmov.f32	s13, s9
	vmov.f32	s9, s15
	vmla.f32	s9, s11, s12
	vldr.32	s14, [r1, #8]
	vmov.f32	s12, s9
	vmov.f32	s9, s15
	vldr.32	s10, [r1, #12]
	vmla.f32	s9, s11, s14
	vldr.32	s6, [r1, #20]
	vldr.32	s8, [r1, #24]
	vmla.f32	s15, s11, s10
	vmov.f32	s14, s9
	vldr.32	s11, [r0, #52]
	vldr.32	s10, [r1, #16]
	vldr.32	s9, [r1, #28]
	vldr.32	s7, [r1, #32]
	vmla.f32	s12, s11, s10
	vmla.f32	s13, s11, s6
	vldr.32	s10, [r0, #56]
	vldr.32	s6, [r1, #36]
	vmla.f32	s14, s11, s8
	vmla.f32	s15, s11, s9
	vldr.32	s8, [r1, #40]
	vldr.32	s9, [r1, #44]
	vldr.32	s11, [r0, #60]
	vmla.f32	s12, s10, s7
	vmla.f32	s14, s10, s8
	vldr.32	s7, [r1, #48]
	vldr.32	s8, [r1, #52]
	vmla.f32	s15, s10, s9
	vmla.f32	s13, s10, s6
	vldr.32	s9, [r1, #56]
	vldr.32	s10, [r1, #60]
	vmla.f32	s12, s11, s7
	vmla.f32	s13, s11, s8
	vmla.f32	s14, s11, s9
	vmla.f32	s15, s11, s10
	vstr.32	s12, [r0, #48]
	vstr.32	s13, [r0, #52]
	vstr.32	s14, [r0, #56]
	vstr.32	s15, [r0, #60]
	vldm	sp!, {d8-d9}
	bx	lr
.L9:
	.align	2
.L8:
	.word	0
	.size	SVD_matrix_in_place_right_mul, .-SVD_matrix_in_place_right_mul
	.align	2
	.global	SVD_matrix_in_place_trans
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_trans, %function
SVD_matrix_in_place_trans:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r1, [r0, #28]	@ float
	ldr	r9, [r0, #4]	@ float
	ldr	r10, [r0, #16]	@ float
	ldr	r7, [r0, #8]	@ float
	ldr	r8, [r0, #32]	@ float
	ldr	r5, [r0, #12]	@ float
	ldr	r6, [r0, #48]	@ float
	ldr	lr, [r0, #24]	@ float
	ldr	r4, [r0, #36]	@ float
	ldr	ip, [r0, #52]	@ float
	ldr	r3, [r0, #44]	@ float
	ldr	r2, [r0, #56]	@ float
	str	r10, [r0, #4]	@ float
	str	r9, [r0, #16]	@ float
	str	r8, [r0, #8]	@ float
	str	r7, [r0, #32]	@ float
	str	r6, [r0, #12]	@ float
	str	r5, [r0, #48]	@ float
	str	r4, [r0, #24]	@ float
	str	lr, [r0, #36]	@ float
	str	ip, [r0, #28]	@ float
	str	r1, [r0, #52]	@ float
	str	r2, [r0, #44]	@ float
	str	r3, [r0, #56]	@ float
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	SVD_matrix_in_place_trans, .-SVD_matrix_in_place_trans
	.align	2
	.global	SVD_matrix_in_place_left_mul_by_trans
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_left_mul_by_trans, %function
SVD_matrix_in_place_left_mul_by_trans:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L14
	vldr.32	s14, [r1]
	vldr.32	s12, [r0, #4]
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s12
	vldr.32	s13, [r0, #8]
	vmov.f32	s12, s7
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s13
	vldr.32	s11, [r0]
	vldr.32	s8, [r0, #12]
	vmov.f32	s10, s15
	vmov.f32	s13, s7
	vmov.f32	s7, s15
	vmla.f32	s10, s14, s11
	vmla.f32	s7, s14, s8
	vldr.32	s9, [r0, #16]
	vldr.32	s5, [r0, #20]
	vldr.32	s8, [r0, #28]
	vmov.f32	s11, s10
	vmov.f32	s14, s7
	vldr.32	s10, [r1, #16]
	vldr.32	s7, [r0, #24]
	vldr.32	s6, [r0, #32]
	vmla.f32	s11, s10, s9
	vmla.f32	s12, s10, s5
	vldr.32	s9, [r1, #32]
	vldr.32	s5, [r0, #36]
	vmla.f32	s13, s10, s7
	vmla.f32	s14, s10, s8
	vldr.32	s7, [r0, #40]
	vldr.32	s8, [r0, #44]
	vldr.32	s10, [r1, #48]
	vmla.f32	s11, s9, s6
	vmla.f32	s12, s9, s5
	vldr.32	s6, [r0, #48]
	vmla.f32	s13, s9, s7
	vmla.f32	s14, s9, s8
	vldr.32	s7, [r0, #52]
	vldr.32	s8, [r0, #56]
	vldr.32	s9, [r0, #60]
	vmla.f32	s11, s10, s6
	vmla.f32	s12, s10, s7
	vmla.f32	s13, s10, s8
	vmla.f32	s14, s10, s9
	vstr.32	s11, [r1]
	vstr.32	s13, [r1, #32]
	vstr.32	s14, [r1, #48]
	vstr.32	s12, [r1, #16]
	vldr.32	s14, [r1, #4]
	vldr.32	s12, [r0, #4]
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s12
	vldr.32	s8, [r1, #20]
	vldr.32	s9, [r1, #36]
	vpush.64	{d8, d9}
	vldr.32	s2, [r0, #20]
	vldr.32	s4, [r0, #36]
	vldr.32	s6, [r0, #52]
	vmov.f32	s12, s7
	vldr.32	s10, [r1, #52]
	vmov.f32	s7, s15
	vldr.32	s13, [r0, #8]
	vmla.f32	s7, s14, s13
	vldr.32	s11, [r0]
	vldr.32	s5, [r0, #12]
	vmov.f32	s13, s7
	vmov.f32	s3, s15
	vmov.f32	s7, s15
	vmla.f32	s3, s14, s5
	vmla.f32	s7, s14, s11
	vldr.32	s5, [r0, #28]
	vmov.f32	s11, s7
	vmov.f32	s14, s3
	vldr.32	s7, [r0, #16]
	vldr.32	s3, [r0, #24]
	vmla.f32	s12, s8, s2
	vmla.f32	s11, s8, s7
	vmla.f32	s13, s8, s3
	vldr.32	s7, [r0, #32]
	vmla.f32	s14, s8, s5
	vldr.32	s5, [r0, #40]
	vldr.32	s8, [r0, #44]
	vmla.f32	s12, s9, s4
	vmla.f32	s11, s9, s7
	vmla.f32	s13, s9, s5
	vldr.32	s7, [r0, #48]
	vmla.f32	s14, s9, s8
	vldr.32	s8, [r0, #56]
	vldr.32	s9, [r0, #60]
	vmla.f32	s12, s10, s6
	vmla.f32	s11, s10, s7
	vmla.f32	s13, s10, s8
	vmla.f32	s14, s10, s9
	vstr.32	s12, [r1, #20]
	vstr.32	s11, [r1, #4]
	vstr.32	s13, [r1, #36]
	vstr.32	s14, [r1, #52]
	vldr.32	s12, [r1, #8]
	vldr.32	s11, [r0, #4]
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s11
	vldr.32	s13, [r0, #8]
	vmov.f32	s11, s18
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s13
	vldr.32	s14, [r0, #12]
	vmov.f32	s13, s18
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s14
	vldr.32	s8, [r1, #24]
	vldr.32	s9, [r1, #40]
	vldr.32	s17, [r0, #20]
	vldr.32	s16, [r0, #24]
	vldr.32	s6, [r0, #56]
	vldr.32	s7, [r0, #60]
	vldr.32	s2, [r0, #36]
	vldr.32	s5, [r0, #52]
	vldr.32	s3, [r0, #40]
	vldr.32	s0, [r0, #28]
	vldr.32	s4, [r0, #44]
	vmov.f32	s14, s18
	vldr.32	s10, [r1, #56]
	vmov.f32	s18, s15
	vldr.32	s1, [r0]
	vmla.f32	s18, s12, s1
	vldr.32	s1, [r0, #16]
	vmov.f32	s12, s18
	vmla.f32	s11, s8, s17
	vmla.f32	s13, s8, s16
	vmla.f32	s14, s8, s0
	vmla.f32	s12, s8, s1
	vldr.32	s8, [r0, #32]
	vmla.f32	s11, s9, s2
	vmla.f32	s12, s9, s8
	vmla.f32	s13, s9, s3
	vmla.f32	s14, s9, s4
	vldr.32	s9, [r0, #48]
	vmla.f32	s13, s10, s6
	vmla.f32	s14, s10, s7
	vmla.f32	s12, s10, s9
	vmla.f32	s11, s10, s5
	vstr.32	s12, [r1, #8]
	vstr.32	s11, [r1, #24]
	vstr.32	s13, [r1, #40]
	vstr.32	s14, [r1, #56]
	vldr.32	s11, [r1, #12]
	vldr.32	s13, [r0, #4]
	vmov.f32	s9, s15
	vmla.f32	s9, s11, s13
	vldr.32	s12, [r0]
	vmov.f32	s13, s9
	vmov.f32	s9, s15
	vmla.f32	s9, s11, s12
	vldr.32	s14, [r0, #8]
	vmov.f32	s12, s9
	vmov.f32	s9, s15
	vldr.32	s10, [r0, #12]
	vmla.f32	s9, s11, s14
	vldr.32	s6, [r0, #20]
	vldr.32	s8, [r0, #24]
	vmla.f32	s15, s11, s10
	vmov.f32	s14, s9
	vldr.32	s11, [r1, #28]
	vldr.32	s10, [r0, #16]
	vldr.32	s9, [r0, #28]
	vldr.32	s7, [r0, #32]
	vmla.f32	s12, s11, s10
	vmla.f32	s13, s11, s6
	vldr.32	s10, [r1, #44]
	vldr.32	s6, [r0, #36]
	vmla.f32	s14, s11, s8
	vmla.f32	s15, s11, s9
	vldr.32	s8, [r0, #40]
	vldr.32	s9, [r0, #44]
	vldr.32	s11, [r1, #60]
	vmla.f32	s12, s10, s7
	vmla.f32	s14, s10, s8
	vldr.32	s7, [r0, #48]
	vldr.32	s8, [r0, #52]
	vmla.f32	s15, s10, s9
	vmla.f32	s13, s10, s6
	vldr.32	s9, [r0, #56]
	vldr.32	s10, [r0, #60]
	vmla.f32	s12, s11, s7
	vmla.f32	s13, s11, s8
	vmla.f32	s14, s11, s9
	vmla.f32	s15, s11, s10
	vstr.32	s12, [r1, #12]
	vstr.32	s13, [r1, #28]
	vstr.32	s14, [r1, #44]
	vstr.32	s15, [r1, #60]
	vldm	sp!, {d8-d9}
	bx	lr
.L15:
	.align	2
.L14:
	.word	0
	.size	SVD_matrix_in_place_left_mul_by_trans, .-SVD_matrix_in_place_left_mul_by_trans
	.align	2
	.global	SVD_matrix_in_place_right_mul_by_trans
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_in_place_right_mul_by_trans, %function
SVD_matrix_in_place_right_mul_by_trans:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L18
	vldr.32	s14, [r0]
	vldr.32	s12, [r1, #16]
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s12
	vldr.32	s13, [r1, #32]
	vmov.f32	s12, s7
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s13
	vldr.32	s11, [r1]
	vldr.32	s8, [r1, #48]
	vmov.f32	s10, s15
	vmov.f32	s13, s7
	vmov.f32	s7, s15
	vmla.f32	s10, s14, s11
	vmla.f32	s7, s14, s8
	vldr.32	s9, [r1, #4]
	vldr.32	s5, [r1, #20]
	vldr.32	s8, [r1, #52]
	vmov.f32	s11, s10
	vmov.f32	s14, s7
	vldr.32	s10, [r0, #4]
	vldr.32	s7, [r1, #36]
	vldr.32	s6, [r1, #8]
	vmla.f32	s11, s10, s9
	vmla.f32	s12, s10, s5
	vldr.32	s9, [r0, #8]
	vldr.32	s5, [r1, #24]
	vmla.f32	s13, s10, s7
	vmla.f32	s14, s10, s8
	vldr.32	s7, [r1, #40]
	vldr.32	s8, [r1, #56]
	vldr.32	s10, [r0, #12]
	vmla.f32	s11, s9, s6
	vmla.f32	s12, s9, s5
	vldr.32	s6, [r1, #12]
	vmla.f32	s13, s9, s7
	vmla.f32	s14, s9, s8
	vldr.32	s7, [r1, #28]
	vldr.32	s8, [r1, #44]
	vldr.32	s9, [r1, #60]
	vmla.f32	s11, s10, s6
	vmla.f32	s12, s10, s7
	vmla.f32	s13, s10, s8
	vmla.f32	s14, s10, s9
	vstr.32	s11, [r0]
	vstr.32	s13, [r0, #8]
	vstr.32	s14, [r0, #12]
	vstr.32	s12, [r0, #4]
	vldr.32	s14, [r0, #16]
	vldr.32	s12, [r1, #16]
	vmov.f32	s7, s15
	vmla.f32	s7, s14, s12
	vldr.32	s8, [r0, #20]
	vldr.32	s9, [r0, #24]
	vpush.64	{d8, d9}
	vldr.32	s2, [r1, #20]
	vldr.32	s4, [r1, #24]
	vldr.32	s6, [r1, #28]
	vmov.f32	s12, s7
	vldr.32	s10, [r0, #28]
	vmov.f32	s7, s15
	vldr.32	s13, [r1, #32]
	vmla.f32	s7, s14, s13
	vldr.32	s11, [r1]
	vldr.32	s5, [r1, #48]
	vmov.f32	s13, s7
	vmov.f32	s3, s15
	vmov.f32	s7, s15
	vmla.f32	s3, s14, s5
	vmla.f32	s7, s14, s11
	vldr.32	s5, [r1, #52]
	vmov.f32	s11, s7
	vmov.f32	s14, s3
	vldr.32	s7, [r1, #4]
	vldr.32	s3, [r1, #36]
	vmla.f32	s12, s8, s2
	vmla.f32	s11, s8, s7
	vmla.f32	s13, s8, s3
	vldr.32	s7, [r1, #8]
	vmla.f32	s14, s8, s5
	vldr.32	s5, [r1, #40]
	vldr.32	s8, [r1, #56]
	vmla.f32	s12, s9, s4
	vmla.f32	s11, s9, s7
	vmla.f32	s13, s9, s5
	vldr.32	s7, [r1, #12]
	vmla.f32	s14, s9, s8
	vldr.32	s8, [r1, #44]
	vldr.32	s9, [r1, #60]
	vmla.f32	s12, s10, s6
	vmla.f32	s11, s10, s7
	vmla.f32	s13, s10, s8
	vmla.f32	s14, s10, s9
	vstr.32	s12, [r0, #20]
	vstr.32	s11, [r0, #16]
	vstr.32	s13, [r0, #24]
	vstr.32	s14, [r0, #28]
	vldr.32	s12, [r0, #32]
	vldr.32	s11, [r1, #16]
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s11
	vldr.32	s13, [r1, #32]
	vmov.f32	s11, s18
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s13
	vldr.32	s14, [r1, #48]
	vmov.f32	s13, s18
	vmov.f32	s18, s15
	vmla.f32	s18, s12, s14
	vldr.32	s8, [r0, #36]
	vldr.32	s9, [r0, #40]
	vldr.32	s17, [r1, #20]
	vldr.32	s16, [r1, #36]
	vldr.32	s6, [r1, #44]
	vldr.32	s7, [r1, #60]
	vldr.32	s2, [r1, #24]
	vldr.32	s5, [r1, #28]
	vldr.32	s3, [r1, #40]
	vldr.32	s0, [r1, #52]
	vldr.32	s4, [r1, #56]
	vmov.f32	s14, s18
	vldr.32	s10, [r0, #44]
	vmov.f32	s18, s15
	vldr.32	s1, [r1]
	vmla.f32	s18, s12, s1
	vldr.32	s1, [r1, #4]
	vmov.f32	s12, s18
	vmla.f32	s11, s8, s17
	vmla.f32	s13, s8, s16
	vmla.f32	s14, s8, s0
	vmla.f32	s12, s8, s1
	vldr.32	s8, [r1, #8]
	vmla.f32	s11, s9, s2
	vmla.f32	s12, s9, s8
	vmla.f32	s13, s9, s3
	vmla.f32	s14, s9, s4
	vldr.32	s9, [r1, #12]
	vmla.f32	s13, s10, s6
	vmla.f32	s14, s10, s7
	vmla.f32	s12, s10, s9
	vmla.f32	s11, s10, s5
	vstr.32	s12, [r0, #32]
	vstr.32	s11, [r0, #36]
	vstr.32	s13, [r0, #40]
	vstr.32	s14, [r0, #44]
	vldr.32	s11, [r0, #48]
	vldr.32	s13, [r1, #16]
	vmov.f32	s9, s15
	vmla.f32	s9, s11, s13
	vldr.32	s12, [r1]
	vmov.f32	s13, s9
	vmov.f32	s9, s15
	vmla.f32	s9, s11, s12
	vldr.32	s14, [r1, #32]
	vmov.f32	s12, s9
	vmov.f32	s9, s15
	vldr.32	s10, [r1, #48]
	vmla.f32	s9, s11, s14
	vldr.32	s6, [r1, #20]
	vldr.32	s8, [r1, #36]
	vmla.f32	s15, s11, s10
	vmov.f32	s14, s9
	vldr.32	s11, [r0, #52]
	vldr.32	s10, [r1, #4]
	vldr.32	s9, [r1, #52]
	vldr.32	s7, [r1, #8]
	vmla.f32	s12, s11, s10
	vmla.f32	s13, s11, s6
	vldr.32	s10, [r0, #56]
	vldr.32	s6, [r1, #24]
	vmla.f32	s14, s11, s8
	vmla.f32	s15, s11, s9
	vldr.32	s8, [r1, #40]
	vldr.32	s9, [r1, #56]
	vldr.32	s11, [r0, #60]
	vmla.f32	s12, s10, s7
	vmla.f32	s14, s10, s8
	vldr.32	s7, [r1, #12]
	vldr.32	s8, [r1, #28]
	vmla.f32	s15, s10, s9
	vmla.f32	s13, s10, s6
	vldr.32	s9, [r1, #44]
	vldr.32	s10, [r1, #60]
	vmla.f32	s12, s11, s7
	vmla.f32	s13, s11, s8
	vmla.f32	s14, s11, s9
	vmla.f32	s15, s11, s10
	vstr.32	s12, [r0, #48]
	vstr.32	s13, [r0, #52]
	vstr.32	s14, [r0, #56]
	vstr.32	s15, [r0, #60]
	vldm	sp!, {d8-d9}
	bx	lr
.L19:
	.align	2
.L18:
	.word	0
	.size	SVD_matrix_in_place_right_mul_by_trans, .-SVD_matrix_in_place_right_mul_by_trans
	.align	2
	.global	SVD_matrix_mul
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_mul, %function
SVD_matrix_mul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s14, .L24
	add	r3, r2, #64
.L21:
	vstr.32	s14, [r2]
	vmov.f32	s12, s14
	vldr.32	s13, [r0]
	vldr.32	s15, [r1]
	vmla.f32	s12, s13, s15
	vstr.32	s12, [r2]
	vmov.f32	s15, s12
	vldr.32	s13, [r1, #16]
	vldr.32	s12, [r0, #4]
	vmla.f32	s15, s12, s13
	vstr.32	s15, [r2]
	vldr.32	s12, [r0, #8]
	vldr.32	s13, [r1, #32]
	vmla.f32	s15, s12, s13
	vstr.32	s15, [r2]
	vldr.32	s12, [r0, #12]
	vldr.32	s13, [r1, #48]
	vmla.f32	s15, s12, s13
	vstr.32	s14, [r2, #4]
	vstr.32	s15, [r2]
	vmov.f32	s12, s14
	vldr.32	s13, [r0]
	vldr.32	s15, [r1, #4]
	vmla.f32	s12, s13, s15
	vstr.32	s12, [r2, #4]
	vmov.f32	s15, s12
	vldr.32	s13, [r1, #20]
	vldr.32	s12, [r0, #4]
	vmla.f32	s15, s12, s13
	vstr.32	s15, [r2, #4]
	vldr.32	s12, [r0, #8]
	vldr.32	s13, [r1, #36]
	vmla.f32	s15, s12, s13
	vstr.32	s15, [r2, #4]
	vldr.32	s12, [r0, #12]
	vldr.32	s13, [r1, #52]
	vmla.f32	s15, s12, s13
	vstr.32	s14, [r2, #8]
	vstr.32	s15, [r2, #4]
	vmov.f32	s12, s14
	vldr.32	s13, [r0]
	vldr.32	s15, [r1, #8]
	vmla.f32	s12, s13, s15
	vstr.32	s12, [r2, #8]
	vmov.f32	s15, s12
	vldr.32	s13, [r1, #24]
	vldr.32	s12, [r0, #4]
	vmla.f32	s15, s12, s13
	vstr.32	s15, [r2, #8]
	vldr.32	s12, [r0, #8]
	vldr.32	s13, [r1, #40]
	vmla.f32	s15, s12, s13
	vstr.32	s15, [r2, #8]
	vldr.32	s12, [r0, #12]
	vldr.32	s13, [r1, #56]
	vmla.f32	s15, s12, s13
	vstr.32	s14, [r2, #12]
	vstr.32	s15, [r2, #8]
	vmov.f32	s12, s14
	vldr.32	s13, [r0]
	vldr.32	s15, [r1, #12]
	vmla.f32	s12, s13, s15
	vstr.32	s12, [r2, #12]
	vmov.f32	s15, s12
	vldr.32	s13, [r1, #28]
	vldr.32	s12, [r0, #4]
	vmla.f32	s15, s12, s13
	vstr.32	s15, [r2, #12]
	vldr.32	s12, [r0, #8]
	vldr.32	s13, [r1, #44]
	vmla.f32	s15, s12, s13
	vstr.32	s15, [r2, #12]
	vldr.32	s12, [r0, #12]
	vldr.32	s13, [r1, #60]
	vmla.f32	s15, s12, s13
	add	r2, r2, #16
	vstr.32	s15, [r2, #-4]
	cmp	r2, r3
	add	r0, r0, #16
	bne	.L21
	bx	lr
.L25:
	.align	2
.L24:
	.word	0
	.size	SVD_matrix_mul, .-SVD_matrix_mul
	.align	2
	.global	SVD_matrix_trans
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_trans, %function
SVD_matrix_trans:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #64
	add	r3, r1, #64
	cmp	r0, r3
	cmpcc	r1, r2
	bcc	.L27
	vld4.32	{d16, d18, d20, d22}, [r0]!
	mov	r3, r1
	vld4.32	{d17, d19, d21, d23}, [r0]
	vst1.32	{q8}, [r3]!
	add	r2, r1, #32
	add	r1, r1, #48
	vst1.32	{q9}, [r3]
	vst1.32	{q10}, [r2]
	vst1.32	{q11}, [r1]
	bx	lr
.L27:
	ldr	r3, [r0]	@ float
	str	r3, [r1]	@ float
	ldr	r3, [r0, #4]	@ float
	str	r3, [r1, #16]	@ float
	ldr	r3, [r0, #8]	@ float
	str	r3, [r1, #32]	@ float
	ldr	r3, [r0, #12]	@ float
	str	r3, [r1, #48]	@ float
	ldr	r3, [r0, #16]	@ float
	str	r3, [r1, #4]	@ float
	ldr	r3, [r0, #20]	@ float
	str	r3, [r1, #20]	@ float
	ldr	r3, [r0, #24]	@ float
	str	r3, [r1, #36]	@ float
	ldr	r3, [r0, #28]	@ float
	str	r3, [r1, #52]	@ float
	ldr	r3, [r0, #32]	@ float
	str	r3, [r1, #8]	@ float
	ldr	r3, [r0, #36]	@ float
	str	r3, [r1, #24]	@ float
	ldr	r3, [r0, #40]	@ float
	str	r3, [r1, #40]	@ float
	ldr	r3, [r0, #44]	@ float
	str	r3, [r1, #56]	@ float
	ldr	r3, [r0, #48]	@ float
	str	r3, [r1, #12]	@ float
	ldr	r3, [r0, #52]	@ float
	str	r3, [r1, #28]	@ float
	ldr	r3, [r0, #56]	@ float
	str	r3, [r1, #44]	@ float
	ldr	r3, [r0, #60]	@ float
	str	r3, [r1, #60]	@ float
	bx	lr
	.size	SVD_matrix_trans, .-SVD_matrix_trans
	.align	2
	.global	SVD_matrix_copy
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_copy, %function
SVD_matrix_copy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #16
	add	r3, r1, #16
	cmp	r0, r3
	cmpcc	r1, r2
	bcc	.L30
	vld1.32	{q8}, [r0]
	vst1.32	{q8}, [r1]
	vld1.32	{q8}, [r2]
	vst1.32	{q8}, [r3]
	add	r3, r0, #32
	vld1.32	{q8}, [r3]
	add	r3, r1, #32
	vst1.32	{q8}, [r3]
	add	r0, r0, #48
	vld1.32	{q8}, [r0]
	add	r1, r1, #48
	vst1.32	{q8}, [r1]
	bx	lr
.L30:
	ldr	r3, [r0]	@ float
	str	r3, [r1]	@ float
	ldr	r3, [r0, #4]	@ float
	str	r3, [r1, #4]	@ float
	ldr	r3, [r0, #8]	@ float
	str	r3, [r1, #8]	@ float
	ldr	r3, [r0, #12]	@ float
	str	r3, [r1, #12]	@ float
	ldr	r3, [r0, #16]	@ float
	str	r3, [r1, #16]	@ float
	ldr	r3, [r0, #20]	@ float
	str	r3, [r1, #20]	@ float
	ldr	r3, [r0, #24]	@ float
	str	r3, [r1, #24]	@ float
	ldr	r3, [r0, #28]	@ float
	str	r3, [r1, #28]	@ float
	ldr	r3, [r0, #32]	@ float
	str	r3, [r1, #32]	@ float
	ldr	r3, [r0, #36]	@ float
	str	r3, [r1, #36]	@ float
	ldr	r3, [r0, #40]	@ float
	str	r3, [r1, #40]	@ float
	ldr	r3, [r0, #44]	@ float
	str	r3, [r1, #44]	@ float
	ldr	r3, [r0, #48]	@ float
	str	r3, [r1, #48]	@ float
	ldr	r3, [r0, #52]	@ float
	str	r3, [r1, #52]	@ float
	ldr	r3, [r0, #56]	@ float
	str	r3, [r1, #56]	@ float
	ldr	r3, [r0, #60]	@ float
	str	r3, [r1, #60]	@ float
	bx	lr
	.size	SVD_matrix_copy, .-SVD_matrix_copy
	.align	2
	.global	SVD_matrix_dot
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_dot, %function
SVD_matrix_dot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, r2, lsl #4
	add	r3, r1, r3, lsl #2
	vldr.32	s13, [r3]
	vldr.32	s15, [r2]
	vldr.32	s0, .L33
	vldr.32	s14, [r3, #16]
	vmla.f32	s0, s13, s15
	vldr.32	s15, [r2, #4]
	vldr.32	s13, [r3, #32]
	vmla.f32	s0, s14, s15
	vldr.32	s15, [r2, #8]
	vldr.32	s14, [r3, #48]
	vmla.f32	s0, s13, s15
	vldr.32	s15, [r2, #12]
	vmla.f32	s0, s14, s15
	bx	lr
.L34:
	.align	2
.L33:
	.word	0
	.size	SVD_matrix_dot, .-SVD_matrix_dot
	.align	2
	.global	SVD_matrix_equal
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_equal, %function
SVD_matrix_equal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #1
	vpush.64	{d8}
	vldr.32	s16, .L43
	sub	r1, r1, #16
	sub	r8, r1, r0
	add	r5, r0, #16
	add	r7, r0, #80
.L36:
	sub	r4, r5, #16
	add	r6, r8, r5
.L38:
	vldmia.32	r4!, {s0}
	vldmia.32	r6!, {s15}
	vsub.f32	s0, s0, s15
	bl	SVD_abs
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, FPSCR
	bgt	.L40
	cmp	r4, r5
	bne	.L38
	add	r5, r5, #16
	cmp	r5, r7
	bne	.L36
.L35:
	vldm	sp!, {d8}
	mov	r0, r9
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L40:
	add	r5, r5, #16
	cmp	r5, r7
	mov	r9, #0
	bne	.L36
	b	.L35
.L44:
	.align	2
.L43:
	.word	953267991
	.size	SVD_matrix_equal, .-SVD_matrix_equal
	.align	2
	.global	SVD_matrix_isDiagonal
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_isDiagonal, %function
SVD_matrix_isDiagonal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	vpush.64	{d8}
	mov	r6, #0
	vldr.32	s16, .L58
.L46:
	mov	r5, r7
	mov	r4, #0
.L48:
	cmp	r6, r4
	add	r4, r4, #1
	beq	.L51
	vldr.32	s0, [r5]
	bl	SVD_abs
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, FPSCR
	bge	.L57
.L51:
	cmp	r4, #4
	add	r5, r5, #4
	bne	.L48
	add	r6, r6, #1
	cmp	r6, #4
	add	r7, r7, #16
	bne	.L46
	vldm	sp!, {d8}
	mov	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L57:
	mov	r0, #0
	vldm	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, pc}
.L59:
	.align	2
.L58:
	.word	953267991
	.size	SVD_matrix_isDiagonal, .-SVD_matrix_isDiagonal
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
