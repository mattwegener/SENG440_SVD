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
	.global	SVD_matrix_mul
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_matrix_mul, %function
SVD_matrix_mul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L3
	vldr.32	s14, [r0]
	vldr.32	s13, [r1]
	vmov.f32	s11, s15
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r1, #16]
	vldr.32	s13, [r0, #4]
	vmov.f32	s14, s11
	vldr.32	s11, [r1, #32]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r0, #8]
	vldr.32	s12, [r1, #48]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r0, #12]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2]
	vmov.f32	s11, s15
	vldr.32	s13, [r1, #4]
	vldr.32	s14, [r0]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r1, #20]
	vldr.32	s13, [r0, #4]
	vmov.f32	s14, s11
	vldr.32	s11, [r1, #36]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r0, #8]
	vldr.32	s12, [r1, #52]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r0, #12]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #4]
	vmov.f32	s11, s15
	vldr.32	s13, [r1, #8]
	vldr.32	s14, [r0]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #4]
	vldr.32	s13, [r1, #24]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #8]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #40]
	vldr.32	s12, [r0, #12]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #56]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #8]
	vmov.f32	s11, s15
	vldr.32	s13, [r0]
	vldr.32	s14, [r1, #12]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #4]
	vmov.f32	s14, s11
	vldr.32	s13, [r1, #28]
	vldr.32	s11, [r0, #8]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #44]
	vldr.32	s12, [r0, #12]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #60]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #12]
	vmov.f32	s11, s15
	vldr.32	s13, [r1]
	vldr.32	s14, [r0, #16]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #20]
	vldr.32	s13, [r1, #16]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #24]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #32]
	vldr.32	s12, [r1, #48]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r0, #28]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #16]
	vmov.f32	s11, s15
	vldr.32	s13, [r1, #4]
	vldr.32	s14, [r0, #16]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r1, #20]
	vldr.32	s13, [r0, #20]
	vmov.f32	s14, s11
	vldr.32	s11, [r1, #36]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r0, #24]
	vldr.32	s12, [r0, #28]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #52]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #20]
	vmov.f32	s11, s15
	vldr.32	s13, [r0, #16]
	vldr.32	s14, [r1, #8]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #20]
	vldr.32	s13, [r1, #24]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #24]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #40]
	vldr.32	s12, [r0, #28]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #56]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #24]
	vmov.f32	s11, s15
	vldr.32	s13, [r0, #16]
	vldr.32	s14, [r1, #12]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #20]
	vldr.32	s13, [r1, #28]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #24]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #44]
	vldr.32	s12, [r0, #28]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #60]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #28]
	vmov.f32	s11, s15
	vldr.32	s13, [r0, #32]
	vldr.32	s14, [r1]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #36]
	vldr.32	s13, [r1, #16]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #40]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #32]
	vldr.32	s12, [r0, #44]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #48]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #32]
	vmov.f32	s11, s15
	vldr.32	s13, [r0, #32]
	vldr.32	s14, [r1, #4]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #36]
	vldr.32	s13, [r1, #20]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #40]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #36]
	vldr.32	s12, [r0, #44]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #52]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #36]
	vmov.f32	s11, s15
	vldr.32	s13, [r0, #32]
	vldr.32	s14, [r1, #8]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #36]
	vldr.32	s13, [r1, #24]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #40]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #40]
	vldr.32	s12, [r0, #44]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #56]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #40]
	vmov.f32	s11, s15
	vldr.32	s13, [r0, #32]
	vldr.32	s14, [r1, #12]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #36]
	vldr.32	s13, [r1, #28]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #40]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #44]
	vldr.32	s12, [r0, #44]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #60]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #44]
	vmov.f32	s11, s15
	vldr.32	s13, [r0, #48]
	vldr.32	s14, [r1]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #52]
	vldr.32	s13, [r1, #16]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #56]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #32]
	vldr.32	s12, [r0, #60]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #48]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #48]
	vmov.f32	s11, s15
	vldr.32	s13, [r0, #48]
	vldr.32	s14, [r1, #4]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #52]
	vldr.32	s13, [r1, #20]
	vmov.f32	s14, s11
	vldr.32	s11, [r0, #56]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #36]
	vldr.32	s12, [r0, #60]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #52]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #52]
	vmov.f32	s11, s15
	vldr.32	s13, [r0, #48]
	vldr.32	s14, [r1, #8]
	vmla.f32	s11, s13, s14
	vldr.32	s12, [r0, #52]
	vmov.f32	s14, s11
	vldr.32	s13, [r1, #24]
	vldr.32	s11, [r0, #56]
	vmla.f32	s14, s12, s13
	vldr.32	s13, [r1, #40]
	vldr.32	s12, [r0, #60]
	vmla.f32	s14, s11, s13
	vldr.32	s13, [r1, #56]
	vmla.f32	s14, s12, s13
	vstr.32	s14, [r2, #56]
	vldr.32	s12, [r0, #48]
	vldr.32	s14, [r1, #12]
	vldr.32	s13, [r0, #52]
	vmla.f32	s15, s12, s14
	vldr.32	s14, [r1, #28]
	vldr.32	s12, [r0, #56]
	vmla.f32	s15, s13, s14
	vldr.32	s14, [r1, #44]
	vldr.32	s13, [r0, #60]
	vmla.f32	s15, s12, s14
	vldr.32	s14, [r1, #60]
	vmla.f32	s15, s13, s14
	vstr.32	s15, [r2, #60]
	bx	lr
.L4:
	.align	2
.L3:
	.word	0
	.size	SVD_matrix_mul, .-SVD_matrix_mul
	.align	2
	.global	SVD_matrix_trans
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_matrix_trans, %function
SVD_matrix_trans:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
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
	.fpu vfpv3-d16
	.type	SVD_matrix_copy, %function
SVD_matrix_copy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
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
	.fpu vfpv3-d16
	.type	SVD_matrix_dot, %function
SVD_matrix_dot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, r2, lsl #4
	add	r3, r1, r3, lsl #2
	vldr.32	s13, [r3]
	vldr.32	s15, [r2]
	vldr.32	s0, .L8
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
.L9:
	.align	2
.L8:
	.word	0
	.size	SVD_matrix_dot, .-SVD_matrix_dot
	.align	2
	.global	SVD_matrix_equal
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_matrix_equal, %function
SVD_matrix_equal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #1
	vpush.64	{d8}
	vldr.32	s16, .L18
	sub	r1, r1, #16
	sub	r8, r1, r0
	add	r5, r0, #16
	add	r7, r0, #80
.L11:
	sub	r4, r5, #16
	add	r6, r8, r5
.L13:
	vldmia.32	r4!, {s0}
	vldmia.32	r6!, {s15}
	vsub.f32	s0, s0, s15
	bl	SVD_abs
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, FPSCR
	bgt	.L15
	cmp	r4, r5
	bne	.L13
	add	r5, r5, #16
	cmp	r5, r7
	bne	.L11
.L10:
	vldm	sp!, {d8}
	mov	r0, r9
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L15:
	add	r5, r5, #16
	cmp	r5, r7
	mov	r9, #0
	bne	.L11
	b	.L10
.L19:
	.align	2
.L18:
	.word	953267991
	.size	SVD_matrix_equal, .-SVD_matrix_equal
	.align	2
	.global	SVD_matrix_isDiagonal
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	SVD_matrix_isDiagonal, %function
SVD_matrix_isDiagonal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	vpush.64	{d8}
	mov	r6, #0
	vldr.32	s16, .L33
.L21:
	mov	r5, r7
	mov	r4, #0
.L23:
	cmp	r6, r4
	add	r4, r4, #1
	beq	.L26
	vldr.32	s0, [r5]
	bl	SVD_abs
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, FPSCR
	bge	.L32
.L26:
	cmp	r4, #4
	add	r5, r5, #4
	bne	.L23
	add	r6, r6, #1
	cmp	r6, #4
	add	r7, r7, #16
	bne	.L21
	vldm	sp!, {d8}
	mov	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L32:
	mov	r0, #0
	vldm	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, pc}
.L34:
	.align	2
.L33:
	.word	953267991
	.size	SVD_matrix_isDiagonal, .-SVD_matrix_isDiagonal
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
