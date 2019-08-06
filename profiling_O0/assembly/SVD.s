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
	.type	SVD_cos, %function
SVD_cos:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L2
	mov	r3, #8192
	b	.L3
.L2:
	ldr	r3, [fp, #-24]
	movw	r2, #12868
	cmp	r3, r2
	bne	.L4
	mov	r3, #0
	b	.L3
.L4:
	ldr	r3, [fp, #-24]
	movw	r2, #25736
	cmp	r3, r2
	bne	.L5
	mov	r3, #57344
	movt	r3, 65535
	b	.L3
.L5:
	ldr	r3, [fp, #-24]
	movw	r2, #12868
	cmp	r3, r2
	ble	.L6
	ldr	r3, [fp, #-24]
	rsb	r3, r3, #25600
	add	r3, r3, #136
	str	r3, [fp, #-24]
	mvn	r3, #0
	str	r3, [fp, #-8]
.L6:
	ldr	r3, [fp, #-24]
	cmp	r3, #1072
	bge	.L7
	movw	r3, #65001
	movt	r3, 65535
	str	r3, [fp, #-12]
	mov	r3, #67108864
	str	r3, [fp, #-16]
	b	.L8
.L7:
	ldr	r3, [fp, #-24]
	cmp	r3, #2144
	bgt	.L9
	movw	r3, #63939
	movt	r3, 65535
	str	r3, [fp, #-12]
	movw	r3, #24316
	movt	r3, 1041
	str	r3, [fp, #-16]
	b	.L8
.L9:
	ldr	r3, [fp, #-24]
	cmp	r3, #3216
	bgt	.L10
	movw	r3, #62905
	movt	r3, 65535
	str	r3, [fp, #-12]
	movw	r3, #14343
	movt	r3, 1075
	str	r3, [fp, #-16]
	b	.L8
.L10:
	ldr	r3, [fp, #-24]
	cmp	r3, #4288
	bgt	.L11
	movw	r3, #61915
	movt	r3, 65535
	str	r3, [fp, #-12]
	movw	r3, #51152
	movt	r3, 1123
	str	r3, [fp, #-16]
	b	.L8
.L11:
	ldr	r3, [fp, #-24]
	movw	r2, #6433
	cmp	r3, r2
	bgt	.L12
	movw	r3, #60563
	movt	r3, 65535
	str	r3, [fp, #-12]
	movw	r3, #18046
	movt	r3, 1212
	str	r3, [fp, #-16]
	b	.L8
.L12:
	ldr	r3, [fp, #-24]
	movw	r2, #8578
	cmp	r3, r2
	bgt	.L13
	movw	r3, #59055
	movt	r3, 65535
	str	r3, [fp, #-12]
	movw	r3, #20275
	movt	r3, 1360
	str	r3, [fp, #-16]
	b	.L8
.L13:
	ldr	r3, [fp, #-24]
	movw	r2, #10722
	cmp	r3, r2
	bgt	.L14
	movw	r3, #57989
	movt	r3, 65535
	str	r3, [fp, #-12]
	movw	r3, #57488
	movt	r3, 1499
	str	r3, [fp, #-16]
	b	.L8
.L14:
	ldr	r3, [fp, #-24]
	movw	r2, #12867
	cmp	r3, r2
	bgt	.L8
	movw	r3, #57437
	movt	r3, 65535
	str	r3, [fp, #-12]
	movw	r3, #12073
	movt	r3, 1590
	str	r3, [fp, #-16]
.L8:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	mul	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	asr	r3, r3, #13
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
.L3:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_cos, .-SVD_cos
	.align	2
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_sin, %function
SVD_sin:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L16
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-24]
	mvn	r3, #0
	str	r3, [fp, #-8]
.L16:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L17
	mov	r3, #0
	b	.L18
.L17:
	ldr	r3, [fp, #-24]
	movw	r2, #12868
	cmp	r3, r2
	bne	.L19
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #13
	b	.L18
.L19:
	ldr	r3, [fp, #-24]
	movw	r2, #25736
	cmp	r3, r2
	bne	.L20
	mov	r3, #0
	b	.L18
.L20:
	ldr	r3, [fp, #-24]
	movw	r2, #12868
	cmp	r3, r2
	ble	.L21
	ldr	r3, [fp, #-24]
	rsb	r3, r3, #25600
	add	r3, r3, #136
	str	r3, [fp, #-24]
.L21:
	ldr	r3, [fp, #-24]
	cmp	r3, #2144
	bgt	.L22
	movw	r3, #8099
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L23
.L22:
	ldr	r3, [fp, #-24]
	cmp	r3, #4288
	bgt	.L24
	movw	r3, #7547
	str	r3, [fp, #-12]
	movw	r3, #4024
	movt	r3, 18
	str	r3, [fp, #-16]
	b	.L23
.L24:
	ldr	r3, [fp, #-24]
	movw	r2, #6433
	cmp	r3, r2
	bgt	.L25
	movw	r3, #6481
	str	r3, [fp, #-12]
	movw	r3, #55398
	movt	r3, 87
	str	r3, [fp, #-16]
	b	.L23
.L25:
	ldr	r3, [fp, #-24]
	movw	r2, #8578
	cmp	r3, r2
	bgt	.L26
	movw	r3, #4973
	str	r3, [fp, #-12]
	movw	r3, #57628
	movt	r3, 235
	str	r3, [fp, #-16]
	b	.L23
.L26:
	ldr	r3, [fp, #-24]
	movw	r2, #9650
	cmp	r3, r2
	bgt	.L27
	movw	r3, #3621
	str	r3, [fp, #-12]
	movw	r3, #56950
	movt	r3, 412
	str	r3, [fp, #-16]
	b	.L23
.L27:
	ldr	r3, [fp, #-24]
	movw	r2, #10722
	cmp	r3, r2
	bgt	.L28
	movw	r3, #2631
	str	r3, [fp, #-12]
	movw	r3, #36307
	movt	r3, 558
	str	r3, [fp, #-16]
	b	.L23
.L28:
	ldr	r3, [fp, #-24]
	movw	r2, #11795
	cmp	r3, r2
	bgt	.L29
	movw	r3, #1597
	str	r3, [fp, #-12]
	movw	r3, #51978
	movt	r3, 727
	str	r3, [fp, #-16]
	b	.L23
.L29:
	ldr	r3, [fp, #-24]
	movw	r2, #12867
	cmp	r3, r2
	bgt	.L23
	movw	r3, #535
	str	r3, [fp, #-12]
	movw	r3, #57308
	movt	r3, 918
	str	r3, [fp, #-16]
.L23:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	mul	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	asr	r3, r3, #13
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
.L18:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_sin, .-SVD_sin
	.align	2
	.syntax unified
	.arm
	.fpu neon
	.type	arctan, %function
arctan:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #8192
	ble	.L31
	movw	r3, #41419
	movt	r3, 581
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	movw	r2, #10551
	mul	r3, r2, r3
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8192
	asr	r3, r3, #14
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	b	.L32
.L31:
	ldr	r3, [fp, #-16]
	cmn	r3, #8192
	blt	.L33
	ldr	r3, [fp, #-16]
	cmp	r3, #8192
	bgt	.L33
	ldr	r3, [fp, #-16]
	movw	r2, #15204
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8192
	asr	r3, r3, #14
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	b	.L32
.L33:
	ldr	r3, [fp, #-16]
	cmn	r3, #8192
	bge	.L34
	movw	r3, #24117
	movt	r3, 64954
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	movw	r2, #10551
	mul	r3, r2, r3
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8192
	asr	r3, r3, #14
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	b	.L32
.L34:
	mov	r3, #0
.L32:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	arctan, .-arctan
	.global	__aeabi_ldivmod
	.align	2
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_atan, %function
SVD_atan:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L36
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	ble	.L37
	movw	r3, #25736
	b	.L38
.L37:
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bge	.L39
	movw	r3, #39800
	movt	r3, 65535
	b	.L38
.L39:
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L36
	mov	r3, #0
	b	.L38
.L36:
	ldr	r3, [fp, #-48]
	mov	r2, r3
	asr	r3, r2, #31
	strd	r2, [fp, #-20]
	ldr	r3, [fp, #-52]
	mov	r2, r3
	asr	r3, r2, #31
	strd	r2, [fp, #-28]
	ldr	r3, [fp, #-52]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r2, r3
	ble	.L40
	ldrd	r2, [fp, #-20]
	lsl	r3, r3, #14
	orr	r3, r3, r2, lsr #18
	lsl	r2, r2, #14
	strd	r2, [fp, #-20]
	ldrd	r2, [fp, #-28]
	ldrd	r0, [fp, #-20]
	bl	__aeabi_ldivmod
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-36]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-40]
	bl	arctan
	str	r0, [fp, #-8]
	b	.L41
.L40:
	ldrd	r2, [fp, #-28]
	lsl	r3, r3, #14
	orr	r3, r3, r2, lsr #18
	lsl	r2, r2, #14
	strd	r2, [fp, #-28]
	ldrd	r2, [fp, #-20]
	ldrd	r0, [fp, #-28]
	bl	__aeabi_ldivmod
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-36]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-40]
	bl	arctan
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	blt	.L42
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #25600
	add	r3, r3, #136
	str	r3, [fp, #-8]
	b	.L41
.L42:
	ldr	r2, [fp, #-8]
	movw	r3, #39800
	movt	r3, 65535
	sub	r3, r3, r2
	str	r3, [fp, #-8]
.L41:
	ldr	r3, [fp, #-8]
.L38:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	SVD_atan, .-SVD_atan
	.align	2
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
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d16, s15
	vabs.f64	d16, d16
	vcvt.s32.f64	s15, d16
	vmov	r3, s15	@ int
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_abs, .-SVD_abs
	.align	2
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_mul, %function
SVD_matrix_mul:
	@ args = 0, pretend = 0, frame = 1816
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	add	fp, sp, #64
	sub	sp, sp, #1808
	sub	sp, sp, #12
	str	r0, [fp, #-1872]
	str	r1, [fp, #-1876]
	str	r2, [fp, #-1880]
	ldr	r3, [fp, #-1872]
	str	r3, [fp, #-1544]
	ldr	r3, [fp, #-1544]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #68
	sub	r3, r3, #1728
	sub	r3, r3, #8
	vstmia	r3, {d16-d23}
	sub	r3, fp, #68
	sub	r3, r3, #1728
	sub	r3, r3, #8
	vldmia	r3, {d16-d23}
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vstmia	r3, {d16-d23}
	ldr	r3, [fp, #-1876]
	str	r3, [fp, #-1540]
	ldr	r3, [fp, #-1540]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #68
	sub	r3, r3, #1728
	sub	r3, r3, #8
	vstmia	r3, {d16-d23}
	sub	r3, fp, #68
	sub	r3, r3, #1728
	sub	r3, r3, #8
	vldmia	r3, {d16-d23}
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vstmia	r3, {d16-d23}
	mov	r3, #0
	str	r3, [fp, #-1536]
	ldr	r3, [fp, #-1536]
	vdup.32	q8, r3
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1456
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1456
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1440
	vst1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-1512]
	sub	r3, fp, #68
	sub	r3, r3, #1440
	vld1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-1512]
	vmov.32	d15[0], r3
	vmul.i32	q8, q8, d15[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1424
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1424
	vld1.64	{d16-d17}, [r3:64]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1392
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1408
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r2, r3, #1392
	sub	r3, fp, #68
	sub	r3, r3, #1408
	vld1.64	{d18-d19}, [r2:64]
	vld1.64	{d16-d17}, [r3:64]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1376
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1376
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #68
	sub	r3, r3, #1344
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-1424]
	sub	r3, fp, #68
	sub	r3, r3, #1344
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-1424]
	vmov.32	d14[0], r3
	vmul.i32	q8, q8, d14[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1328
	sub	r3, r3, #8
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1328
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1296
	sub	r3, r3, #8
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1312
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r2, r3, #1296
	sub	r2, r2, #8
	sub	r3, fp, #68
	sub	r3, r3, #1312
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r2:64]
	vld1.64	{d16-d17}, [r3:64]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1280
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1280
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #68
	sub	r3, r3, #1264
	vst1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-1336]
	sub	r3, fp, #68
	sub	r3, r3, #1264
	vld1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-1336]
	vmov.32	d13[0], r3
	vmul.i32	q8, q8, d13[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1248
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1248
	vld1.64	{d16-d17}, [r3:64]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1216
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1232
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r2, r3, #1216
	sub	r3, fp, #68
	sub	r3, r3, #1232
	vld1.64	{d18-d19}, [r2:64]
	vld1.64	{d16-d17}, [r3:64]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1200
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1200
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #68
	sub	r3, r3, #1168
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-1248]
	sub	r3, fp, #68
	sub	r3, r3, #1168
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-1248]
	vmov.32	d12[0], r3
	vmul.i32	q8, q8, d12[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1120
	sub	r3, r3, #8
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r2, r3, #1120
	sub	r2, r2, #8
	sub	r3, fp, #68
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r2:64]
	vld1.64	{d16-d17}, [r3:64]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	mov	r3, #0
	str	r3, [fp, #-1176]
	ldr	r3, [fp, #-1176]
	vdup.32	q8, r3
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #68
	sub	r3, r3, #1104
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1104
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1072
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-1152]
	sub	r3, fp, #68
	sub	r3, r3, #1072
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-1152]
	vmov.32	d11[0], r3
	vmul.i32	q8, q8, d11[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1056
	sub	r3, r3, #8
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1056
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #68
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #1040
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #68
	sub	r2, r3, #1024
	sub	r2, r2, #8
	sub	r3, fp, #68
	sub	r3, r3, #1040
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r2:64]
	vld1.64	{d16-d17}, [r3:64]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #1072
	sub	r3, r3, #12
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #1072
	sub	r3, r3, #12
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #1056
	sub	r3, r3, #4
	vst1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-1064]
	sub	r3, fp, #1056
	sub	r3, r3, #4
	vld1.64	{d16-d17}, [r3:64]
	ldr	r3, [fp, #-1064]
	vmov.32	d10[0], r3
	vmul.i32	q8, q8, d10[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	sub	r3, fp, #1040
	sub	r3, r3, #4
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #1040
	sub	r3, r3, #4
	vld1.64	{d16-d17}, [r3:64]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-1012]
	vstr	d19, [fp, #-1004]
	sub	r3, fp, #1024
	sub	r3, r3, #4
	vst1.64	{d16-d17}, [r3:64]
	vldr	d18, [fp, #-1012]
	vldr	d19, [fp, #-1004]
	sub	r3, fp, #1024
	sub	r3, r3, #4
	vld1.64	{d16-d17}, [r3:64]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-996]
	vstr	d17, [fp, #-988]
	vldr	d16, [fp, #-996]
	vldr	d17, [fp, #-988]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-972]
	vstr	d17, [fp, #-964]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-976]
	vldr	d16, [fp, #-972]
	vldr	d17, [fp, #-964]
	ldr	r3, [fp, #-976]
	vmov.32	d9[0], r3
	vmul.i32	q8, q8, d9[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-956]
	vstr	d17, [fp, #-948]
	vldr	d16, [fp, #-956]
	vldr	d17, [fp, #-948]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-924]
	vstr	d19, [fp, #-916]
	vstr	d16, [fp, #-940]
	vstr	d17, [fp, #-932]
	vldr	d18, [fp, #-924]
	vldr	d19, [fp, #-916]
	vldr	d16, [fp, #-940]
	vldr	d17, [fp, #-932]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-908]
	vstr	d17, [fp, #-900]
	vldr	d16, [fp, #-908]
	vldr	d17, [fp, #-900]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-884]
	vstr	d17, [fp, #-876]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-888]
	vldr	d16, [fp, #-884]
	vldr	d17, [fp, #-876]
	ldr	r3, [fp, #-888]
	vmov.32	d8[0], r3
	vmul.i32	q8, q8, d8[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-868]
	vstr	d17, [fp, #-860]
	vldr	d16, [fp, #-868]
	vldr	d17, [fp, #-860]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-836]
	vstr	d19, [fp, #-828]
	vstr	d16, [fp, #-852]
	vstr	d17, [fp, #-844]
	vldr	d18, [fp, #-836]
	vldr	d19, [fp, #-828]
	vldr	d16, [fp, #-852]
	vldr	d17, [fp, #-844]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	mov	r3, #0
	str	r3, [fp, #-816]
	ldr	r3, [fp, #-816]
	vdup.32	q8, r3
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-812]
	vstr	d17, [fp, #-804]
	vldr	d16, [fp, #-812]
	vldr	d17, [fp, #-804]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vstr	d16, [fp, #-788]
	vstr	d17, [fp, #-780]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-792]
	vldr	d16, [fp, #-788]
	vldr	d17, [fp, #-780]
	ldr	r3, [fp, #-792]
	vmov.32	d0[0], r3
	vmul.i32	q8, q8, d0[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-772]
	vstr	d17, [fp, #-764]
	vldr	d16, [fp, #-772]
	vldr	d17, [fp, #-764]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-740]
	vstr	d19, [fp, #-732]
	vstr	d16, [fp, #-756]
	vstr	d17, [fp, #-748]
	vldr	d18, [fp, #-740]
	vldr	d19, [fp, #-732]
	vldr	d16, [fp, #-756]
	vldr	d17, [fp, #-748]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-724]
	vstr	d17, [fp, #-716]
	vldr	d16, [fp, #-724]
	vldr	d17, [fp, #-716]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-700]
	vstr	d17, [fp, #-692]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-704]
	vldr	d16, [fp, #-700]
	vldr	d17, [fp, #-692]
	ldr	r3, [fp, #-704]
	vmov.32	d1[0], r3
	vmul.i32	q8, q8, d1[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-684]
	vstr	d17, [fp, #-676]
	vldr	d16, [fp, #-684]
	vldr	d17, [fp, #-676]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-652]
	vstr	d19, [fp, #-644]
	vstr	d16, [fp, #-668]
	vstr	d17, [fp, #-660]
	vldr	d18, [fp, #-652]
	vldr	d19, [fp, #-644]
	vldr	d16, [fp, #-668]
	vldr	d17, [fp, #-660]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-636]
	vstr	d17, [fp, #-628]
	vldr	d16, [fp, #-636]
	vldr	d17, [fp, #-628]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-612]
	vstr	d17, [fp, #-604]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-616]
	vldr	d16, [fp, #-612]
	vldr	d17, [fp, #-604]
	ldr	r3, [fp, #-616]
	vmov.32	d2[0], r3
	vmul.i32	q8, q8, d2[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-596]
	vstr	d17, [fp, #-588]
	vldr	d16, [fp, #-596]
	vldr	d17, [fp, #-588]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-564]
	vstr	d19, [fp, #-556]
	vstr	d16, [fp, #-580]
	vstr	d17, [fp, #-572]
	vldr	d18, [fp, #-564]
	vldr	d19, [fp, #-556]
	vldr	d16, [fp, #-580]
	vldr	d17, [fp, #-572]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-548]
	vstr	d17, [fp, #-540]
	vldr	d16, [fp, #-548]
	vldr	d17, [fp, #-540]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-524]
	vstr	d17, [fp, #-516]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-528]
	vldr	d16, [fp, #-524]
	vldr	d17, [fp, #-516]
	ldr	r3, [fp, #-528]
	vmov.32	d3[0], r3
	vmul.i32	q8, q8, d3[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-508]
	vstr	d17, [fp, #-500]
	vldr	d16, [fp, #-508]
	vldr	d17, [fp, #-500]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-476]
	vstr	d19, [fp, #-468]
	vstr	d16, [fp, #-492]
	vstr	d17, [fp, #-484]
	vldr	d18, [fp, #-476]
	vldr	d19, [fp, #-468]
	vldr	d16, [fp, #-492]
	vldr	d17, [fp, #-484]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	mov	r3, #0
	str	r3, [fp, #-456]
	ldr	r3, [fp, #-456]
	vdup.32	q8, r3
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-452]
	vstr	d17, [fp, #-444]
	vldr	d16, [fp, #-452]
	vldr	d17, [fp, #-444]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vstr	d16, [fp, #-428]
	vstr	d17, [fp, #-420]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-432]
	vldr	d16, [fp, #-428]
	vldr	d17, [fp, #-420]
	ldr	r3, [fp, #-432]
	vmov.32	d4[0], r3
	vmul.i32	q8, q8, d4[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-412]
	vstr	d17, [fp, #-404]
	vldr	d16, [fp, #-412]
	vldr	d17, [fp, #-404]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-380]
	vstr	d19, [fp, #-372]
	vstr	d16, [fp, #-396]
	vstr	d17, [fp, #-388]
	vldr	d18, [fp, #-380]
	vldr	d19, [fp, #-372]
	vldr	d16, [fp, #-396]
	vldr	d17, [fp, #-388]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-364]
	vstr	d17, [fp, #-356]
	vldr	d16, [fp, #-364]
	vldr	d17, [fp, #-356]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-340]
	vstr	d17, [fp, #-332]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-344]
	vldr	d16, [fp, #-340]
	vldr	d17, [fp, #-332]
	ldr	r3, [fp, #-344]
	vmov.32	d5[0], r3
	vmul.i32	q8, q8, d5[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-324]
	vstr	d17, [fp, #-316]
	vldr	d16, [fp, #-324]
	vldr	d17, [fp, #-316]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-292]
	vstr	d19, [fp, #-284]
	vstr	d16, [fp, #-308]
	vstr	d17, [fp, #-300]
	vldr	d18, [fp, #-292]
	vldr	d19, [fp, #-284]
	vldr	d16, [fp, #-308]
	vldr	d17, [fp, #-300]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-276]
	vstr	d17, [fp, #-268]
	vldr	d16, [fp, #-276]
	vldr	d17, [fp, #-268]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-252]
	vstr	d17, [fp, #-244]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-256]
	vldr	d16, [fp, #-252]
	vldr	d17, [fp, #-244]
	ldr	r3, [fp, #-256]
	vmov.32	d6[0], r3
	vmul.i32	q8, q8, d6[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-236]
	vstr	d17, [fp, #-228]
	vldr	d16, [fp, #-236]
	vldr	d17, [fp, #-228]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-204]
	vstr	d19, [fp, #-196]
	vstr	d16, [fp, #-220]
	vstr	d17, [fp, #-212]
	vldr	d18, [fp, #-204]
	vldr	d19, [fp, #-196]
	vldr	d16, [fp, #-220]
	vldr	d17, [fp, #-212]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #68
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-188]
	vstr	d17, [fp, #-180]
	vldr	d16, [fp, #-188]
	vldr	d17, [fp, #-180]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-72]
	sub	r3, fp, #68
	sub	r3, r3, #1536
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-164]
	vstr	d17, [fp, #-156]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-168]
	vldr	d16, [fp, #-164]
	vldr	d17, [fp, #-156]
	ldr	r3, [fp, #-168]
	vmov.32	d7[0], r3
	vmul.i32	q8, q8, d7[0]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-148]
	vstr	d17, [fp, #-140]
	vldr	d16, [fp, #-148]
	vldr	d17, [fp, #-140]
	vrshr.s32	q8, q8, #8
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vldr	d18, [fp, #-92]
	vldr	d19, [fp, #-84]
	vstr	d18, [fp, #-116]
	vstr	d19, [fp, #-108]
	vstr	d16, [fp, #-132]
	vstr	d17, [fp, #-124]
	vldr	d18, [fp, #-116]
	vldr	d19, [fp, #-108]
	vldr	d16, [fp, #-132]
	vldr	d17, [fp, #-124]
	vadd.i32	q8, q9, q8
	sub	r3, fp, #68
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	ldr	r3, [fp, #-1880]
	str	r3, [fp, #-96]
	sub	r3, fp, #68
	sub	r3, r3, #1792
	sub	r3, r3, #8
	sub	r2, fp, #68
	sub	r2, r2, #1664
	sub	r2, r2, #8
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #68
	sub	r3, r3, #1728
	sub	r3, r3, #8
	sub	r2, fp, #68
	sub	r2, r2, #1792
	sub	r2, r2, #8
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #68
	sub	r3, r3, #1728
	sub	r3, r3, #8
	vldmia	r3, {d16-d23}
	ldr	r3, [fp, #-96]
	vst4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vst4.32	{d17, d19, d21, d23}, [r3]
	nop
	sub	sp, fp, #64
	@ sp needed
	vldm	sp!, {d8-d15}
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
	b	.L118
.L119:
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
.L118:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L119
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
	b	.L121
.L123:
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
.L121:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L123
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
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L125
.L130:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L126
.L129:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	beq	.L127
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r3, #0
	ble	.L127
	mov	r3, #0
	b	.L128
.L127:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L126:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L129
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L125:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L130
	mov	r3, #1
.L128:
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
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	256
	.text
	.align	2
	.global	SVD_decompose
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_decompose, %function
SVD_decompose:
	@ args = 0, pretend = 0, frame = 592
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #596
	str	r0, [fp, #-592]
	str	r1, [fp, #-596]
	str	r2, [fp, #-600]
	str	r3, [fp, #-604]
	sub	r3, fp, #200
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #264
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #328
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	ldr	r1, [fp, #-600]
	ldr	r0, [fp, #-592]
	bl	SVD_matrix_copy
	ldr	r1, [fp, #-596]
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #136
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-64]
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L132
.L139:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L133
.L136:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L134
.L135:
	sub	r3, fp, #200
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #264
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #328
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #392
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #456
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #520
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #584
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-600]
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-600]
	add	r3, r1, r3
	ldr	r1, [fp, #-24]
	ldr	r3, [r3, r1, lsl #2]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-600]
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-600]
	add	r3, r1, r3
	ldr	r1, [fp, #-24]
	ldr	r3, [r3, r1, lsl #2]
	sub	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-600]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-600]
	add	r3, r1, r3
	ldr	r1, [fp, #-20]
	ldr	r3, [r3, r1, lsl #2]
	sub	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-600]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-600]
	add	r3, r1, r3
	ldr	r1, [fp, #-20]
	ldr	r3, [r3, r1, lsl #2]
	add	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #6
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #6
	str	r3, [fp, #-72]
	ldr	r1, [fp, #-72]
	ldr	r0, [fp, #-68]
	bl	SVD_atan
	str	r0, [fp, #-52]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #6
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-48]
	lsl	r3, r3, #6
	str	r3, [fp, #-72]
	ldr	r1, [fp, #-72]
	ldr	r0, [fp, #-68]
	bl	SVD_atan
	str	r0, [fp, #-56]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	sub	r3, r2, r3
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [fp, #-64]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-64]
	sub	r3, r2, r3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	asr	r3, r3, #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	asr	r3, r3, #1
	str	r3, [fp, #-60]
	ldr	r0, [fp, #-64]
	bl	SVD_cos
	mov	r3, r0
	add	r3, r3, #16
	asr	r1, r3, #5
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #380
	str	r1, [r3]
	ldr	r0, [fp, #-64]
	bl	SVD_sin
	mov	r3, r0
	add	r3, r3, #16
	asr	r3, r3, #5
	rsb	r2, r3, #0
	ldr	r3, [fp, #-20]
	lsl	r1, r3, #2
	ldr	r3, [fp, #-24]
	add	r3, r1, r3
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	str	r2, [r3, #-380]
	ldr	r0, [fp, #-64]
	bl	SVD_sin
	mov	r3, r0
	add	r3, r3, #16
	asr	r2, r3, #5
	ldr	r3, [fp, #-24]
	lsl	r1, r3, #2
	ldr	r3, [fp, #-20]
	add	r3, r1, r3
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	str	r2, [r3, #-380]
	ldr	r0, [fp, #-64]
	bl	SVD_cos
	mov	r3, r0
	add	r3, r3, #16
	asr	r1, r3, #5
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #380
	str	r1, [r3]
	ldr	r0, [fp, #-60]
	bl	SVD_cos
	mov	r3, r0
	add	r3, r3, #16
	asr	r1, r3, #5
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #444
	str	r1, [r3]
	ldr	r0, [fp, #-60]
	bl	SVD_sin
	mov	r3, r0
	add	r3, r3, #16
	asr	r3, r3, #5
	rsb	r2, r3, #0
	ldr	r3, [fp, #-20]
	lsl	r1, r3, #2
	ldr	r3, [fp, #-24]
	add	r3, r1, r3
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	str	r2, [r3, #-444]
	ldr	r0, [fp, #-60]
	bl	SVD_sin
	mov	r3, r0
	add	r3, r3, #16
	asr	r2, r3, #5
	ldr	r3, [fp, #-24]
	lsl	r1, r3, #2
	ldr	r3, [fp, #-20]
	add	r3, r1, r3
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	str	r2, [r3, #-444]
	ldr	r0, [fp, #-60]
	bl	SVD_cos
	mov	r3, r0
	add	r3, r3, #16
	asr	r1, r3, #5
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #444
	str	r1, [r3]
	sub	r2, fp, #520
	sub	r3, fp, #392
	mov	r1, r2
	mov	r0, r3
	bl	SVD_matrix_trans
	sub	r2, fp, #584
	sub	r3, fp, #456
	mov	r1, r2
	mov	r0, r3
	bl	SVD_matrix_trans
	sub	r2, fp, #200
	sub	r3, fp, #520
	mov	r1, r3
	ldr	r0, [fp, #-596]
	bl	SVD_matrix_mul
	sub	r2, fp, #328
	sub	r1, fp, #136
	sub	r3, fp, #456
	mov	r0, r3
	bl	SVD_matrix_mul
	sub	r2, fp, #264
	sub	r3, fp, #392
	ldr	r1, [fp, #-600]
	mov	r0, r3
	bl	SVD_matrix_mul
	sub	r1, fp, #584
	sub	r3, fp, #264
	ldr	r2, [fp, #-600]
	mov	r0, r3
	bl	SVD_matrix_mul
	sub	r2, fp, #136
	sub	r3, fp, #328
	mov	r1, r2
	mov	r0, r3
	bl	SVD_matrix_copy
	sub	r3, fp, #136
	ldr	r1, [fp, #-604]
	mov	r0, r3
	bl	SVD_matrix_trans
	sub	r3, fp, #200
	ldr	r1, [fp, #-596]
	mov	r0, r3
	bl	SVD_matrix_copy
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L134:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	ble	.L135
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L133:
	ldr	r3, [fp, #-20]
	cmp	r3, #2
	ble	.L136
	ldr	r3, [fp, #-16]
	cmp	r3, #4
	beq	.L145
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L132:
	ldr	r0, [fp, #-600]
	bl	SVD_matrix_isDiagonal
	mov	r3, r0
	cmp	r3, #0
	beq	.L139
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L140
.L144:
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L141
.L143:
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-600]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-600]
	add	r4, r2, r3
	mov	r0, r1
	bl	SVD_abs
	mov	r2, r0
	ldr	r3, [fp, #-32]
	str	r2, [r4, r3, lsl #2]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-600]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	bgt	.L142
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-600]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	mov	r1, #0
	str	r1, [r3, r2, lsl #2]
.L142:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L141:
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	ble	.L143
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L140:
	ldr	r3, [fp, #-28]
	cmp	r3, #3
	ble	.L144
	b	.L131
.L145:
	nop
.L131:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	SVD_decompose, .-SVD_decompose
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
