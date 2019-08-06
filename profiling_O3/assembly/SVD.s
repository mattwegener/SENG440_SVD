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
	.file	"SVD.c"
	.text
	.global	__aeabi_ldivmod
	.align	2
	.global	SVD_decompose
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_decompose, %function
SVD_decompose:
	@ args = 0, pretend = 0, frame = 1416
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r4, r0
	sub	sp, sp, #1408
	sub	sp, sp, #12
	mov	r5, r1
	mov	r9, r2
	str	r1, [sp, #720]
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #968
	str	r3, [sp, #836]
	bl	memset
	add	r0, sp, #1024
	mov	r2, #64
	mov	r1, #0
	add	r0, r0, #8
	bl	memset
	add	r0, sp, #1088
	mov	r2, #64
	mov	r1, #0
	add	r0, r0, #8
	bl	memset
	mov	r2, r4
	mov	r3, r9
	vld1.32	{d16-d17}, [r2]!
	vst1.32	{d16-d17}, [r3]!
	vld1.32	{d16-d17}, [r2]
	vst1.32	{d16-d17}, [r3]
	movw	r2, #:lower16:.LANCHOR0
	add	r3, r4, #32
	vld1.32	{d16-d17}, [r3]
	movt	r2, #:upper16:.LANCHOR0
	add	r3, r9, #32
	vst1.32	{d16-d17}, [r3]
	str	r3, [sp, #744]
	mov	r3, r2
	add	r4, r4, #48
	vld1.32	{d16-d17}, [r3:64]!
	vld1.32	{d18-d19}, [r4]
	mov	r0, r3
	str	r3, [sp, #860]
	add	r3, r9, #48
	vst1.32	{d18-d19}, [r3]
	mov	r1, r5
	vst1.32	{d16-d17}, [r5]!
	vld1.32	{d16-d17}, [r0:64]
	vst1.32	{d16-d17}, [r5]
	mov	r3, r0
	add	r0, r2, #32
	vld1.32	{d16-d17}, [r0:64]
	add	ip, r1, #32
	vst1.32	{d16-d17}, [ip]
	str	ip, [sp, #724]
	add	ip, r2, #48
	vld1.32	{d16-d17}, [ip:64]
	add	r1, r1, #48
	vst1.32	{d16-d17}, [r1]
	vld1.32	{d22-d23}, [r2:64]
	vld1.32	{d20-d21}, [r3:64]
	vld1.32	{d18-d19}, [r0:64]
	str	r2, [sp, #864]
	str	r1, [sp, #856]
	movw	r3, #41418
	movw	r1, #24118
	movw	r2, #35786
	vld1.32	{d16-d17}, [ip:64]
	mov	r7, r9
	add	r0, sp, #904
	vst1.32	{d22-d23}, [r0:64]
	add	r0, sp, #920
	vst1.32	{d20-d21}, [r0:64]
	add	r0, sp, #936
	vst1.32	{d18-d19}, [r0:64]
	movt	r1, 64954
	add	r0, sp, #952
	movt	r3, 581
	movt	r2, 397
	str	r5, [sp, #852]
	vst1.32	{d16-d17}, [r0:64]
	str	r1, [sp, #896]
	str	r3, [sp, #888]
	str	r2, [sp, #900]
	str	r10, [sp, #816]
	str	fp, [sp, #820]
.L2:
	vldr.32	s14, [r7, #4]
	vldr.32	s15, .L193
	vabs.f32	s13, s14
	vcmpe.f32	s13, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s13, [r7, #8]
	vabs.f32	s12, s13
	vcmpe.f32	s12, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s11, [r7, #12]
	vabs.f32	s12, s11
	vcmpe.f32	s12, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s12, [r7, #16]
	vabs.f32	s10, s12
	vcmpe.f32	s10, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s10, [r7, #24]
	vabs.f32	s9, s10
	vcmpe.f32	s9, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s8, [r7, #28]
	vabs.f32	s9, s8
	vcmpe.f32	s9, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s9, [r7, #32]
	vabs.f32	s7, s9
	vcmpe.f32	s7, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s7, [r7, #36]
	vabs.f32	s6, s7
	vcmpe.f32	s6, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s5, [r7, #44]
	vabs.f32	s6, s5
	vcmpe.f32	s6, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s6, [r7, #48]
	vabs.f32	s4, s6
	vcmpe.f32	s4, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s4, [r7, #52]
	vmov.f32	s3, s15
	vabs.f32	s15, s4
	vcmpe.f32	s15, s3
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s15, [r7, #56]
	vabs.f32	s2, s15
	vcmpe.f32	s2, s3
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s2, [r7]
	vabs.f32	s2, s2
	vcmpe.f32	s2, s3
	vabs.f32	s14, s14
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s3, .L193
	movmi	r3, #0
	vcmpe.f32	s14, s3
	strmi	r3, [r7]	@ float
	vstrpl.32	s2, [r7]
	vmrs	APSR_nzcv, FPSCR
	vabs.f32	s13, s13
	vstrpl.32	s14, [r7, #4]
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s13, s14
	strmi	r3, [r7, #4]	@ float
	vabs.f32	s11, s11
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s11, s14
	strmi	r3, [r7, #8]	@ float
	vstrpl.32	s13, [r7, #8]
	vabs.f32	s12, s12
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s12, s14
	vldr.32	s14, [r7, #20]
	strmi	r3, [r7, #12]	@ float
	vstrpl.32	s11, [r7, #12]
	vabs.f32	s14, s14
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s13, .L193
	movmi	r3, #0
	vcmpe.f32	s14, s13
	strmi	r3, [r7, #16]	@ float
	vstrpl.32	s12, [r7, #16]
	vmrs	APSR_nzcv, FPSCR
	vabs.f32	s10, s10
	vstrpl.32	s14, [r7, #20]
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s10, s14
	strmi	r3, [r7, #20]	@ float
	vabs.f32	s8, s8
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s8, s14
	strmi	r3, [r7, #24]	@ float
	vstrpl.32	s10, [r7, #24]
	vabs.f32	s9, s9
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s9, s14
	strmi	r3, [r7, #28]	@ float
	vstrpl.32	s8, [r7, #28]
	vabs.f32	s7, s7
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s7, s14
	vldr.32	s14, [r7, #40]
	strmi	r3, [r7, #32]	@ float
	vstrpl.32	s9, [r7, #32]
	vabs.f32	s14, s14
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s13, .L193
	movmi	r3, #0
	vcmpe.f32	s14, s13
	strmi	r3, [r7, #36]	@ float
	vstrpl.32	s7, [r7, #36]
	vmrs	APSR_nzcv, FPSCR
	vabs.f32	s5, s5
	vstrpl.32	s14, [r7, #40]
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s5, s14
	strmi	r3, [r7, #40]	@ float
	vabs.f32	s6, s6
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s6, s14
	strmi	r3, [r7, #44]	@ float
	vstrpl.32	s5, [r7, #44]
	vabs.f32	s4, s4
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s4, s14
	strmi	r3, [r7, #48]	@ float
	vstrpl.32	s6, [r7, #48]
	vabs.f32	s15, s15
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L193
	movmi	r3, #0
	vcmpe.f32	s15, s14
	strmi	r3, [r7, #52]	@ float
	vstrpl.32	s4, [r7, #52]
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #0
	strmi	r3, [r7, #56]	@ float
	vstrpl.32	s15, [r7, #56]
	vldr.32	s15, [r7, #60]
	vldr.32	s14, .L193
	vabs.f32	s15, s15
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #0
	vstrpl.32	s15, [r7, #60]
	strmi	r3, [r7, #60]	@ float
	add	sp, sp, #1408
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L194:
	.align	2
.L193:
	.word	1036831949
	.word	.LANCHOR0+32
.L48:
	mov	r3, #16
	str	r3, [sp, #832]
	ldr	r3, [sp, #836]
	add	r8, sp, #1152
	add	r2, r3, #16
	str	r2, [sp, #848]
	add	r2, r3, #32
	add	r3, r3, #48
	str	r3, [sp, #840]
	add	r3, r7, #4
	str	r3, [sp, #708]
	add	r3, sp, #1216
	add	r3, r3, #12
	str	r3, [sp, #716]
	add	r3, sp, #1152
	add	r3, r3, #12
	add	r6, sp, #1216
	str	r2, [sp, #844]
	str	r3, [sp, #712]
	add	r8, r8, #8
	add	r6, r6, #8
	str	r7, [sp, #676]
.L47:
	movw	r3, #39801
	movw	r2, #47095
	movt	r3, 65535
	str	r3, [sp, #884]
	ldr	r3, [sp, #712]
	ldr	r9, [sp, #832]
	str	r3, [sp, #704]
	ldr	r3, [sp, #716]
	movt	r2, 229
	str	r3, [sp, #696]
	ldr	r3, [sp, #708]
	str	r2, [sp, #892]
	add	r7, r9, #4
	str	r3, [sp, #700]
.L3:
	ldr	r3, [sp, #864]
	add	r1, sp, #968
	vld1.32	{d22-d23}, [r3:64]
	ldr	r3, [sp, #860]
	vst1.32	{d22-d23}, [r1:64]
	vld1.32	{d20-d21}, [r3:64]
	ldr	r3, .L193+4
	add	r1, sp, #1024
	vld1.32	{d18-d19}, [r3:64]
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r1:64]
	add	r3, r3, #16
	add	r1, sp, #1088
	vld1.32	{d16-d17}, [r3:64]
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1280
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1344
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #984
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1040
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1104
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1168
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1232
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1296
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1360
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1000
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1056
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1120
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1184
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1248
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1312
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1376
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1016
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1072
	add	r1, r1, #8
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1136
	add	r1, r1, #8
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1200
	ldr	r3, [sp, #676]
	add	r1, r1, #8
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1264
	add	r2, r3, r9
	add	r1, r1, #8
	add	r3, r3, r7
	vst1.32	{d22-d23}, [r8:64]
	vst1.32	{d22-d23}, [r6:64]
	vst1.32	{d16-d17}, [r1:64]
	vldr.32	s16, [r3]
	ldr	r3, [sp, #708]
	vldr.32	s17, [r2]
	vldr.32	s15, [r3, #-4]
	vsub.f32	s13, s16, s15
	vmov.f32	s12, s13
	ldr	r3, [sp, #700]
	vcvt.s32.f32	s12, s12, #14
	vldmia.32	r3!, {s14}
	vmov	r10, s12	@ int
	vadd.f32	s12, s17, s14
	vadd.f32	s16, s16, s15
	vmov.f32	s15, s12
	vcvt.s32.f32	s15, s15, #14
	add	r1, sp, #1328
	add	r1, r1, #8
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1392
	add	r1, r1, #8
	cmp	r10, #0
	vst1.32	{d16-d17}, [r1:64]
	str	r3, [sp, #700]
	vsub.f32	s17, s17, s14
	vmov	r4, s15	@ int
	bne	.L181
	cmp	r4, #0
	movwgt	r4, #25735
	bgt	.L4
	bne	.L182
.L4:
	vmov.f32	s15, s16
	vcvt.s32.f32	s15, s15, #14
	vmov	r0, s15	@ int
	vmov.f32	s15, s17
	vcvt.s32.f32	s15, s15, #14
	cmp	r0, #0
	vmov	r10, s15	@ int
	bne	.L13
	cmp	r10, #0
	subgt	r0, r4, #25600
	subgt	r0, r0, #135
	bgt	.L15
	addne	r0, r4, #25600
	addne	r0, r0, #135
	moveq	r0, r4
.L15:
	add	r0, r0, r0, lsr #31
	asr	ip, r0, #3
	sub	r4, r4, r0, asr #1
	eor	r3, ip, ip, asr #31
	cmp	ip, #0
	sub	r3, r3, ip, asr #31
	asr	r4, r4, #2
	beq	.L24
	movw	r2, #6433
	cmp	r3, r2
	beq	.L25
	movw	r1, #12867
	cmp	r3, r1
	beq	.L26
	cmp	r3, r2
	movle	r1, r3
	subgt	r1, r1, r3
	mvngt	r2, #0
	movle	r2, #1
	cmp	r1, #536
	blt	.L104
	cmp	r1, #1072
	blt	.L105
	movw	r0, #1607
	cmp	r1, r0
	ble	.L106
	cmp	r1, #2144
	blt	.L107
	cmp	r1, #3216
	blt	.L108
	cmp	r1, #4288
	ble	.L109
	movw	r0, #5360
	cmp	r1, r0
	bgt	.L183
	movw	r0, #63523
	movw	lr, #61762
	movt	r0, 374
	movt	lr, 65535
	str	r0, [sp, #828]
	str	lr, [sp, #820]
	mov	r0, lr
	b	.L28
.L13:
	eor	r2, r0, r0, asr #31
	eor	r3, r10, r10, asr #31
	sub	r2, r2, r0, asr #31
	sub	r3, r3, r10, asr #31
	cmp	r2, r3
	asr	fp, r10, #31
	asr	r1, r0, #31
	ble	.L16
	mov	r3, r1
	lsl	r1, fp, #14
	mov	r2, r0
	orr	r1, r1, r10, lsr #18
	lsl	r0, r10, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L184
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r3, #10551
	ldrhi	r2, [sp, #896]
	mulls	r0, r3, r0
	mlahi	r0, r3, r0, r2
	sub	r0, r4, r0, asr #14
	b	.L15
.L181:
	eor	r2, r10, r10, asr #31
	eor	r3, r4, r4, asr #31
	sub	r2, r2, r10, asr #31
	sub	r3, r3, r4, asr #31
	cmp	r2, r3
	asr	r5, r4, #31
	asr	fp, r10, #31
	ble	.L5
	lsl	r1, r5, #14
	mov	r2, r10
	mov	r3, fp
	orr	r1, r1, r4, lsr #18
	lsl	r0, r4, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L185
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r4, #15204
	movwhi	r4, #10551
	ldrhi	r3, [sp, #896]
	mulls	r4, r4, r0
	mlahi	r4, r4, r0, r3
	asr	r4, r4, #14
	b	.L4
.L104:
	movw	r0, #65268
	mov	lr, #16777216
	movt	r0, 65535
	str	lr, [sp, #828]
	str	r0, [sp, #820]
.L28:
	ldr	lr, [sp, #828]
	vldr.32	s14, .L195
	mla	r1, r0, r1, lr
	asr	r1, r1, #12
	mul	r2, r2, r1
	vmov	s15, r2	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s15, s14
	ldr	r2, [sp, #712]
	cmp	ip, #0
	vstr.32	s15, [r2, #-4]
	mvnlt	r2, #0
	bge	.L30
.L29:
	movw	r1, #6433
	cmp	r3, r1
	rsbgt	r3, r3, #12864
	addgt	r3, r3, #3
	cmp	r3, #1072
	blt	.L113
	cmp	r3, #2144
	blt	.L114
	cmp	r3, #3216
	blt	.L115
	cmp	r3, #4288
	ble	.L116
	movw	r1, #4824
	cmp	r3, r1
	ble	.L117
	movw	r1, #5360
	cmp	r3, r1
	ble	.L118
	movw	r1, #5896
	cmp	r3, r1
	ble	.L119
	movw	r0, #6433
	ldr	ip, [sp, #892]
	cmp	r3, r0
	movw	r1, #267
	ldr	r0, [sp, #880]
	movne	r0, ip
	str	r0, [sp, #880]
	ldr	r0, [sp, #876]
	movne	r0, r1
	str	r0, [sp, #876]
	mov	r1, r0
	b	.L33
.L26:
	mov	r3, #0
	ldr	r2, [sp, #712]
	movt	r3, 49024
	cmp	ip, #0
	str	r3, [r2, #-4]	@ float
	vmovge	s15, r3
	blt	.L186
.L30:
	movw	r3, #6433
	cmp	ip, r3
	beq	.L187
	movw	r3, #12867
	cmp	ip, r3
	movne	r3, ip
	movne	r2, #1
	bne	.L29
	vldr.32	s13, .L195+4
	vldr.32	s14, .L195+8
.L31:
	ldr	r1, [sp, #704]
	add	r3, r8, r9
	vstmia.32	r1!, {s13}
	add	r2, r8, r7
	vstr.32	s14, [r3]
	cmp	r4, #0
	eor	r3, r4, r4, asr #31
	str	r1, [sp, #704]
	sub	r3, r3, r4, asr #31
	vstr.32	s15, [r2]
	beq	.L34
	movw	r1, #6433
	cmp	r3, r1
	beq	.L35
	movw	r2, #12867
	cmp	r3, r2
	beq	.L36
	cmp	r3, r1
	movle	r2, r3
	subgt	r2, r2, r3
	mvngt	r1, #0
	movle	r1, #1
	cmp	r2, #536
	blt	.L121
	cmp	r2, #1072
	blt	.L122
	movw	r0, #1607
	cmp	r2, r0
	ble	.L123
	cmp	r2, #2144
	blt	.L124
	cmp	r2, #3216
	blt	.L125
	cmp	r2, #4288
	ble	.L126
	movw	r0, #5360
	cmp	r2, r0
	bgt	.L188
	movw	r0, #63523
	movw	ip, #61762
	movt	r0, 374
	movt	ip, 65535
	str	r0, [sp, #824]
	str	ip, [sp, #816]
	mov	r0, ip
	b	.L38
.L121:
	movw	r0, #65268
	mov	ip, #16777216
	movt	r0, 65535
	str	ip, [sp, #824]
	str	r0, [sp, #816]
.L38:
	ldr	ip, [sp, #824]
	vldr.32	s14, .L195
	mla	r2, r0, r2, ip
	asr	r2, r2, #12
	mul	r2, r1, r2
	vmov	s15, r2	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s15, s14
	ldr	r2, [sp, #716]
	cmp	r4, #0
	vstr.32	s15, [r2, #-4]
	mvnlt	r2, #0
	bge	.L40
.L39:
	movw	r1, #6433
	cmp	r3, r1
	rsbgt	r3, r3, #12864
	addgt	r3, r3, #3
	cmp	r3, #1072
	blt	.L130
	cmp	r3, #2144
	blt	.L131
	cmp	r3, #3216
	blt	.L132
	cmp	r3, #4288
	ble	.L133
	movw	r1, #4824
	cmp	r3, r1
	ble	.L134
	movw	r1, #5360
	cmp	r3, r1
	ble	.L135
	movw	r1, #5896
	cmp	r3, r1
	ble	.L136
	movw	r0, #6433
	ldr	ip, [sp, #892]
	cmp	r3, r0
	movw	r1, #267
	ldr	r0, [sp, #872]
	movne	r0, ip
	str	r0, [sp, #872]
	ldr	r0, [sp, #868]
	movne	r0, r1
	str	r0, [sp, #868]
	mov	r1, r0
	b	.L43
.L196:
	.align	2
.L195:
	.word	964689920
	.word	-2147483648
	.word	0
.L36:
	mov	r3, #0
	ldr	r2, [sp, #716]
	movt	r3, 49024
	cmp	r4, #0
	str	r3, [r2, #-4]	@ float
	vmovge	s15, r3
	blt	.L189
.L40:
	movw	r3, #6433
	cmp	r4, r3
	beq	.L190
	movw	r3, #12867
	cmp	r4, r3
	movne	r3, r4
	movne	r2, #1
	bne	.L39
	vldr.32	s13, .L195+4
	vldr.32	s14, .L195+8
.L41:
	vld4.32	{d16, d18, d20, d22}, [r8:64]
	ldr	r2, [sp, #696]
	add	r3, sp, #1184
	vstmia.32	r2!, {s13}
	add	r3, r3, #8
	vld4.32	{d17, d19, d21, d23}, [r3:64]
	str	r2, [sp, #696]
	add	r3, sp, #1280
	add	r2, sp, #1312
	add	r3, r3, #8
	add	r2, r2, #8
	vst1.32	{d16-d17}, [r3:64]
	vst1.32	{d20-d21}, [r2:64]
	add	r3, sp, #1296
	add	r2, sp, #1328
	add	r3, r3, #8
	add	r2, r2, #8
	vst1.32	{d18-d19}, [r3:64]
	vst1.32	{d22-d23}, [r2:64]
	add	r2, sp, #1280
	add	r2, r2, #8
	vld4.32	{d22, d24, d26, d28}, [r2:64]
	add	r3, r6, r9
	vstr.32	s14, [r3]
	add	r3, r6, r7
	vstr.32	s15, [r3]
	add	r2, sp, #1312
	add	r2, r2, #8
	vld4.32	{d23, d25, d27, d29}, [r2:64]
	add	r3, sp, #904
	vld4.32	{d8, d10, d12, d14}, [r3:64]
	ldr	r3, [sp, #676]
	ldr	r2, [sp, #720]
	vld4.32	{d0, d2, d4, d6}, [r3]
	add	r3, sp, #128
	vstmia	r3, {d22-d29}
	vld4.32	{d16, d18, d20, d22}, [r2]
	add	r1, sp, #936
	vld4.32	{d9, d11, d13, d15}, [r1:64]
	ldr	r1, [sp, #744]
	add	r3, sp, #192
	vstmia	r3, {d16-d23}
	vld4.32	{d1, d3, d5, d7}, [r1]
	add	r2, sp, #192
	add	r3, sp, #64
	vstmia	sp, {d0-d7}
	vstmia	r3, {d8-d15}
	vldmia	r2, {d6-d13}
	ldr	r0, [sp, #724]
	add	ip, sp, #1248
	vld4.32	{d7, d9, d11, d13}, [r0]
	vstmia	r2, {d6-d13}
	vld4.32	{d4, d6, d8, d10}, [r6:64]
	add	r3, sp, #128
	add	ip, ip, #8
	vldmia	r3, {d22-d29}
	vld4.32	{d5, d7, d9, d11}, [ip:64]
	vld4.32	{d12, d14, d16, d18}, [r8:64]
	add	ip, sp, #1184
	vldr	d20, [sp, #64]
	vldr	d21, [sp, #72]
	add	ip, ip, #8
	vld4.32	{d13, d15, d17, d19}, [ip:64]
	vmov.32	r10, d20[1]
	vldr	d20, [sp, #80]
	vldr	d21, [sp, #88]
	vldr	d30, [sp, #64]
	vldr	d31, [sp, #72]
	add	r2, sp, #256
	vstmia	r2, {d12-d19}
	vldr	d16, [sp, #64]
	vldr	d17, [sp, #72]
	add	r2, sp, #656
	vst1.32	{d20[0]}, [r2]
	vld1.64	{d20-d21}, [sp:64]
	vmov.32	r1, d31[0]
	vldr	d30, [sp, #80]
	vldr	d31, [sp, #88]
	vmov.32	r4, d16[0]
	vld1.64	{d16-d17}, [sp:64]
	add	r2, sp, #576
	vst1.32	{d20[1]}, [r2]
	vldr	d20, [sp, #16]
	vldr	d21, [sp, #24]
	vmov.32	lr, d30[1]
	vldr	d30, [sp, #96]
	vldr	d31, [sp, #104]
	vmov.32	r3, d22[0]
	vmov.32	r0, d16[0]
	vmov.f32	q8, #0.0  @ v4sf
	add	r2, sp, #672
	vst1.32	{d20[0]}, [r2]
	add	r2, sp, #792
	vst1.32	{d30[0]}, [r2]
	vld1.64	{d30-d31}, [sp:64]
	vldr	d12, [sp, #192]
	vldr	d13, [sp, #200]
	vdup.32	q9, r3
	vmov	q10, q8  @ v4sf
	add	r2, sp, #728
	vst1.32	{d31[0]}, [r2]
	vldr	d30, [sp, #16]
	vldr	d31, [sp, #24]
	vmov.32	r3, d22[1]
	vmla.f32	q10, q9, q6
	add	r2, sp, #752
	vst1.32	{d30[1]}, [r2]
	vldr	d30, [sp, #32]
	vldr	d31, [sp, #40]
	vldr	d14, [sp, #208]
	vldr	d15, [sp, #216]
	vmov	q9, q10  @ v4sf
	vdup.32	q10, r3
	vmov.32	r3, d23[0]
	add	r2, sp, #760
	vst1.32	{d30[0]}, [r2]
	add	r2, sp, #592
	vstmia	r2, {d4-d11}
	vmla.f32	q9, q10, q7
	vmov	q14, q8  @ v4sf
	vdup.32	q10, r3
	vmov.32	r3, d23[1]
	vdup.32	q11, r4
	add	r2, sp, #128
	vmov	q5, q2  @ v4sf
	vmla.f32	q14, q11, q2
	vldmia	r2, {d2-d9}
	add	r2, sp, #812
	vst1.32	{d8[0]}, [r2]
	add	r2, sp, #64
	vdup.32	q11, r0
	vmov.32	r4, d5[0]
	vmov.32	r0, d6[1]
	vldmia	r2, {d2-d9}
	vmov.32	fp, d24[0]
	vmov.32	r5, d24[1]
	vldr	d24, [sp, #256]
	vldr	d25, [sp, #264]
	vldr	d0, [sp, #224]
	vldr	d1, [sp, #232]
	add	r2, sp, #780
	vst1.32	{d3[1]}, [r2]
	add	r2, sp, #784
	vstr	d24, [sp, #680]
	vstr	d25, [sp, #688]
	vst1.32	{d5[0]}, [r2]
	add	r2, sp, #796
	vst1.32	{d6[1]}, [r2]
	add	r2, sp, #804
	vst1.32	{d8[0]}, [r2]
	vldmia	sp, {d2-d9}
	vmla.f32	q9, q10, q0
	vldr	d20, [sp, #240]
	vldr	d21, [sp, #248]
	add	r2, sp, #748
	vst1.32	{d3[1]}, [r2]
	add	r2, sp, #756
	vst1.32	{d5[0]}, [r2]
	add	r2, sp, #764
	vst1.32	{d6[1]}, [r2]
	add	r2, sp, #772
	vstr	d20, [sp, #192]
	vstr	d21, [sp, #200]
	vst1.32	{d8[0]}, [r2]
	vdup.32	q10, fp
	vmov	q4, q8  @ v4sf
	vmov.32	ip, d26[0]
	vmla.f32	q4, q10, q6
	vmov	q13, q8  @ v4sf
	vmov	q10, q4  @ v4sf
	vmla.f32	q13, q11, q12
	vldr	d8, [sp, #608]
	vldr	d9, [sp, #616]
	vdup.32	q12, r10
	ldr	r10, [sp, #656]	@ float
	vmla.f32	q14, q12, q4
	vmov	q3, q8  @ v4sf
	vdup.32	q12, r10
	ldr	r10, [sp, #576]	@ float
	vldr	d4, [sp, #272]
	vldr	d5, [sp, #280]
	vmla.f32	q3, q12, q5
	vdup.32	q15, r10
	vdup.32	q11, r3
	ldr	r3, [sp, #672]	@ float
	vmla.f32	q13, q15, q2
	vmov	q12, q3  @ v4sf
	vdup.32	q15, r3
	vldr	d6, [sp, #680]
	vldr	d7, [sp, #688]
	vstr	d4, [sp, #576]
	vstr	d5, [sp, #584]
	vmov	q2, q8  @ v4sf
	vmla.f32	q2, q15, q3
	vldr	d30, [sp, #144]
	vldr	d31, [sp, #152]
	vmov.32	r3, d31[1]
	vldr	d30, [sp, #160]
	vldr	d31, [sp, #168]
	vmov.32	r2, d31[0]
	vldr	d30, [sp, #176]
	vldr	d31, [sp, #184]
	vmov.32	fp, d30[1]
	vldr	d30, [sp, #80]
	vldr	d31, [sp, #88]
	add	r10, sp, #788
	vst1.32	{d31[1]}, [r10]
	vldr	d30, [sp, #96]
	vldr	d31, [sp, #104]
	add	r10, sp, #800
	vst1.32	{d31[0]}, [r10]
	vldr	d30, [sp, #112]
	vldr	d31, [sp, #120]
	add	r10, sp, #808
	vst1.32	{d30[1]}, [r10]
	vldr	d30, [sp, #192]
	vldr	d31, [sp, #200]
	vmla.f32	q9, q11, q15
	vldr	d22, [sp, #16]
	vldr	d23, [sp, #24]
	vstr	d18, [sp, #320]
	vstr	d19, [sp, #328]
	vdup.32	q9, r5
	vmov.32	r10, d23[1]
	vldr	d22, [sp, #32]
	vldr	d23, [sp, #40]
	vmla.f32	q10, q9, q7
	vdup.32	q9, r4
	add	r4, sp, #768
	vst1.32	{d23[0]}, [r4]
	vldr	d22, [sp, #48]
	vldr	d23, [sp, #56]
	add	r4, sp, #776
	vst1.32	{d22[1]}, [r4]
	vmla.f32	q10, q9, q0
	vdup.32	q11, r3
	vdup.32	q9, ip
	vmov	q3, q8  @ v4sf
	vmla.f32	q10, q11, q15
	vmla.f32	q3, q9, q6
	vmov	q9, q3  @ v4sf
	vldr	d6, [sp, #160]
	vldr	d7, [sp, #168]
	vstr	d20, [sp, #336]
	vstr	d21, [sp, #344]
	vdup.32	q10, r0
	vmla.f32	q9, q10, q7
	vdup.32	q10, r2
	vmov.32	r3, d7[1]
	vmov	q3, q10  @ v4sf
	vldr	d20, [sp, #640]
	vldr	d21, [sp, #648]
	vldr	d22, [sp, #624]
	vldr	d23, [sp, #632]
	vstr	d20, [sp, #656]
	vstr	d21, [sp, #664]
	vdup.32	q10, r1
	vmla.f32	q14, q10, q11
	vdup.32	q10, lr
	ldr	ip, [sp, #792]	@ float
	vstr	d22, [sp, #592]
	vstr	d23, [sp, #600]
	vmla.f32	q12, q10, q4
	vmov	q11, q8  @ v4sf
	vdup.32	q10, ip
	ldr	ip, [sp, #728]	@ float
	vmov	q1, q0  @ v4sf
	vmla.f32	q11, q10, q5
	vldr	d0, [sp, #288]
	vldr	d1, [sp, #296]
	vdup.32	q10, ip
	ldr	ip, [sp, #752]	@ float
	vmla.f32	q13, q10, q0
	vstr	d0, [sp, #256]
	vstr	d1, [sp, #264]
	vdup.32	q10, ip
	vmov	q0, q2  @ v4sf
	vldr	d4, [sp, #576]
	vldr	d5, [sp, #584]
	vmla.f32	q0, q10, q2
	ldr	ip, [sp, #760]	@ float
	vstr	d0, [sp, #728]
	vstr	d1, [sp, #736]
	vdup.32	q10, ip
	vldr	d0, [sp, #680]
	vldr	d1, [sp, #688]
	vmov	q2, q8  @ v4sf
	vmla.f32	q2, q10, q0
	vmov	q10, q2  @ v4sf
	vldr	d4, [sp, #176]
	vldr	d5, [sp, #184]
	vmov.32	r5, d5[0]
	vldr	d4, [sp, #96]
	vldr	d5, [sp, #104]
	vmov.32	r4, d5[1]
	vldr	d4, [sp, #112]
	vldr	d5, [sp, #120]
	vmov.32	lr, d5[0]
	vldr	d4, [sp, #32]
	vldr	d5, [sp, #40]
	vmov.32	ip, d5[1]
	vldr	d4, [sp, #48]
	vldr	d5, [sp, #56]
	vmla.f32	q9, q3, q1
	vmov.32	r0, d5[0]
	vdup.32	q2, r3
	ldr	r3, [sp, #812]	@ float
	vmov	q3, q9  @ v4sf
	vstr	d4, [sp, #680]
	vstr	d5, [sp, #688]
	vdup.32	q9, r3
	vmov	q2, q8  @ v4sf
	vmla.f32	q2, q9, q6
	ldr	r3, [sp, #780]	@ float
	vmov	q9, q2  @ v4sf
	vdup.32	q6, r3
	vldr	d4, [sp, #656]
	vldr	d5, [sp, #664]
	vmla.f32	q14, q6, q2
	ldr	r3, [sp, #784]	@ float
	vldr	d12, [sp, #592]
	vldr	d13, [sp, #600]
	vstr	d28, [sp, #384]
	vstr	d29, [sp, #392]
	vdup.32	q14, r3
	ldr	r3, [sp, #796]	@ float
	vmla.f32	q12, q14, q6
	vdup.32	q14, r3
	ldr	r3, [sp, #804]	@ float
	vmla.f32	q11, q14, q4
	vmov	q2, q8  @ v4sf
	vdup.32	q14, r3
	vmla.f32	q2, q14, q5
	vldr	d10, [sp, #176]
	vldr	d11, [sp, #184]
	ldr	r3, [sp, #748]	@ float
	vldr	d30, [sp, #304]
	vldr	d31, [sp, #312]
	vmov.32	r1, d11[1]
	vdup.32	q5, r3
	vmla.f32	q13, q5, q15
	vstr	d26, [sp, #448]
	vstr	d27, [sp, #456]
	ldr	r3, [sp, #756]	@ float
	vmov	q14, q2  @ v4sf
	vdup.32	q13, r3
	vldr	d4, [sp, #256]
	vldr	d5, [sp, #264]
	vldr	d12, [sp, #728]
	vldr	d13, [sp, #736]
	ldr	r3, [sp, #764]	@ float
	vmla.f32	q6, q13, q2
	vldr	d10, [sp, #576]
	vldr	d11, [sp, #584]
	vdup.32	q13, r3
	ldr	r3, [sp, #772]	@ float
	vmla.f32	q10, q13, q5
	vmov	q2, q8  @ v4sf
	vdup.32	q13, r3
	vdup.32	q5, fp
	vmla.f32	q2, q13, q0
	ldr	fp, [sp, #788]	@ float
	vmla.f32	q9, q5, q7
	vmov	q13, q2  @ v4sf
	vdup.32	q7, fp
	vldr	d4, [sp, #656]
	vldr	d5, [sp, #664]
	vldr	d0, [sp, #112]
	vldr	d1, [sp, #120]
	vmla.f32	q12, q7, q2
	vmov.32	r2, d1[1]
	vstr	d24, [sp, #400]
	vstr	d25, [sp, #408]
	vldr	d0, [sp, #48]
	vldr	d1, [sp, #56]
	vdup.32	q12, r10
	ldr	fp, [sp, #800]	@ float
	vmla.f32	q6, q12, q15
	vmov.32	r3, d1[1]
	vdup.32	q5, fp
	vldr	d0, [sp, #592]
	vldr	d1, [sp, #600]
	ldr	r10, [sp, #768]	@ float
	vmla.f32	q11, q5, q0
	vstr	d12, [sp, #464]
	vstr	d13, [sp, #472]
	vdup.32	q5, r10
	vldr	d0, [sp, #256]
	vldr	d1, [sp, #264]
	vdup.32	q6, r5
	ldr	fp, [sp, #808]	@ float
	vmla.f32	q10, q5, q0
	vmla.f32	q9, q6, q1
	vdup.32	q7, fp
	vldr	d2, [sp, #656]
	vldr	d3, [sp, #664]
	vdup.32	q5, r4
	ldr	r10, [sp, #776]	@ float
	vmla.f32	q11, q5, q1
	vmla.f32	q14, q7, q4
	vldr	d24, [sp, #576]
	vldr	d25, [sp, #584]
	vdup.32	q0, ip
	vldr	d4, [sp, #680]
	vldr	d5, [sp, #688]
	vldr	d14, [sp, #192]
	vldr	d15, [sp, #200]
	vdup.32	q4, r10
	vmla.f32	q3, q2, q7
	vmla.f32	q10, q0, q15
	vmla.f32	q13, q4, q12
	vldr	d0, [sp, #256]
	vldr	d1, [sp, #264]
	vdup.32	q12, r0
	vdup.32	q4, lr
	vstr	d22, [sp, #416]
	vstr	d23, [sp, #424]
	vldr	d22, [sp, #592]
	vldr	d23, [sp, #600]
	vmla.f32	q13, q12, q0
	vmla.f32	q14, q4, q11
	vldr	d24, [sp, #192]
	vldr	d25, [sp, #200]
	vdup.32	q11, r2
	vstr	d6, [sp, #352]
	vstr	d7, [sp, #360]
	vstr	d20, [sp, #480]
	vstr	d21, [sp, #488]
	vdup.32	q3, r1
	vdup.32	q10, r3
	vmla.f32	q14, q11, q1
	vmla.f32	q9, q3, q12
	vmla.f32	q13, q10, q15
	vld4.32	{d8, d10, d12, d14}, [r6:64]
	add	ip, sp, #1248
	add	ip, ip, #8
	add	r3, sp, #320
	vstr	d18, [sp, #368]
	vstr	d19, [sp, #376]
	vstr	d28, [sp, #432]
	vstr	d29, [sp, #440]
	vstr	d26, [sp, #496]
	vstr	d27, [sp, #504]
	vld4.32	{d9, d11, d13, d15}, [ip:64]
	vldmia	r3, {d18-d25}
	add	ip, sp, #968
	vst4.32	{d18, d20, d22, d24}, [ip:64]
	add	r3, sp, #384
	add	ip, sp, #1000
	vst4.32	{d19, d21, d23, d25}, [ip:64]
	vldmia	r3, {d18-d25}
	add	ip, sp, #1088
	add	ip, ip, #8
	vst4.32	{d18, d20, d22, d24}, [ip:64]
	add	ip, sp, #1120
	add	ip, ip, #8
	add	r3, sp, #448
	vst4.32	{d19, d21, d23, d25}, [ip:64]
	vldmia	r3, {d18-d25}
	add	ip, sp, #1024
	add	ip, ip, #8
	vst4.32	{d18, d20, d22, d24}, [ip:64]
	add	ip, sp, #1344
	add	ip, ip, #8
	vst1.32	{d8-d9}, [ip:64]
	add	ip, sp, #1360
	add	ip, ip, #8
	vst1.32	{d10-d11}, [ip:64]
	add	ip, sp, #1376
	add	ip, ip, #8
	vst1.32	{d12-d13}, [ip:64]
	add	ip, sp, #1392
	add	ip, ip, #8
	vst1.32	{d14-d15}, [ip:64]
	add	ip, sp, #1056
	add	ip, ip, #8
	vst4.32	{d19, d21, d23, d25}, [ip:64]
	add	ip, sp, #1344
	add	ip, ip, #8
	vld4.32	{d24, d26, d28, d30}, [ip:64]
	add	ip, sp, #1024
	add	ip, ip, #8
	vld4.32	{d8, d10, d12, d14}, [ip:64]
	add	ip, sp, #1376
	add	ip, ip, #8
	vld4.32	{d25, d27, d29, d31}, [ip:64]
	vmov.32	r3, d24[0]
	add	ip, sp, #1056
	add	ip, ip, #8
	vld4.32	{d9, d11, d13, d15}, [ip:64]
	vdup.32	q9, r3
	vmov	q10, q8  @ v4sf
	vmov.32	r3, d26[0]
	vmov.32	r2, d24[1]
	vmla.f32	q10, q9, q4
	vmov	q1, q8  @ v4sf
	vdup.32	q9, r3
	vdup.32	q11, r2
	vmov.32	r1, d25[0]
	vmov.32	r2, d26[1]
	vmla.f32	q1, q9, q4
	vmla.f32	q10, q11, q5
	vdup.32	q11, r1
	vmov	q9, q1  @ v4sf
	vdup.32	q1, r2
	vmov	q0, q11  @ v4sf
	vst1.64	{d2-d3}, [sp:64]
	vmov	q3, q5  @ v4sf
	vmla.f32	q10, q0, q6
	vld1.64	{d0-d1}, [sp:64]
	vmov.32	r3, d28[0]
	vmov.32	r0, d25[1]
	vmla.f32	q9, q0, q3
	vmov	q2, q4  @ v4sf
	vmov.32	r1, d27[0]
	vmov	q4, q7  @ v4sf
	vdup.32	q1, r3
	vmov.32	r2, d28[1]
	vdup.32	q5, r0
	vmov	q0, q9  @ v4sf
	vmov	q9, q8  @ v4sf
	vmov	q11, q6  @ v4sf
	vmla.f32	q10, q5, q4
	vmov.32	r3, d30[0]
	vdup.32	q6, r1
	vmla.f32	q9, q1, q2
	vmov.32	r1, d27[1]
	vdup.32	q7, r2
	vmov.32	r2, d29[0]
	vdup.32	q1, r3
	vmla.f32	q0, q6, q11
	vmov.32	r3, d30[1]
	vdup.32	q5, r2
	vstr	d20, [sp, #512]
	vstr	d21, [sp, #520]
	vmov.32	r2, d29[1]
	vdup.32	q10, r1
	vmla.f32	q9, q7, q3
	vmla.f32	q8, q1, q2
	vmla.f32	q0, q10, q4
	vdup.32	q2, r3
	vmla.f32	q9, q5, q11
	vmov.32	r3, d31[0]
	vdup.32	q10, r2
	add	ip, sp, #1088
	add	ip, ip, #8
	vld1.32	{d12-d13}, [ip:64]
	add	ip, sp, #1104
	add	ip, ip, #8
	vld1.32	{d2-d3}, [ip:64]
	vmla.f32	q9, q10, q4
	vmla.f32	q8, q2, q3
	vdup.32	q3, r3
	vmov.32	r3, d31[1]
	add	ip, sp, #920
	vst1.32	{d2-d3}, [ip:64]
	vmla.f32	q8, q3, q11
	vstr	d18, [sp, #544]
	vstr	d19, [sp, #552]
	vdup.32	q9, r3
	add	r2, sp, #904
	vst1.32	{d12-d13}, [r2:64]
	add	ip, sp, #1120
	add	ip, ip, #8
	vld1.32	{d2-d3}, [ip:64]
	add	ip, sp, #1136
	add	ip, ip, #8
	vld1.32	{d4-d5}, [ip:64]
	vmla.f32	q8, q9, q4
	vld4.32	{d24, d26, d28, d30}, [r2:64]
	add	ip, sp, #936
	vst1.32	{d2-d3}, [ip:64]
	add	r2, sp, #512
	add	ip, sp, #952
	vst1.32	{d4-d5}, [ip:64]
	vstr	d0, [sp, #528]
	vstr	d1, [sp, #536]
	vstr	d16, [sp, #560]
	vstr	d17, [sp, #568]
	vldmia	r2, {d6-d13}
	add	ip, sp, #936
	vld4.32	{d25, d27, d29, d31}, [ip:64]
	add	ip, sp, #968
	vld1.32	{d22-d23}, [ip:64]
	add	ip, sp, #984
	vld1.32	{d20-d21}, [ip:64]
	add	ip, sp, #1000
	vld1.32	{d18-d19}, [ip:64]
	add	ip, sp, #1016
	vld1.32	{d16-d17}, [ip:64]
	ldr	r3, [sp, #676]
	ldr	r1, [sp, #744]
	vst4.32	{d6, d8, d10, d12}, [r3]
	ldr	r3, [sp, #836]
	vst4.32	{d7, d9, d11, d13}, [r1]
	vst1.32	{d24-d25}, [r3]
	ldr	r3, [sp, #848]
	ldr	r2, [sp, #720]
	vst1.32	{d26-d27}, [r3]
	ldr	r3, [sp, #844]
	add	r7, r7, #20
	vst1.32	{d28-d29}, [r3]
	ldr	r3, [sp, #840]
	ldr	r0, [sp, #724]
	vst1.32	{d30-d31}, [r3]
	ldr	r3, [sp, #852]
	vst1.32	{d22-d23}, [r2]
	vst1.32	{d20-d21}, [r3]
	ldr	r3, [sp, #856]
	cmp	r7, #80
	vst1.32	{d18-d19}, [r0]
	add	r9, r9, #16
	vst1.32	{d16-d17}, [r3]
	bne	.L3
	ldr	r3, [sp, #832]
	add	r3, r3, #20
	str	r3, [sp, #832]
	cmp	r3, #76
	ldr	r3, [sp, #708]
	add	r3, r3, #20
	str	r3, [sp, #708]
	ldr	r3, [sp, #716]
	add	r3, r3, #20
	str	r3, [sp, #716]
	ldr	r3, [sp, #712]
	add	r3, r3, #20
	str	r3, [sp, #712]
	bne	.L47
	ldr	r7, [sp, #676]
	b	.L2
.L5:
	lsl	r1, fp, #14
	mov	r2, r4
	mov	r3, r5
	orr	r1, r1, r10, lsr #18
	lsl	r0, r10, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L191
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r4, #15204
	movwhi	r4, #10551
	ldrhi	r3, [sp, #896]
	mulls	r4, r4, r0
	mlahi	r4, r4, r0, r3
	asr	r4, r4, #14
	cmp	r4, #0
	bge	.L9
	ldr	r3, [sp, #884]
	sub	r4, r3, r4
	b	.L4
.L16:
	lsl	r1, r1, #14
	orr	r1, r1, r0, lsr #18
	vmov	r2, s15	@ int
	mov	r3, fp
	lsl	r0, r0, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L192
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r3, #10551
	ldrhi	r2, [sp, #896]
	mulls	r0, r3, r0
	mlahi	r0, r3, r0, r2
	asr	r0, r0, #14
	cmp	r0, #0
	bge	.L20
	ldr	r3, [sp, #884]
	sub	r0, r3, r0
	sub	r0, r4, r0
	b	.L15
.L34:
	mov	r3, #1065353216
	ldr	r2, [sp, #716]
	vldr.32	s13, .L197
	str	r3, [r2, #-4]	@ float
	vmov	s15, r3
	vldr.32	s14, .L197+12
	b	.L41
.L24:
	mov	r3, #1065353216
	ldr	r2, [sp, #712]
	vldr.32	s13, .L197
	str	r3, [r2, #-4]	@ float
	vmov	s15, r3
	vldr.32	s14, .L197+12
	b	.L31
.L130:
	mov	r1, #0
	str	r1, [sp, #872]
	movw	r1, #4049
	str	r1, [sp, #868]
.L43:
	ldr	r0, [sp, #872]
	vldr.32	s13, .L197+4
	mla	r3, r1, r3, r0
	asr	r3, r3, #12
	mul	r3, r2, r3
	vmov	s14, r3	@ int
	vcvt.f32.s32	s14, s14
	vmul.f32	s14, s14, s13
	vneg.f32	s13, s14
	b	.L41
.L113:
	mov	r1, #0
	str	r1, [sp, #880]
	movw	r1, #4049
	str	r1, [sp, #876]
.L33:
	ldr	r0, [sp, #880]
	vldr.32	s13, .L197+4
	mla	r3, r1, r3, r0
	asr	r3, r3, #12
	mul	r3, r2, r3
	vmov	s14, r3	@ int
	vcvt.f32.s32	s14, s14
	vmul.f32	s14, s14, s13
	vneg.f32	s13, s14
	b	.L31
.L35:
	vldr.32	s15, .L197+12
	ldr	r3, [sp, #716]
	cmp	r4, #0
	vstr.32	s15, [r3, #-4]
	bge	.L40
	vmov.f32	s13, #1.0e+0
	vmov.f32	s14, #-1.0e+0
	vldr.32	s15, .L197+12
	b	.L41
.L25:
	vldr.32	s15, .L197+12
	ldr	r3, [sp, #712]
	cmp	ip, #0
	vstr.32	s15, [r3, #-4]
	bge	.L30
	vmov.f32	s13, #1.0e+0
	vmov.f32	s14, #-1.0e+0
	vldr.32	s15, .L197+12
	b	.L31
.L122:
	movw	r0, #22462
	movw	ip, #64737
	movt	r0, 260
	movt	ip, 65535
	str	r0, [sp, #824]
	str	ip, [sp, #816]
	mov	r0, ip
	b	.L38
.L105:
	movw	r0, #22462
	movw	lr, #64737
	movt	r0, 260
	movt	lr, 65535
	str	r0, [sp, #828]
	str	lr, [sp, #820]
	mov	r0, lr
	b	.L28
.L192:
	movw	r3, #10551
	ldr	r2, [sp, #888]
	mla	r0, r3, r0, r2
	asr	r0, r0, #14
.L20:
	rsb	r0, r0, #25600
	add	r0, r0, #135
	sub	r0, r4, r0
	b	.L15
.L191:
	movw	r4, #10551
	ldr	r3, [sp, #888]
	mla	r4, r4, r0, r3
	asr	r4, r4, #14
.L9:
	rsb	r4, r4, #25600
	add	r4, r4, #135
	b	.L4
.L131:
	movw	r1, #33774
	movw	r0, #3773
	movt	r1, 4
	str	r1, [sp, #872]
	str	r0, [sp, #868]
	mov	r1, r0
	b	.L43
.L114:
	movw	r1, #33774
	movw	r0, #3773
	movt	r1, 4
	str	r1, [sp, #880]
	str	r0, [sp, #876]
	mov	r1, r0
	b	.L33
.L185:
	movw	r4, #10551
	ldr	r3, [sp, #888]
	mla	r4, r4, r0, r3
	asr	r4, r4, #14
	b	.L4
.L184:
	movw	r3, #10551
	ldr	r2, [sp, #888]
	mla	r0, r3, r0, r2
	sub	r0, r4, r0, asr #14
	b	.L15
.L190:
	vmov.f32	s13, #-1.0e+0
	vmov.f32	s14, #1.0e+0
	b	.L41
.L187:
	vmov.f32	s13, #-1.0e+0
	vmov.f32	s14, #1.0e+0
	b	.L31
.L123:
	movw	r0, #52737
	movw	ip, #64220
	movt	r0, 268
	movt	ip, 65535
	str	r0, [sp, #824]
	str	ip, [sp, #816]
	mov	r0, ip
	b	.L38
.L106:
	movw	r0, #52737
	movw	lr, #64220
	movt	r0, 268
	movt	lr, 65535
	str	r0, [sp, #828]
	str	lr, [sp, #820]
	mov	r0, lr
	b	.L28
.L115:
	movw	r1, #63001
	movw	r0, #3240
	movt	r1, 21
	str	r1, [sp, #880]
	str	r0, [sp, #876]
	mov	r1, r0
	b	.L33
.L132:
	movw	r1, #63001
	movw	r0, #3240
	movt	r1, 21
	str	r1, [sp, #872]
	str	r0, [sp, #868]
	mov	r1, r0
	b	.L43
.L124:
	movw	r0, #61940
	movw	ip, #63725
	movt	r0, 280
	movt	ip, 65535
	str	r0, [sp, #824]
	str	ip, [sp, #816]
	mov	r0, ip
	b	.L38
.L107:
	movw	r0, #61940
	movw	lr, #63725
	movt	r0, 280
	movt	lr, 65535
	str	r0, [sp, #828]
	str	lr, [sp, #820]
	mov	r0, lr
	b	.L28
.L116:
	movw	r1, #63559
	movw	r0, #2486
	movt	r1, 58
	str	r1, [sp, #880]
	str	r0, [sp, #876]
	mov	r1, r0
	b	.L33
.L133:
	movw	r1, #63559
	movw	r0, #2486
	movt	r1, 58
	str	r1, [sp, #872]
	str	r0, [sp, #868]
	mov	r1, r0
	b	.L43
.L125:
	movw	r0, #4511
	movw	ip, #63049
	movt	r0, 303
	movt	ip, 65535
	str	r0, [sp, #824]
	str	ip, [sp, #816]
	mov	r0, ip
	b	.L38
.L108:
	movw	r0, #4511
	movw	lr, #63049
	movt	r0, 303
	movt	lr, 65535
	str	r0, [sp, #828]
	str	lr, [sp, #820]
	mov	r0, lr
	b	.L28
.L117:
	movw	r1, #14237
	movw	r0, #1810
	movt	r1, 103
	str	r1, [sp, #880]
	str	r0, [sp, #876]
	mov	r1, r0
	b	.L33
.L134:
	movw	r1, #14237
	movw	r0, #1810
	movt	r1, 103
	str	r1, [sp, #872]
	str	r0, [sp, #868]
	mov	r1, r0
	b	.L43
.L109:
	movw	r0, #5068
	movw	lr, #62295
	movt	r0, 340
	movt	lr, 65535
	str	r0, [sp, #828]
	str	lr, [sp, #820]
	mov	r0, lr
	b	.L28
.L126:
	movw	r0, #5068
	movw	ip, #62295
	movt	r0, 340
	movt	ip, 65535
	str	r0, [sp, #824]
	str	ip, [sp, #816]
	mov	r0, ip
	b	.L38
.L135:
	movw	r1, #41844
	movw	r0, #1315
	movt	r1, 139
	str	r1, [sp, #872]
	str	r0, [sp, #868]
	mov	r1, r0
	b	.L43
.L118:
	movw	r1, #41844
	movw	r0, #1315
	movt	r1, 139
	str	r1, [sp, #880]
	str	r0, [sp, #876]
	mov	r1, r0
	b	.L33
.L188:
	movw	ip, #6433
	ldr	lr, [sp, #900]
	cmp	r2, ip
	movw	r0, #61486
	ldr	ip, [sp, #824]
	movne	ip, lr
	movt	r0, 65535
	str	ip, [sp, #824]
	ldr	ip, [sp, #816]
	movne	ip, r0
	str	ip, [sp, #816]
	mov	r0, ip
	b	.L38
.L198:
	.align	2
.L197:
	.word	-2147483648
	.word	964689920
	.word	-2147483648
	.word	0
.L183:
	movw	lr, #6433
	ldr	r5, [sp, #900]
	cmp	r1, lr
	movw	r0, #61486
	ldr	lr, [sp, #828]
	movne	lr, r5
	movt	r0, 65535
	str	lr, [sp, #828]
	ldr	lr, [sp, #820]
	movne	lr, r0
	str	lr, [sp, #820]
	mov	r0, lr
	b	.L28
.L182:
	ldr	r4, [sp, #884]
	b	.L4
.L119:
	movw	r1, #62146
	movw	r0, #798
	movt	r1, 181
	str	r1, [sp, #880]
	str	r0, [sp, #876]
	mov	r1, r0
	b	.L33
.L136:
	movw	r1, #62146
	movw	r0, #798
	movt	r1, 181
	str	r1, [sp, #872]
	str	r0, [sp, #868]
	mov	r1, r0
	b	.L43
.L186:
	vldr.32	s13, .L197+8
	vldr.32	s14, .L197+12
	vmov	s15, r3
	b	.L31
.L189:
	vldr.32	s13, .L197+8
	vldr.32	s14, .L197+12
	vmov	s15, r3
	b	.L41
	.size	SVD_decompose, .-SVD_decompose
	.data
	.align	3
	.set	.LANCHOR0,. + 0
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
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
