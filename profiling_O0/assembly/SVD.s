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
	b	.L2
.L3:
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
.L2:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L3
	ldr	r3, [fp, #-8]	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_dot, .-SVD_matrix_dot
	.align	2
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
	b	.L6
.L9:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L7
.L8:
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
.L7:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	ble	.L8
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L6:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L9
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
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
	b	.L12
.L13:
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
.L12:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L13
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
	b	.L15
.L17:
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
.L15:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L17
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
	@ args = 0, pretend = 0, frame = 760
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #764
	str	r0, [fp, #-760]
	ldr	r3, [fp, #-760]
	str	r3, [fp, #-628]
	ldr	r3, [fp, #-628]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #752
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #752
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #688
	vstmia	r3, {d16-d23}
	movw	r3, #46871
	movt	r3, 14545
	str	r3, [fp, #-624]	@ float
	ldr	r3, [fp, #-624]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #688
	vld1.64	{d16-d17}, [r3:64]
	vstr	d16, [fp, #-620]
	vstr	d17, [fp, #-612]
	vldr	d16, [fp, #-620]
	vldr	d17, [fp, #-612]
	vmov	d16, d17  @ v2sf
	vmov	d18, d16  @ v2sf
	sub	r3, fp, #4
	sub	r3, r3, #688
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-604]
	vstr	d17, [fp, #-596]
	vldr	d16, [fp, #-604]
	vldr	d17, [fp, #-596]
	vstr	d18, [fp, #-580]
	vstr	d16, [fp, #-588]
	vldr	d17, [fp, #-580]
	vldr	d16, [fp, #-588]
	vswp	d16, d17
	vstr	d16, [fp, #-36]
	vstr	d17, [fp, #-28]
	sub	r3, fp, #4
	sub	r3, r3, #688
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-572]
	vstr	d17, [fp, #-564]
	vldr	d16, [fp, #-572]
	vldr	d17, [fp, #-564]
	vmov	d16, d17  @ v2sf
	vmov	d18, d16  @ v2sf
	sub	r3, fp, #4
	sub	r3, r3, #688
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-556]
	vstr	d17, [fp, #-548]
	vldr	d16, [fp, #-556]
	vldr	d17, [fp, #-548]
	vstr	d18, [fp, #-532]
	vstr	d16, [fp, #-540]
	vldr	d17, [fp, #-532]
	vldr	d16, [fp, #-540]
	vswp	d16, d17
	vstr	d16, [fp, #-52]
	vstr	d17, [fp, #-44]
	sub	r3, fp, #4
	sub	r3, r3, #688
	vld1.64	{d16-d17}, [r3:64]
	vstr	d16, [fp, #-524]
	vstr	d17, [fp, #-516]
	vldr	d16, [fp, #-524]
	vldr	d17, [fp, #-516]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-488]	@ float
	vldr	d16, [fp, #-68]
	vldr	d17, [fp, #-60]
	vstr	d16, [fp, #-508]
	vstr	d17, [fp, #-500]
	ldr	r3, [fp, #-488]	@ float
	vldr	d16, [fp, #-508]
	vldr	d17, [fp, #-500]
	vmov.32	d16[0], r3
	vstr	d16, [fp, #-68]
	vstr	d17, [fp, #-60]
	sub	r3, fp, #4
	sub	r3, r3, #688
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-484]
	vstr	d17, [fp, #-476]
	vldr	d16, [fp, #-484]
	vldr	d17, [fp, #-476]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-448]	@ float
	vldr	d16, [fp, #-68]
	vldr	d17, [fp, #-60]
	vstr	d16, [fp, #-468]
	vstr	d17, [fp, #-460]
	ldr	r3, [fp, #-448]	@ float
	vldr	d16, [fp, #-468]
	vldr	d17, [fp, #-460]
	vmov.32	d16[1], r3
	vstr	d16, [fp, #-68]
	vstr	d17, [fp, #-60]
	sub	r3, fp, #4
	sub	r3, r3, #688
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	vldr	d16, [fp, #-444]
	vldr	d17, [fp, #-436]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-408]	@ float
	vldr	d16, [fp, #-68]
	vldr	d17, [fp, #-60]
	vstr	d16, [fp, #-428]
	vstr	d17, [fp, #-420]
	ldr	r3, [fp, #-408]	@ float
	vldr	d16, [fp, #-428]
	vldr	d17, [fp, #-420]
	vmov.32	d17[0], r3
	vstr	d16, [fp, #-68]
	vstr	d17, [fp, #-60]
	sub	r3, fp, #4
	sub	r3, r3, #688
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-404]
	vstr	d17, [fp, #-396]
	vldr	d16, [fp, #-404]
	vldr	d17, [fp, #-396]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-368]	@ float
	vldr	d16, [fp, #-68]
	vldr	d17, [fp, #-60]
	vstr	d16, [fp, #-388]
	vstr	d17, [fp, #-380]
	ldr	r3, [fp, #-368]	@ float
	vldr	d16, [fp, #-388]
	vldr	d17, [fp, #-380]
	vmov.32	d17[1], r3
	vstr	d16, [fp, #-68]
	vstr	d17, [fp, #-60]
	vldr	d16, [fp, #-36]
	vldr	d17, [fp, #-28]
	vstr	d16, [fp, #-348]
	vstr	d17, [fp, #-340]
	vldr	d16, [fp, #-20]
	vldr	d17, [fp, #-12]
	vstr	d16, [fp, #-364]
	vstr	d17, [fp, #-356]
	vldr	d16, [fp, #-348]
	vldr	d17, [fp, #-340]
	vldr	d18, [fp, #-364]
	vldr	d19, [fp, #-356]
	vacge.f32	q8, q8, q9
	vstr	d16, [fp, #-84]
	vstr	d17, [fp, #-76]
	vldr	d16, [fp, #-52]
	vldr	d17, [fp, #-44]
	vstr	d16, [fp, #-316]
	vstr	d17, [fp, #-308]
	vldr	d16, [fp, #-20]
	vldr	d17, [fp, #-12]
	vstr	d16, [fp, #-332]
	vstr	d17, [fp, #-324]
	vldr	d16, [fp, #-316]
	vldr	d17, [fp, #-308]
	vldr	d18, [fp, #-332]
	vldr	d19, [fp, #-324]
	vacge.f32	q8, q8, q9
	vstr	d16, [fp, #-100]
	vstr	d17, [fp, #-92]
	vldr	d16, [fp, #-68]
	vldr	d17, [fp, #-60]
	vstr	d16, [fp, #-284]
	vstr	d17, [fp, #-276]
	vldr	d16, [fp, #-20]
	vldr	d17, [fp, #-12]
	vstr	d16, [fp, #-300]
	vstr	d17, [fp, #-292]
	vldr	d16, [fp, #-284]
	vldr	d17, [fp, #-276]
	vldr	d18, [fp, #-300]
	vldr	d19, [fp, #-292]
	vacge.f32	q8, q8, q9
	vstr	d16, [fp, #-116]
	vstr	d17, [fp, #-108]
	vldr	d16, [fp, #-84]
	vldr	d17, [fp, #-76]
	vstr	d16, [fp, #-252]
	vstr	d17, [fp, #-244]
	vldr	d16, [fp, #-100]
	vldr	d17, [fp, #-92]
	vstr	d16, [fp, #-268]
	vstr	d17, [fp, #-260]
	vldr	d18, [fp, #-252]
	vldr	d19, [fp, #-244]
	vldr	d16, [fp, #-268]
	vldr	d17, [fp, #-260]
	vadd.i32	q8, q9, q8
	vstr	d16, [fp, #-132]
	vstr	d17, [fp, #-124]
	vldr	d16, [fp, #-132]
	vldr	d17, [fp, #-124]
	vstr	d16, [fp, #-220]
	vstr	d17, [fp, #-212]
	vldr	d16, [fp, #-116]
	vldr	d17, [fp, #-108]
	vstr	d16, [fp, #-236]
	vstr	d17, [fp, #-228]
	vldr	d18, [fp, #-220]
	vldr	d19, [fp, #-212]
	vldr	d16, [fp, #-236]
	vldr	d17, [fp, #-228]
	vadd.i32	q8, q9, q8
	vstr	d16, [fp, #-132]
	vstr	d17, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-136]
	vldr	d16, [fp, #-132]
	vldr	d17, [fp, #-124]
	vstr	d16, [fp, #-204]
	vstr	d17, [fp, #-196]
	vldr	d16, [fp, #-204]
	vldr	d17, [fp, #-196]
	vmov.32	r3, d16[0]
	mov	r2, r3
	ldr	r3, [fp, #-136]
	add	r3, r3, r2
	str	r3, [fp, #-136]
	vldr	d16, [fp, #-132]
	vldr	d17, [fp, #-124]
	vstr	d16, [fp, #-188]
	vstr	d17, [fp, #-180]
	vldr	d16, [fp, #-188]
	vldr	d17, [fp, #-180]
	vmov.32	r3, d16[1]
	mov	r2, r3
	ldr	r3, [fp, #-136]
	add	r3, r3, r2
	str	r3, [fp, #-136]
	vldr	d16, [fp, #-132]
	vldr	d17, [fp, #-124]
	vstr	d16, [fp, #-172]
	vstr	d17, [fp, #-164]
	vldr	d16, [fp, #-172]
	vldr	d17, [fp, #-164]
	vmov.32	r3, d17[0]
	mov	r2, r3
	ldr	r3, [fp, #-136]
	add	r3, r3, r2
	str	r3, [fp, #-136]
	vldr	d16, [fp, #-132]
	vldr	d17, [fp, #-124]
	vstr	d16, [fp, #-156]
	vstr	d17, [fp, #-148]
	vldr	d16, [fp, #-156]
	vldr	d17, [fp, #-148]
	vmov.32	r3, d17[1]
	mov	r2, r3
	ldr	r3, [fp, #-136]
	add	r3, r3, r2
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-136]
	cmp	r3, #0
	beq	.L44
	mov	r3, #0
	b	.L46
.L44:
	mov	r3, #1
.L46:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
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
	b	.L48
.L53:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L49
.L52:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L50
.L51:
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
.L50:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	ble	.L51
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L49:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L52
.L48:
	ldr	r0, [fp, #-584]
	bl	SVD_matrix_isDiagonal
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L54
.L59:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L55
.L58:
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
	vldr.32	s14, .L61
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L56
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]	@ float
.L56:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L55:
	ldr	r3, [fp, #-28]
	cmp	r3, #3
	ble	.L58
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L54:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	ble	.L59
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L62:
	.align	2
.L61:
	.word	953267991
	.size	SVD_decompose, .-SVD_decompose
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
