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
	@ args = 0, pretend = 0, frame = 1424
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r4, r0
	sub	sp, sp, #1424
	sub	sp, sp, #4
	mov	r9, r2
	mov	r5, r1
	str	r1, [sp, #724]
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #976
	str	r3, [sp, #840]
	bl	memset
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #1040
	bl	memset
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #1104
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
	mov	r0, r2
	add	r4, r4, #48
	vld1.32	{d16-d17}, [r0:64]!
	vld1.32	{d18-d19}, [r4]
	mov	r1, r5
	str	r3, [sp, #732]
	add	r3, r9, #48
	vst1.32	{d18-d19}, [r3]
	vst1.32	{d16-d17}, [r1]!
	vld1.32	{d16-d17}, [r0:64]
	vst1.32	{d16-d17}, [r1]
	str	r1, [sp, #856]
	add	r1, r2, #32
	vld1.32	{d16-d17}, [r1:64]
	mov	r3, r0
	str	r0, [sp, #864]
	add	r0, r5, #32
	vst1.32	{d16-d17}, [r0]
	str	r0, [sp, #728]
	add	r0, r2, #48
	vld1.32	{d16-d17}, [r0:64]
	add	ip, r5, #48
	vst1.32	{d16-d17}, [ip]
	vld1.32	{d20-d21}, [r3:64]
	movw	r3, #49611
	vld1.32	{d22-d23}, [r2:64]
	vld1.32	{d18-d19}, [r1:64]
	str	r2, [sp, #868]
	str	ip, [sp, #860]
	movt	r3, 581
	movw	ip, #32309
	movw	r2, #12073
	vld1.32	{d16-d17}, [r0:64]
	str	r3, [sp, #892]
	mov	r3, #5
	mov	r8, r9
	add	r1, sp, #912
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #928
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #944
	vst1.32	{d18-d19}, [r1:64]
	movt	ip, 64954
	add	r1, sp, #960
	movt	r2, 1590
	vst1.32	{d16-d17}, [r1:64]
	str	ip, [sp, #896]
	str	r2, [sp, #908]
	str	r3, [sp, #904]
	str	r10, [sp, #820]
	str	fp, [sp, #824]
.L2:
	vldr.32	s14, [r8, #4]
	vldr.32	s15, .L198
	vabs.f32	s13, s14
	vcmpe.f32	s13, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s13, [r8, #8]
	vabs.f32	s12, s13
	vcmpe.f32	s12, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s11, [r8, #12]
	vabs.f32	s12, s11
	vcmpe.f32	s12, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s12, [r8, #16]
	vabs.f32	s10, s12
	vcmpe.f32	s10, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s10, [r8, #24]
	vabs.f32	s9, s10
	vcmpe.f32	s9, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s8, [r8, #28]
	vabs.f32	s9, s8
	vcmpe.f32	s9, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s9, [r8, #32]
	vabs.f32	s7, s9
	vcmpe.f32	s7, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s7, [r8, #36]
	vabs.f32	s6, s7
	vcmpe.f32	s6, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s5, [r8, #44]
	vabs.f32	s6, s5
	vcmpe.f32	s6, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s6, [r8, #48]
	vabs.f32	s4, s6
	vcmpe.f32	s4, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s15, [r8, #52]
	vldr.32	s4, .L198
	vabs.f32	s3, s15
	vcmpe.f32	s3, s4
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s3, [r8, #56]
	vabs.f32	s2, s3
	vcmpe.f32	s2, s4
	vmrs	APSR_nzcv, FPSCR
	bge	.L48
	vldr.32	s2, [r8]
	vabs.f32	s2, s2
	vcmpe.f32	s2, s4
	vabs.f32	s14, s14
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s4, .L198
	movmi	r3, #0
	vcmpe.f32	s14, s4
	strmi	r3, [r8]	@ float
	vstrpl.32	s2, [r8]
	vmrs	APSR_nzcv, FPSCR
	vabs.f32	s13, s13
	vstrpl.32	s14, [r8, #4]
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s13, s14
	strmi	r3, [r8, #4]	@ float
	vabs.f32	s11, s11
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s11, s14
	strmi	r3, [r8, #8]	@ float
	vstrpl.32	s13, [r8, #8]
	vabs.f32	s12, s12
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s12, s14
	vldr.32	s14, [r8, #20]
	strmi	r3, [r8, #12]	@ float
	vstrpl.32	s11, [r8, #12]
	vabs.f32	s14, s14
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s13, .L198
	movmi	r3, #0
	vcmpe.f32	s14, s13
	strmi	r3, [r8, #16]	@ float
	vstrpl.32	s12, [r8, #16]
	vmrs	APSR_nzcv, FPSCR
	vabs.f32	s10, s10
	vstrpl.32	s14, [r8, #20]
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s10, s14
	strmi	r3, [r8, #20]	@ float
	vabs.f32	s8, s8
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s8, s14
	strmi	r3, [r8, #24]	@ float
	vstrpl.32	s10, [r8, #24]
	vabs.f32	s9, s9
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s9, s14
	strmi	r3, [r8, #28]	@ float
	vstrpl.32	s8, [r8, #28]
	vabs.f32	s7, s7
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s7, s14
	vldr.32	s14, [r8, #40]
	strmi	r3, [r8, #32]	@ float
	vstrpl.32	s9, [r8, #32]
	vabs.f32	s14, s14
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s13, .L198
	movmi	r3, #0
	vcmpe.f32	s14, s13
	strmi	r3, [r8, #36]	@ float
	vstrpl.32	s7, [r8, #36]
	vmrs	APSR_nzcv, FPSCR
	vabs.f32	s5, s5
	vstrpl.32	s14, [r8, #40]
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s5, s14
	strmi	r3, [r8, #40]	@ float
	vabs.f32	s6, s6
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s6, s14
	strmi	r3, [r8, #44]	@ float
	vstrpl.32	s5, [r8, #44]
	vabs.f32	s15, s15
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s14, .L198
	movmi	r3, #0
	vcmpe.f32	s15, s14
	strmi	r3, [r8, #48]	@ float
	vstrpl.32	s6, [r8, #48]
	vmrs	APSR_nzcv, FPSCR
	vabs.f32	s3, s3
	vstrpl.32	s15, [r8, #52]
	vldr.32	s15, .L198
	movmi	r3, #0
	vcmpe.f32	s3, s15
	strmi	r3, [r8, #52]	@ float
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #0
	strmi	r3, [r8, #56]	@ float
	vstrpl.32	s3, [r8, #56]
	vldr.32	s15, [r8, #60]
	vldr.32	s14, .L198
	vabs.f32	s15, s15
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #0
	vstrpl.32	s15, [r8, #60]
	strmi	r3, [r8, #60]	@ float
	add	sp, sp, #1424
	add	sp, sp, #4
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L199:
	.align	2
.L198:
	.word	869711765
	.word	.LANCHOR0+32
	.word	956301312
.L48:
	mov	r3, #16
	str	r3, [sp, #836]
	ldr	r3, [sp, #840]
	add	r7, sp, #1168
	add	r2, r3, #16
	str	r2, [sp, #852]
	add	r2, r3, #32
	add	r3, r3, #48
	str	r3, [sp, #848]
	add	r3, r8, #4
	str	r3, [sp, #712]
	add	r3, sp, #1232
	add	r3, r3, #4
	str	r3, [sp, #720]
	add	r3, sp, #1168
	add	r3, r3, #4
	str	r2, [sp, #844]
	str	r3, [sp, #716]
	add	r6, sp, #1232
	str	r8, [sp, #696]
.L47:
	movw	r3, #39800
	movw	r2, #57308
	movt	r3, 65535
	str	r3, [sp, #888]
	ldr	r3, [sp, #716]
	ldr	fp, [sp, #836]
	str	r3, [sp, #704]
	ldr	r3, [sp, #720]
	movt	r2, 918
	str	r3, [sp, #700]
	ldr	r3, [sp, #712]
	str	r2, [sp, #900]
	add	r10, fp, #4
	str	r3, [sp, #708]
.L3:
	ldr	r3, [sp, #868]
	add	r1, sp, #976
	vld1.32	{d22-d23}, [r3:64]
	ldr	r3, [sp, #864]
	vst1.32	{d22-d23}, [r1:64]
	vld1.32	{d20-d21}, [r3:64]
	ldr	r3, .L198+4
	add	r1, sp, #1040
	vld1.32	{d18-d19}, [r3:64]
	add	r3, r3, #16
	vld1.32	{d16-d17}, [r3:64]
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1104
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1296
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1360
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #992
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1056
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1120
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1184
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1248
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1312
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1376
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1008
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1072
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1136
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1200
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1264
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1328
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1392
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1024
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1088
	vst1.32	{d16-d17}, [r1:64]
	ldr	r3, [sp, #696]
	add	r1, sp, #1152
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1216
	add	r2, r3, fp
	vst1.32	{d16-d17}, [r1:64]
	add	r3, r3, r10
	add	r1, sp, #1280
	vst1.32	{d22-d23}, [r7:64]
	vst1.32	{d22-d23}, [r6:64]
	vst1.32	{d16-d17}, [r1:64]
	vldr.32	s16, [r3]
	ldr	r3, [sp, #712]
	vldr.32	s17, [r2]
	vldr.32	s15, [r3, #-4]
	vsub.f32	s13, s16, s15
	vmov.f32	s12, s13
	ldr	r3, [sp, #708]
	vcvt.s32.f32	s12, s12, #14
	vldmia.32	r3!, {s14}
	vmov	r8, s12	@ int
	vadd.f32	s12, s17, s14
	vadd.f32	s16, s16, s15
	vmov.f32	s15, s12
	vcvt.s32.f32	s15, s15, #14
	add	r1, sp, #1344
	vst1.32	{d16-d17}, [r1:64]
	cmp	r8, #0
	add	r1, sp, #1408
	vst1.32	{d16-d17}, [r1:64]
	str	r3, [sp, #708]
	vsub.f32	s17, s17, s14
	vmov	r4, s15	@ int
	bne	.L184
	cmp	r4, #0
	movwgt	r4, #25736
	bgt	.L4
	bne	.L185
.L4:
	vmov.f32	s15, s16
	vcvt.s32.f32	s15, s15, #14
	vmov	r0, s15	@ int
	vmov.f32	s15, s17
	vcvt.s32.f32	s15, s15, #14
	cmp	r0, #0
	vmov	r8, s15	@ int
	bne	.L13
	cmp	r8, #0
	subgt	r3, r4, #25600
	subgt	r3, r3, #136
	bgt	.L15
	addne	r3, r4, #25600
	addne	r3, r3, #136
	moveq	r3, r4
.L15:
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	add	ip, r3, #1
	asr	ip, ip, #1
	sub	r4, r4, r3
	add	r4, r4, #1
	eor	r3, ip, ip, asr #31
	cmp	ip, #0
	sub	r3, r3, ip, asr #31
	asr	r4, r4, #1
	beq	.L24
	movw	r1, #12868
	cmp	r3, r1
	beq	.L25
	movw	r2, #25736
	cmp	r3, r2
	beq	.L26
	cmp	r3, r1
	movle	r2, r3
	subgt	r2, r2, r3
	mvngt	r1, #0
	movle	r1, #1
	cmp	r2, #1072
	blt	.L105
	cmp	r2, #2144
	ble	.L106
	cmp	r2, #3216
	ble	.L107
	cmp	r2, #4288
	ble	.L108
	movw	r0, #6433
	cmp	r2, r0
	ble	.L109
	movw	r0, #8578
	cmp	r2, r0
	bgt	.L186
	movw	r0, #20275
	movw	lr, #59055
	movt	r0, 1360
	movt	lr, 65535
	str	r0, [sp, #832]
	str	lr, [sp, #824]
	mov	r0, lr
	b	.L28
.L13:
	eor	r2, r0, r0, asr #31
	eor	r3, r8, r8, asr #31
	sub	r2, r2, r0, asr #31
	sub	r3, r3, r8, asr #31
	cmp	r2, r3
	asr	r9, r8, #31
	asr	r1, r0, #31
	ble	.L16
	mov	r3, r1
	lsl	r1, r9, #14
	mov	r2, r0
	orr	r1, r1, r8, lsr #18
	lsl	r0, r8, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L187
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r3, #10551
	ldrhi	r2, [sp, #896]
	mulls	r3, r3, r0
	mlahi	r3, r3, r0, r2
	addls	r3, r3, #8192
	sub	r3, r4, r3, asr #14
	b	.L15
.L184:
	eor	r2, r8, r8, asr #31
	eor	r3, r4, r4, asr #31
	sub	r2, r2, r8, asr #31
	sub	r3, r3, r4, asr #31
	cmp	r2, r3
	asr	r5, r4, #31
	asr	r9, r8, #31
	ble	.L5
	lsl	r1, r5, #14
	mov	r2, r8
	mov	r3, r9
	orr	r1, r1, r4, lsr #18
	lsl	r0, r4, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L188
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r4, #10551
	ldrhi	r3, [sp, #896]
	mulls	r4, r3, r0
	mlahi	r0, r4, r0, r3
	addls	r4, r4, #8192
	asrls	r4, r4, #14
	asrhi	r4, r0, #14
	b	.L4
.L105:
	movw	r0, #65001
	mov	lr, #67108864
	movt	r0, 65535
	str	lr, [sp, #832]
	str	r0, [sp, #824]
.L28:
	ldr	lr, [sp, #832]
	vldr.32	s14, .L198+8
	mla	r2, r0, r2, lr
	add	r2, r2, #4096
	asr	r2, r2, #13
	mul	r2, r1, r2
	vmov	s15, r2	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s15, s14
	ldr	r2, [sp, #716]
	cmp	ip, #0
	vstr.32	s15, [r2, #-4]
	mvnlt	r2, #0
	bge	.L30
.L29:
	movw	r1, #12868
	cmp	r3, r1
	rsbgt	r3, r3, #25600
	addgt	r3, r3, #136
	cmp	r3, #2144
	ble	.L114
	cmp	r3, #4288
	ble	.L115
	movw	r1, #6433
	cmp	r3, r1
	ble	.L116
	movw	r1, #8578
	cmp	r3, r1
	ble	.L117
	movw	r1, #9650
	cmp	r3, r1
	ble	.L118
	movw	r1, #10722
	cmp	r3, r1
	ble	.L119
	movw	r1, #11795
	cmp	r3, r1
	bgt	.L189
	movw	r1, #51978
	movw	r0, #1597
	movt	r1, 727
	str	r1, [sp, #884]
	str	r0, [sp, #880]
	mov	r1, r0
	b	.L33
.L30:
	movw	r3, #12868
	cmp	ip, r3
	beq	.L190
	movw	r3, #25736
	cmp	ip, r3
	movne	r3, ip
	movne	r2, #1
	bne	.L29
	vldr.32	s13, .L200+4
	vldr.32	s14, .L200+8
.L31:
	ldr	r1, [sp, #704]
	add	r3, r7, fp
	vstmia.32	r1!, {s13}
	add	r2, r7, r10
	vstr.32	s14, [r3]
	cmp	r4, #0
	eor	r3, r4, r4, asr #31
	str	r1, [sp, #704]
	sub	r3, r3, r4, asr #31
	vstr.32	s15, [r2]
	beq	.L34
	movw	r1, #12868
	cmp	r3, r1
	beq	.L35
	movw	r2, #25736
	cmp	r3, r2
	beq	.L36
	cmp	r3, r1
	movle	r2, r3
	subgt	r2, r2, r3
	mvngt	r1, #0
	movle	r1, #1
	cmp	r2, #1072
	blt	.L122
	cmp	r2, #2144
	ble	.L123
	cmp	r2, #3216
	ble	.L124
	cmp	r2, #4288
	ble	.L125
	movw	r0, #6433
	cmp	r2, r0
	ble	.L126
	movw	r0, #8578
	cmp	r2, r0
	bgt	.L191
	movw	r0, #20275
	movw	ip, #59055
	movt	r0, 1360
	movt	ip, 65535
	str	r0, [sp, #828]
	str	ip, [sp, #820]
	mov	r0, ip
	b	.L38
.L122:
	movw	r0, #65001
	mov	ip, #67108864
	movt	r0, 65535
	str	ip, [sp, #828]
	str	r0, [sp, #820]
.L38:
	ldr	ip, [sp, #828]
	vldr.32	s14, .L200
	mla	r2, r0, r2, ip
	add	r2, r2, #4096
	asr	r2, r2, #13
	mul	r2, r1, r2
	vmov	s15, r2	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s15, s14
	ldr	r2, [sp, #720]
	cmp	r4, #0
	vstr.32	s15, [r2, #-4]
	mvnlt	r2, #0
	bge	.L40
.L39:
	movw	r1, #12868
	cmp	r3, r1
	rsbgt	r3, r3, #25600
	addgt	r3, r3, #136
	cmp	r3, #2144
	ble	.L131
	cmp	r3, #4288
	ble	.L132
	movw	r1, #6433
	cmp	r3, r1
	ble	.L133
	movw	r1, #8578
	cmp	r3, r1
	ble	.L134
	movw	r1, #9650
	cmp	r3, r1
	ble	.L135
	movw	r1, #10722
	cmp	r3, r1
	ble	.L136
	movw	r1, #11795
	cmp	r3, r1
	bgt	.L192
	movw	r1, #51978
	movw	r0, #1597
	movt	r1, 727
	str	r1, [sp, #876]
	str	r0, [sp, #872]
	mov	r1, r0
	b	.L43
.L201:
	.align	2
.L200:
	.word	956301312
	.word	-2147483648
	.word	0
.L40:
	movw	r3, #12868
	cmp	r4, r3
	beq	.L193
	movw	r3, #25736
	cmp	r4, r3
	movne	r3, r4
	movne	r2, #1
	bne	.L39
	vldr.32	s13, .L200+4
	vldr.32	s14, .L200+8
.L41:
	vld4.32	{d16, d18, d20, d22}, [r7:64]
	ldr	r2, [sp, #700]
	add	r3, sp, #1200
	vstmia.32	r2!, {s13}
	vld4.32	{d17, d19, d21, d23}, [r3:64]
	str	r2, [sp, #700]
	add	r3, sp, #1296
	add	r2, sp, #1328
	vst1.32	{d16-d17}, [r3:64]
	vst1.32	{d20-d21}, [r2:64]
	add	r3, sp, #1312
	add	r2, sp, #1344
	vst1.32	{d18-d19}, [r3:64]
	vst1.32	{d22-d23}, [r2:64]
	add	r2, sp, #1296
	vld4.32	{d22, d24, d26, d28}, [r2:64]
	add	r3, r6, fp
	vstr.32	s14, [r3]
	add	r3, r6, r10
	vstr.32	s15, [r3]
	add	r2, sp, #1328
	vld4.32	{d23, d25, d27, d29}, [r2:64]
	add	r3, sp, #912
	vld4.32	{d8, d10, d12, d14}, [r3:64]
	ldr	r3, [sp, #696]
	ldr	r2, [sp, #724]
	vld4.32	{d0, d2, d4, d6}, [r3]
	add	r3, sp, #136
	vstmia	r3, {d22-d29}
	vld4.32	{d16, d18, d20, d22}, [r2]
	add	r1, sp, #944
	vld4.32	{d9, d11, d13, d15}, [r1:64]
	ldr	r1, [sp, #732]
	add	r3, sp, #200
	vstmia	r3, {d16-d23}
	vld4.32	{d1, d3, d5, d7}, [r1]
	add	r3, sp, #72
	vstmia	r3, {d8-d15}
	add	r2, sp, #200
	add	r3, sp, #8
	vstmia	r3, {d0-d7}
	vldmia	r2, {d6-d13}
	ldr	r0, [sp, #728]
	add	r3, sp, #136
	vld4.32	{d7, d9, d11, d13}, [r0]
	vstmia	r2, {d6-d13}
	vld4.32	{d4, d6, d8, d10}, [r6:64]
	add	ip, sp, #1264
	vldmia	r3, {d22-d29}
	vld4.32	{d5, d7, d9, d11}, [ip:64]
	vld4.32	{d12, d14, d16, d18}, [r7:64]
	add	ip, sp, #1200
	vld4.32	{d13, d15, d17, d19}, [ip:64]
	vldr	d20, [sp, #72]
	vldr	d21, [sp, #80]
	add	r2, sp, #264
	vstmia	r2, {d12-d19}
	add	r2, sp, #664
	vst1.32	{d24[0]}, [r2]
	add	r2, sp, #584
	vst1.32	{d20[1]}, [r2]
	vldr	d20, [sp, #88]
	vldr	d21, [sp, #96]
	vldr	d30, [sp, #72]
	vldr	d31, [sp, #80]
	vldr	d16, [sp, #72]
	vldr	d17, [sp, #80]
	vmov.32	r9, d20[0]
	vldr	d20, [sp, #8]
	vldr	d21, [sp, #16]
	vmov.32	r1, d31[0]
	vldr	d30, [sp, #88]
	vldr	d31, [sp, #96]
	vmov.32	r4, d16[0]
	vldr	d16, [sp, #8]
	vldr	d17, [sp, #16]
	vmov.32	r8, d20[1]
	vldr	d20, [sp, #24]
	vldr	d21, [sp, #32]
	vmov.32	lr, d30[1]
	vldr	d30, [sp, #104]
	vldr	d31, [sp, #112]
	vmov.32	r3, d22[0]
	vmov.32	r0, d16[0]
	vmov.f32	q8, #0.0  @ v4sf
	add	r2, sp, #4
	vst1.32	{d20[0]}, [r2]
	add	r2, sp, #796
	vst1.32	{d30[0]}, [r2]
	vldr	d30, [sp, #8]
	vldr	d31, [sp, #16]
	vldr	d12, [sp, #200]
	vldr	d13, [sp, #208]
	vdup.32	q9, r3
	vmov	q10, q8  @ v4sf
	add	r2, sp, #736
	vst1.32	{d31[0]}, [r2]
	vldr	d30, [sp, #24]
	vldr	d31, [sp, #32]
	vmov.32	r3, d22[1]
	vmla.f32	q10, q9, q6
	add	r2, sp, #756
	vst1.32	{d30[1]}, [r2]
	vldr	d30, [sp, #40]
	vldr	d31, [sp, #48]
	vldr	d14, [sp, #216]
	vldr	d15, [sp, #224]
	vmov	q9, q10  @ v4sf
	vdup.32	q10, r3
	vmov.32	r3, d23[0]
	add	r2, sp, #768
	vst1.32	{d30[0]}, [r2]
	add	r2, sp, #600
	vstmia	r2, {d4-d11}
	vmla.f32	q9, q10, q7
	vmov	q14, q8  @ v4sf
	vdup.32	q10, r3
	vmov.32	r3, d23[1]
	vdup.32	q11, r4
	add	r2, sp, #136
	vmov	q5, q2  @ v4sf
	vmla.f32	q14, q11, q2
	vldmia	r2, {d2-d9}
	add	r2, sp, #816
	vst1.32	{d8[0]}, [r2]
	add	r2, sp, #72
	vdup.32	q11, r0
	vmov.32	r4, d5[0]
	vmov.32	r0, d6[1]
	vldmia	r2, {d2-d9}
	vmov.32	r5, d24[1]
	vldr	d24, [sp, #264]
	vldr	d25, [sp, #272]
	add	r2, sp, #784
	vst1.32	{d3[1]}, [r2]
	add	r2, sp, #788
	vldr	d0, [sp, #232]
	vldr	d1, [sp, #240]
	vstr	d24, [sp, #680]
	vstr	d25, [sp, #688]
	vst1.32	{d5[0]}, [r2]
	add	r2, sp, #800
	vst1.32	{d6[1]}, [r2]
	add	r2, sp, #808
	vst1.32	{d8[0]}, [r2]
	add	r2, sp, #8
	vldmia	r2, {d2-d9}
	vmov.32	ip, d26[0]
	vmov	q13, q8  @ v4sf
	vmla.f32	q9, q10, q0
	vldr	d20, [sp, #248]
	vldr	d21, [sp, #256]
	add	r2, sp, #752
	vst1.32	{d3[1]}, [r2]
	add	r2, sp, #760
	vst1.32	{d5[0]}, [r2]
	vmla.f32	q13, q11, q12
	add	r2, sp, #772
	vdup.32	q11, r3
	ldr	r3, [sp, #664]	@ float
	vst1.32	{d6[1]}, [r2]
	add	r2, sp, #776
	vstr	d20, [sp, #200]
	vstr	d21, [sp, #208]
	vst1.32	{d8[0]}, [r2]
	vdup.32	q10, r3
	vmov	q4, q8  @ v4sf
	vmla.f32	q4, q10, q6
	ldr	r3, [sp, #584]	@ float
	vmov	q10, q4  @ v4sf
	vdup.32	q12, r3
	vldr	d8, [sp, #616]
	vldr	d9, [sp, #624]
	vmov	q3, q8  @ v4sf
	vmla.f32	q14, q12, q4
	vdup.32	q12, r9
	vldr	d4, [sp, #280]
	vldr	d5, [sp, #288]
	vmla.f32	q3, q12, q5
	vdup.32	q15, r8
	ldr	r3, [sp, #4]	@ float
	vmla.f32	q13, q15, q2
	vmov	q12, q3  @ v4sf
	vdup.32	q15, r3
	vldr	d6, [sp, #680]
	vldr	d7, [sp, #688]
	vstr	d4, [sp, #584]
	vstr	d5, [sp, #592]
	vmov	q2, q8  @ v4sf
	vmla.f32	q2, q15, q3
	vldr	d30, [sp, #152]
	vldr	d31, [sp, #160]
	vmov.32	r3, d31[1]
	vldr	d30, [sp, #168]
	vldr	d31, [sp, #176]
	vmov.32	r2, d31[0]
	vldr	d30, [sp, #184]
	vldr	d31, [sp, #192]
	vmov.32	r8, d30[1]
	vldr	d30, [sp, #88]
	vldr	d31, [sp, #96]
	add	r9, sp, #792
	vst1.32	{d31[1]}, [r9]
	vldr	d30, [sp, #104]
	vldr	d31, [sp, #112]
	add	r9, sp, #804
	vst1.32	{d31[0]}, [r9]
	vldr	d30, [sp, #120]
	vldr	d31, [sp, #128]
	add	r9, sp, #812
	vst1.32	{d30[1]}, [r9]
	vldr	d30, [sp, #200]
	vldr	d31, [sp, #208]
	vmla.f32	q9, q11, q15
	vstr	d18, [sp, #328]
	vstr	d19, [sp, #336]
	vdup.32	q9, r5
	vldr	d22, [sp, #24]
	vldr	d23, [sp, #32]
	vmla.f32	q10, q9, q7
	vdup.32	q9, r4
	add	r4, sp, #764
	vst1.32	{d23[1]}, [r4]
	vldr	d22, [sp, #40]
	vldr	d23, [sp, #48]
	vmov.32	r9, d23[0]
	vldr	d22, [sp, #56]
	vldr	d23, [sp, #64]
	add	r4, sp, #780
	vst1.32	{d22[1]}, [r4]
	vmla.f32	q10, q9, q0
	vdup.32	q11, r3
	vdup.32	q9, ip
	vmov	q3, q8  @ v4sf
	vmla.f32	q10, q11, q15
	vmla.f32	q3, q9, q6
	vmov	q9, q3  @ v4sf
	vldr	d6, [sp, #168]
	vldr	d7, [sp, #176]
	vstr	d20, [sp, #344]
	vstr	d21, [sp, #352]
	vdup.32	q10, r0
	vmla.f32	q9, q10, q7
	vdup.32	q10, r2
	vmov.32	r3, d7[1]
	vmov	q3, q10  @ v4sf
	vldr	d20, [sp, #648]
	vldr	d21, [sp, #656]
	vldr	d22, [sp, #632]
	vldr	d23, [sp, #640]
	vstr	d20, [sp, #664]
	vstr	d21, [sp, #672]
	vdup.32	q10, r1
	vmla.f32	q14, q10, q11
	vdup.32	q10, lr
	ldr	ip, [sp, #796]	@ float
	vstr	d22, [sp, #600]
	vstr	d23, [sp, #608]
	vmla.f32	q12, q10, q4
	vmov	q11, q8  @ v4sf
	vdup.32	q10, ip
	ldr	ip, [sp, #736]	@ float
	vmov	q1, q0  @ v4sf
	vmla.f32	q11, q10, q5
	vldr	d0, [sp, #296]
	vldr	d1, [sp, #304]
	vdup.32	q10, ip
	ldr	ip, [sp, #756]	@ float
	vmla.f32	q13, q10, q0
	vstr	d0, [sp, #264]
	vstr	d1, [sp, #272]
	vdup.32	q10, ip
	vmov	q0, q2  @ v4sf
	vldr	d4, [sp, #584]
	vldr	d5, [sp, #592]
	vmla.f32	q0, q10, q2
	ldr	ip, [sp, #768]	@ float
	vstr	d0, [sp, #736]
	vstr	d1, [sp, #744]
	vdup.32	q10, ip
	vldr	d0, [sp, #680]
	vldr	d1, [sp, #688]
	vmov	q2, q8  @ v4sf
	vmla.f32	q2, q10, q0
	vmov	q10, q2  @ v4sf
	vldr	d4, [sp, #184]
	vldr	d5, [sp, #192]
	vmov.32	r5, d5[0]
	vldr	d4, [sp, #104]
	vldr	d5, [sp, #112]
	vmov.32	r4, d5[1]
	vldr	d4, [sp, #120]
	vldr	d5, [sp, #128]
	vmov.32	lr, d5[0]
	vldr	d4, [sp, #40]
	vldr	d5, [sp, #48]
	vmov.32	ip, d5[1]
	vldr	d4, [sp, #56]
	vldr	d5, [sp, #64]
	vmla.f32	q9, q3, q1
	vmov.32	r0, d5[0]
	vdup.32	q2, r3
	ldr	r3, [sp, #816]	@ float
	vmov	q3, q9  @ v4sf
	vstr	d4, [sp, #680]
	vstr	d5, [sp, #688]
	vdup.32	q9, r3
	vmov	q2, q8  @ v4sf
	vmla.f32	q2, q9, q6
	ldr	r3, [sp, #784]	@ float
	vmov	q9, q2  @ v4sf
	vdup.32	q6, r3
	vldr	d4, [sp, #664]
	vldr	d5, [sp, #672]
	vmla.f32	q14, q6, q2
	ldr	r3, [sp, #788]	@ float
	vldr	d12, [sp, #600]
	vldr	d13, [sp, #608]
	vstr	d28, [sp, #392]
	vstr	d29, [sp, #400]
	vdup.32	q14, r3
	ldr	r3, [sp, #800]	@ float
	vmla.f32	q12, q14, q6
	vdup.32	q14, r3
	ldr	r3, [sp, #808]	@ float
	vmla.f32	q11, q14, q4
	vmov	q2, q8  @ v4sf
	vdup.32	q14, r3
	vmla.f32	q2, q14, q5
	vldr	d10, [sp, #184]
	vldr	d11, [sp, #192]
	ldr	r3, [sp, #752]	@ float
	vldr	d30, [sp, #312]
	vldr	d31, [sp, #320]
	vmov.32	r1, d11[1]
	vdup.32	q5, r3
	vmla.f32	q13, q5, q15
	vstr	d26, [sp, #456]
	vstr	d27, [sp, #464]
	ldr	r3, [sp, #760]	@ float
	vmov	q14, q2  @ v4sf
	vdup.32	q13, r3
	vldr	d4, [sp, #264]
	vldr	d5, [sp, #272]
	vldr	d12, [sp, #736]
	vldr	d13, [sp, #744]
	ldr	r3, [sp, #772]	@ float
	vmla.f32	q6, q13, q2
	vldr	d10, [sp, #584]
	vldr	d11, [sp, #592]
	vdup.32	q13, r3
	ldr	r3, [sp, #776]	@ float
	vmla.f32	q10, q13, q5
	vmov	q2, q8  @ v4sf
	vdup.32	q13, r3
	vdup.32	q5, r8
	vmla.f32	q2, q13, q0
	ldr	r8, [sp, #792]	@ float
	vmla.f32	q9, q5, q7
	vmov	q13, q2  @ v4sf
	vdup.32	q7, r8
	vldr	d4, [sp, #664]
	vldr	d5, [sp, #672]
	vldr	d0, [sp, #120]
	vldr	d1, [sp, #128]
	vmla.f32	q12, q7, q2
	ldr	r8, [sp, #804]	@ float
	vmov.32	r2, d1[1]
	vdup.32	q5, r8
	ldr	r8, [sp, #812]	@ float
	vldr	d0, [sp, #56]
	vldr	d1, [sp, #64]
	vdup.32	q7, r8
	ldr	r8, [sp, #764]	@ float
	vstr	d24, [sp, #408]
	vstr	d25, [sp, #416]
	vdup.32	q12, r8
	vmov.32	r3, d1[1]
	vmla.f32	q6, q12, q15
	vldr	d0, [sp, #600]
	vldr	d1, [sp, #608]
	vstr	d12, [sp, #472]
	vstr	d13, [sp, #480]
	vmla.f32	q11, q5, q0
	vdup.32	q6, r5
	vldr	d0, [sp, #264]
	vldr	d1, [sp, #272]
	vdup.32	q5, r9
	vmla.f32	q9, q6, q1
	vmla.f32	q10, q5, q0
	vldr	d2, [sp, #664]
	vldr	d3, [sp, #672]
	vdup.32	q5, r4
	ldr	r8, [sp, #780]	@ float
	vmla.f32	q11, q5, q1
	vmla.f32	q14, q7, q4
	vldr	d24, [sp, #584]
	vldr	d25, [sp, #592]
	vdup.32	q0, ip
	vldr	d4, [sp, #680]
	vldr	d5, [sp, #688]
	vldr	d14, [sp, #200]
	vldr	d15, [sp, #208]
	vdup.32	q4, r8
	vmla.f32	q3, q2, q7
	vmla.f32	q10, q0, q15
	vmla.f32	q13, q4, q12
	vldr	d0, [sp, #264]
	vldr	d1, [sp, #272]
	vdup.32	q12, r0
	vdup.32	q4, lr
	vstr	d22, [sp, #424]
	vstr	d23, [sp, #432]
	vldr	d22, [sp, #600]
	vldr	d23, [sp, #608]
	vmla.f32	q13, q12, q0
	vmla.f32	q14, q4, q11
	vldr	d24, [sp, #200]
	vldr	d25, [sp, #208]
	vdup.32	q11, r2
	vstr	d6, [sp, #360]
	vstr	d7, [sp, #368]
	vstr	d20, [sp, #488]
	vstr	d21, [sp, #496]
	vdup.32	q3, r1
	vdup.32	q10, r3
	vmla.f32	q14, q11, q1
	vmla.f32	q9, q3, q12
	vmla.f32	q13, q10, q15
	vld4.32	{d8, d10, d12, d14}, [r6:64]
	add	ip, sp, #1264
	add	r3, sp, #328
	vstr	d18, [sp, #376]
	vstr	d19, [sp, #384]
	vstr	d28, [sp, #440]
	vstr	d29, [sp, #448]
	vstr	d26, [sp, #504]
	vstr	d27, [sp, #512]
	vld4.32	{d9, d11, d13, d15}, [ip:64]
	vldmia	r3, {d18-d25}
	add	ip, sp, #976
	vst4.32	{d18, d20, d22, d24}, [ip:64]
	add	r3, sp, #392
	add	ip, sp, #1008
	vst4.32	{d19, d21, d23, d25}, [ip:64]
	vldmia	r3, {d18-d25}
	add	ip, sp, #1104
	vst4.32	{d18, d20, d22, d24}, [ip:64]
	add	r3, sp, #456
	add	ip, sp, #1136
	vst4.32	{d19, d21, d23, d25}, [ip:64]
	vldmia	r3, {d18-d25}
	add	ip, sp, #1040
	vst4.32	{d18, d20, d22, d24}, [ip:64]
	add	ip, sp, #1360
	vst1.32	{d8-d9}, [ip:64]
	add	ip, sp, #1376
	vst1.32	{d10-d11}, [ip:64]
	add	ip, sp, #1392
	vst1.32	{d12-d13}, [ip:64]
	add	ip, sp, #1408
	vst1.32	{d14-d15}, [ip:64]
	add	ip, sp, #1072
	vst4.32	{d19, d21, d23, d25}, [ip:64]
	add	ip, sp, #1360
	vld4.32	{d24, d26, d28, d30}, [ip:64]
	add	ip, sp, #1040
	vld4.32	{d8, d10, d12, d14}, [ip:64]
	add	ip, sp, #1392
	vld4.32	{d25, d27, d29, d31}, [ip:64]
	vmov.32	r3, d24[0]
	add	ip, sp, #1072
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
	vstr	d2, [sp, #8]
	vstr	d3, [sp, #16]
	vmov	q3, q5  @ v4sf
	vmla.f32	q10, q0, q6
	vldr	d0, [sp, #8]
	vldr	d1, [sp, #16]
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
	vstr	d20, [sp, #520]
	vstr	d21, [sp, #528]
	vmov.32	r2, d29[1]
	vdup.32	q10, r1
	vmla.f32	q9, q7, q3
	vmla.f32	q8, q1, q2
	vmla.f32	q0, q10, q4
	vdup.32	q2, r3
	vmla.f32	q9, q5, q11
	vmov.32	r3, d31[0]
	vdup.32	q10, r2
	add	ip, sp, #1104
	vld1.32	{d12-d13}, [ip:64]
	add	ip, sp, #1120
	vld1.32	{d2-d3}, [ip:64]
	vmla.f32	q9, q10, q4
	vmla.f32	q8, q2, q3
	vdup.32	q3, r3
	vmov.32	r3, d31[1]
	add	ip, sp, #928
	vst1.32	{d2-d3}, [ip:64]
	vmla.f32	q8, q3, q11
	vstr	d18, [sp, #552]
	vstr	d19, [sp, #560]
	vdup.32	q9, r3
	add	r2, sp, #912
	vst1.32	{d12-d13}, [r2:64]
	add	ip, sp, #1136
	vld1.32	{d2-d3}, [ip:64]
	add	ip, sp, #1152
	vld1.32	{d4-d5}, [ip:64]
	vmla.f32	q8, q9, q4
	vld4.32	{d24, d26, d28, d30}, [r2:64]
	add	ip, sp, #944
	vst1.32	{d2-d3}, [ip:64]
	add	r2, sp, #520
	add	ip, sp, #960
	vst1.32	{d4-d5}, [ip:64]
	vstr	d0, [sp, #536]
	vstr	d1, [sp, #544]
	vstr	d16, [sp, #568]
	vstr	d17, [sp, #576]
	vldmia	r2, {d6-d13}
	add	ip, sp, #944
	vld4.32	{d25, d27, d29, d31}, [ip:64]
	add	ip, sp, #976
	vld1.32	{d22-d23}, [ip:64]
	add	ip, sp, #992
	vld1.32	{d20-d21}, [ip:64]
	add	ip, sp, #1008
	vld1.32	{d18-d19}, [ip:64]
	add	ip, sp, #1024
	vld1.32	{d16-d17}, [ip:64]
	ldr	r3, [sp, #696]
	ldr	r1, [sp, #732]
	vst4.32	{d6, d8, d10, d12}, [r3]
	ldr	r3, [sp, #840]
	vst4.32	{d7, d9, d11, d13}, [r1]
	vst1.32	{d24-d25}, [r3]
	ldr	r3, [sp, #852]
	ldr	r2, [sp, #724]
	vst1.32	{d26-d27}, [r3]
	ldr	r3, [sp, #844]
	add	r10, r10, #20
	vst1.32	{d28-d29}, [r3]
	ldr	r3, [sp, #848]
	ldr	r0, [sp, #728]
	vst1.32	{d30-d31}, [r3]
	ldr	r3, [sp, #856]
	vst1.32	{d22-d23}, [r2]
	vst1.32	{d20-d21}, [r3]
	ldr	r3, [sp, #860]
	cmp	r10, #80
	vst1.32	{d18-d19}, [r0]
	add	fp, fp, #16
	vst1.32	{d16-d17}, [r3]
	bne	.L3
	ldr	r3, [sp, #836]
	add	r3, r3, #20
	str	r3, [sp, #836]
	cmp	r3, #76
	ldr	r3, [sp, #712]
	add	r3, r3, #20
	str	r3, [sp, #712]
	ldr	r3, [sp, #720]
	add	r3, r3, #20
	str	r3, [sp, #720]
	ldr	r3, [sp, #716]
	add	r3, r3, #20
	str	r3, [sp, #716]
	bne	.L47
	ldr	r3, [sp, #904]
	ldr	r8, [sp, #696]
	subs	r3, r3, #1
	str	r3, [sp, #904]
	bne	.L2
	add	sp, sp, #1424
	add	sp, sp, #4
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L16:
	lsl	r1, r1, #14
	orr	r1, r1, r0, lsr #18
	vmov	r2, s15	@ int
	mov	r3, r9
	lsl	r0, r0, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L194
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r3, #10551
	ldrhi	r2, [sp, #896]
	mulls	r3, r3, r0
	mlahi	r0, r3, r0, r2
	addls	r3, r3, #8192
	asrls	r3, r3, #14
	asrhi	r3, r0, #14
	cmp	r3, #0
	bge	.L20
	ldr	r2, [sp, #888]
	sub	r3, r2, r3
	sub	r3, r4, r3
	b	.L15
.L5:
	lsl	r1, r9, #14
	mov	r2, r4
	mov	r3, r5
	orr	r1, r1, r8, lsr #18
	lsl	r0, r8, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L195
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r4, #10551
	ldrhi	r3, [sp, #896]
	mulls	r4, r3, r0
	mlahi	r4, r4, r0, r3
	addls	r4, r4, #8192
	asr	r4, r4, #14
	cmp	r4, #0
	bge	.L9
	ldr	r3, [sp, #888]
	sub	r4, r3, r4
	b	.L4
.L34:
	mov	r3, #1065353216
	ldr	r2, [sp, #720]
	vldr.32	s13, .L202+4
	str	r3, [r2, #-4]	@ float
	vmov	s15, r3
	vldr.32	s14, .L202+8
	b	.L41
.L24:
	mov	r3, #1065353216
	ldr	r2, [sp, #716]
	vldr.32	s13, .L202+4
	str	r3, [r2, #-4]	@ float
	vmov	s15, r3
	vldr.32	s14, .L202+8
	b	.L31
.L131:
	mov	r1, #0
	str	r1, [sp, #876]
	movw	r1, #8099
	str	r1, [sp, #872]
.L43:
	ldr	r0, [sp, #876]
	vldr.32	s13, .L202
	mla	r3, r1, r3, r0
	add	r3, r3, #4096
	asr	r3, r3, #13
	mul	r3, r2, r3
	vmov	s14, r3	@ int
	vcvt.f32.s32	s14, s14
	vmul.f32	s14, s14, s13
	vneg.f32	s13, s14
	b	.L41
.L114:
	mov	r1, #0
	str	r1, [sp, #884]
	movw	r1, #8099
	str	r1, [sp, #880]
.L33:
	ldr	r0, [sp, #884]
	vldr.32	s13, .L202
	mla	r3, r1, r3, r0
	add	r3, r3, #4096
	asr	r3, r3, #13
	mul	r3, r2, r3
	vmov	s14, r3	@ int
	vcvt.f32.s32	s14, s14
	vmul.f32	s14, s14, s13
	vneg.f32	s13, s14
	b	.L31
.L25:
	vldr.32	s15, .L202+8
	ldr	r3, [sp, #716]
	cmp	ip, #0
	vstr.32	s15, [r3, #-4]
	bge	.L30
	vmov.f32	s13, #1.0e+0
	vmov.f32	s14, #-1.0e+0
	vldr.32	s15, .L202+8
	b	.L31
.L35:
	vldr.32	s15, .L202+8
	ldr	r3, [sp, #720]
	cmp	r4, #0
	vstr.32	s15, [r3, #-4]
	bge	.L40
	vmov.f32	s13, #1.0e+0
	vmov.f32	s14, #-1.0e+0
	vldr.32	s15, .L202+8
	b	.L41
.L106:
	movw	r0, #24316
	movw	lr, #63939
	movt	r0, 1041
	movt	lr, 65535
	str	r0, [sp, #832]
	str	lr, [sp, #824]
	mov	r0, lr
	b	.L28
.L123:
	movw	r0, #24316
	movw	ip, #63939
	movt	r0, 1041
	movt	ip, 65535
	str	r0, [sp, #828]
	str	ip, [sp, #820]
	mov	r0, ip
	b	.L38
.L194:
	movw	r3, #10551
	ldr	r2, [sp, #892]
	mla	r0, r3, r0, r2
	asr	r3, r0, #14
.L20:
	rsb	r3, r3, #25600
	add	r3, r3, #136
	sub	r3, r4, r3
	b	.L15
.L195:
	movw	r4, #10551
	ldr	r3, [sp, #892]
	mla	r4, r4, r0, r3
	asr	r4, r4, #14
.L9:
	rsb	r4, r4, #25600
	add	r4, r4, #136
	b	.L4
.L132:
	movw	r1, #4024
	movw	r0, #7547
	movt	r1, 18
	str	r1, [sp, #876]
	str	r0, [sp, #872]
	mov	r1, r0
	b	.L43
.L115:
	movw	r1, #4024
	movw	r0, #7547
	movt	r1, 18
	str	r1, [sp, #884]
	str	r0, [sp, #880]
	mov	r1, r0
	b	.L33
.L187:
	movw	r3, #10551
	ldr	r2, [sp, #892]
	mla	r3, r3, r0, r2
	sub	r3, r4, r3, asr #14
	b	.L15
.L188:
	movw	r4, #10551
	ldr	r3, [sp, #892]
	mla	r0, r4, r0, r3
	asr	r4, r0, #14
	b	.L4
.L190:
	vmov.f32	s13, #-1.0e+0
	vmov.f32	s14, #1.0e+0
	b	.L31
.L193:
	vmov.f32	s13, #-1.0e+0
	vmov.f32	s14, #1.0e+0
	b	.L41
.L107:
	movw	r0, #14343
	movw	lr, #62905
	movt	r0, 1075
	movt	lr, 65535
	str	r0, [sp, #832]
	str	lr, [sp, #824]
	mov	r0, lr
	b	.L28
.L124:
	movw	r0, #14343
	movw	ip, #62905
	movt	r0, 1075
	movt	ip, 65535
	str	r0, [sp, #828]
	str	ip, [sp, #820]
	mov	r0, ip
	b	.L38
.L116:
	movw	r1, #55398
	movw	r0, #6481
	movt	r1, 87
	str	r1, [sp, #884]
	str	r0, [sp, #880]
	mov	r1, r0
	b	.L33
.L133:
	movw	r1, #55398
	movw	r0, #6481
	movt	r1, 87
	str	r1, [sp, #876]
	str	r0, [sp, #872]
	mov	r1, r0
	b	.L43
.L108:
	movw	r0, #51152
	movw	lr, #61915
	movt	r0, 1123
	movt	lr, 65535
	str	r0, [sp, #832]
	str	lr, [sp, #824]
	mov	r0, lr
	b	.L28
.L125:
	movw	r0, #51152
	movw	ip, #61915
	movt	r0, 1123
	movt	ip, 65535
	str	r0, [sp, #828]
	str	ip, [sp, #820]
	mov	r0, ip
	b	.L38
.L117:
	movw	r1, #57628
	movw	r0, #4973
	movt	r1, 235
	str	r1, [sp, #884]
	str	r0, [sp, #880]
	mov	r1, r0
	b	.L33
.L134:
	movw	r1, #57628
	movw	r0, #4973
	movt	r1, 235
	str	r1, [sp, #876]
	str	r0, [sp, #872]
	mov	r1, r0
	b	.L43
.L109:
	movw	r0, #18046
	movw	lr, #60563
	movt	r0, 1212
	movt	lr, 65535
	str	r0, [sp, #832]
	str	lr, [sp, #824]
	mov	r0, lr
	b	.L28
.L126:
	movw	r0, #18046
	movw	ip, #60563
	movt	r0, 1212
	movt	ip, 65535
	str	r0, [sp, #828]
	str	ip, [sp, #820]
	mov	r0, ip
	b	.L38
.L135:
	movw	r1, #56950
	movw	r0, #3621
	movt	r1, 412
	str	r1, [sp, #876]
	str	r0, [sp, #872]
	mov	r1, r0
	b	.L43
.L118:
	movw	r1, #56950
	movw	r0, #3621
	movt	r1, 412
	str	r1, [sp, #884]
	str	r0, [sp, #880]
	mov	r1, r0
	b	.L33
.L191:
	movw	r0, #10722
	cmp	r2, r0
	bgt	.L196
	movw	r0, #57488
	movw	ip, #57989
	movt	r0, 1499
	movt	ip, 65535
	str	r0, [sp, #828]
	str	ip, [sp, #820]
	mov	r0, ip
	b	.L38
.L186:
	movw	r0, #10722
	cmp	r2, r0
	bgt	.L197
	movw	r0, #57488
	movw	lr, #57989
	movt	r0, 1499
	movt	lr, 65535
	str	r0, [sp, #832]
	str	lr, [sp, #824]
	mov	r0, lr
	b	.L28
.L119:
	movw	r1, #36307
	movw	r0, #2631
	movt	r1, 558
	str	r1, [sp, #884]
	str	r0, [sp, #880]
	mov	r1, r0
	b	.L33
.L136:
	movw	r1, #36307
	movw	r0, #2631
	movt	r1, 558
	str	r1, [sp, #876]
	str	r0, [sp, #872]
	mov	r1, r0
	b	.L43
.L203:
	.align	2
.L202:
	.word	956301312
	.word	-2147483648
	.word	0
.L197:
	movw	lr, #12868
	ldr	r5, [sp, #908]
	cmp	r2, lr
	movw	r0, #57437
	ldr	lr, [sp, #832]
	movne	lr, r5
	movt	r0, 65535
	str	lr, [sp, #832]
	ldr	lr, [sp, #824]
	movne	lr, r0
	str	lr, [sp, #824]
	mov	r0, lr
	b	.L28
.L196:
	movw	ip, #12868
	ldr	lr, [sp, #908]
	cmp	r2, ip
	movw	r0, #57437
	ldr	ip, [sp, #828]
	movne	ip, lr
	movt	r0, 65535
	str	ip, [sp, #828]
	ldr	ip, [sp, #820]
	movne	ip, r0
	str	ip, [sp, #820]
	mov	r0, ip
	b	.L38
.L189:
	movw	r0, #12868
	ldr	ip, [sp, #900]
	cmp	r3, r0
	movw	r1, #535
	ldr	r0, [sp, #884]
	movne	r0, ip
	str	r0, [sp, #884]
	ldr	r0, [sp, #880]
	movne	r0, r1
	str	r0, [sp, #880]
	mov	r1, r0
	b	.L33
.L192:
	movw	r0, #12868
	ldr	ip, [sp, #900]
	cmp	r3, r0
	movw	r1, #535
	ldr	r0, [sp, #876]
	movne	r0, ip
	str	r0, [sp, #876]
	ldr	r0, [sp, #872]
	movne	r0, r1
	str	r0, [sp, #872]
	mov	r1, r0
	b	.L43
.L185:
	ldr	r4, [sp, #888]
	b	.L4
.L26:
	mov	r3, #0
	ldr	r2, [sp, #716]
	movt	r3, 49024
	cmp	ip, #0
	str	r3, [r2, #-4]	@ float
	vmovge	s15, r3
	bge	.L30
	vldr.32	s13, .L202+4
	vldr.32	s14, .L202+8
	vmov	s15, r3
	b	.L31
.L36:
	mov	r3, #0
	ldr	r2, [sp, #720]
	movt	r3, 49024
	cmp	r4, #0
	str	r3, [r2, #-4]	@ float
	vmovge	s15, r3
	bge	.L40
	vldr.32	s13, .L202+4
	vldr.32	s14, .L202+8
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
