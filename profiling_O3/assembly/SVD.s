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
	@ args = 0, pretend = 0, frame = 1880
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r4, r0
	sub	sp, sp, #1872
	sub	sp, sp, #12
	add	r0, sp, #1424
	mov	fp, r2
	mov	r5, r1
	str	r1, [sp, #1048]
	mov	r2, #64
	mov	r1, #0
	add	r0, r0, #8
	str	r3, [sp, #1292]
	bl	memset
	add	r0, sp, #1488
	mov	r2, #64
	mov	r1, #0
	add	r0, r0, #8
	bl	memset
	add	r0, sp, #1552
	mov	r2, #64
	mov	r1, #0
	add	r0, r0, #8
	bl	memset
	mov	r2, r4
	mov	r3, fp
	vld1.32	{d16-d17}, [r2]!
	vst1.32	{d16-d17}, [r3]!
	vld1.32	{d16-d17}, [r2]
	vst1.32	{d16-d17}, [r3]
	movw	r2, #:lower16:.LANCHOR0
	add	r3, r4, #32
	vld1.32	{d16-d17}, [r3]
	movt	r2, #:upper16:.LANCHOR0
	add	r3, fp, #32
	vst1.32	{d16-d17}, [r3]
	mov	r0, r2
	add	r4, r4, #48
	vld1.32	{d16-d17}, [r0:64]!
	vld1.32	{d18-d19}, [r4]
	mov	r1, r5
	str	r3, [sp, #1256]
	add	r3, fp, #48
	vst1.32	{d18-d19}, [r3]
	vst1.32	{d16-d17}, [r1]!
	vld1.32	{d16-d17}, [r0:64]
	vst1.32	{d16-d17}, [r1]
	str	r1, [sp, #1308]
	add	r1, r2, #32
	vld1.32	{d16-d17}, [r1:64]
	mov	r3, r0
	str	r0, [sp, #1316]
	add	r0, r5, #32
	vst1.32	{d16-d17}, [r0]
	str	r0, [sp, #1052]
	add	r0, r2, #48
	vld1.32	{d16-d17}, [r0:64]
	add	ip, r5, #48
	vst1.32	{d16-d17}, [ip]
	vld1.32	{d20-d21}, [r3:64]
	movw	r3, #49611
	vld1.32	{d22-d23}, [r2:64]
	vld1.32	{d18-d19}, [r1:64]
	str	r2, [sp, #1320]
	str	ip, [sp, #1312]
	movt	r3, 581
	movw	ip, #32309
	movw	r2, #12073
	vld1.32	{d16-d17}, [r0:64]
	str	r3, [sp, #1344]
	mov	r3, #4
	mov	r6, fp
	add	r1, sp, #1360
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1376
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1392
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1408
	add	r1, r1, #8
	movt	ip, 64954
	movt	r2, 1590
	vst1.32	{d16-d17}, [r1:64]
	str	ip, [sp, #1348]
	str	r2, [sp, #1364]
	str	r3, [sp, #1352]
.L2:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	bne	.L48
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bne	.L48
	ldr	r3, [r6, #12]
	cmp	r3, #0
	bne	.L48
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L48
	ldr	r2, [r6, #24]
	cmp	r2, #0
	bne	.L48
	ldr	r0, [r6, #28]
	cmp	r0, #0
	bne	.L48
	ldr	r1, [r6, #32]
	cmp	r1, #0
	bne	.L48
	ldr	ip, [r6, #36]
	cmp	ip, #0
	bne	.L48
	ldr	r4, [r6, #44]
	cmp	r4, #0
	bne	.L48
	ldr	lr, [r6, #48]
	cmp	lr, #0
	bne	.L48
	ldr	r5, [r6, #52]
	cmp	r5, #0
	bne	.L48
	ldr	r5, [r6, #56]
	cmp	r5, #0
	bne	.L48
	vmov	s15, r3	@ int
	vcvt.f64.s32	d16, s15
	vldr.32	s15, [r6]	@ int
	vcvt.f64.s32	d26, s15
	vldr.32	s15, [r6, #20]	@ int
	vcvt.f64.s32	d25, s15
	vldr.32	s15, [r6, #40]	@ int
	vcvt.f64.s32	d24, s15
	vldr.32	s15, [r6, #60]	@ int
	vcvt.f64.s32	d23, s15
	vmov	s15, r2	@ int
	vcvt.f64.s32	d17, s15
	vmov	s15, r0	@ int
	vcvt.f64.s32	d19, s15
	vmov	s15, r1	@ int
	vcvt.f64.s32	d18, s15
	vmov	s15, ip	@ int
	vcvt.f64.s32	d20, s15
	vmov	s15, r4	@ int
	vabs.f64	d26, d26
	vcvt.f64.s32	d22, s15
	vmov	s15, lr	@ int
	vabs.f64	d25, d25
	vcvt.f64.s32	d21, s15
	vcvt.s32.f64	s15, d26
	vabs.f64	d24, d24
	vmov	r9, s15	@ int
	vcvt.s32.f64	s15, d25
	vabs.f64	d23, d23
	vmov	r8, s15	@ int
	vcvt.s32.f64	s15, d24
	vabs.f64	d16, d16
	vmov	r7, s15	@ int
	vcvt.s32.f64	s15, d23
	mov	fp, r6
	vabs.f64	d17, d17
	vmov	r6, s15	@ int
	vcvt.s32.f64	s15, d16
	vabs.f64	d19, d19
	vmov	r3, s15	@ int
	vcvt.s32.f64	s15, d17
	vabs.f64	d18, d18
	vmov	r2, s15	@ int
	vcvt.s32.f64	s15, d19
	vabs.f64	d20, d20
	vmov	r0, s15	@ int
	vcvt.s32.f64	s15, d18
	vabs.f64	d22, d22
	vmov	r1, s15	@ int
	vcvt.s32.f64	s15, d20
	vabs.f64	d21, d21
	vmov	ip, s15	@ int
	vcvt.s32.f64	s15, d22
	vmov	r4, s15	@ int
	vcvt.s32.f64	s15, d21
	vmov	lr, s15	@ int
	str	r5, [fp, #4]
	str	r5, [fp, #8]
	str	r5, [fp, #12]
	str	r9, [fp]
	str	r8, [fp, #20]
	str	r7, [fp, #40]
	str	r6, [fp, #60]
	str	r3, [fp, #16]
	str	r2, [fp, #24]
	strd	r0, [fp, #28]
	str	ip, [fp, #36]
	str	r4, [fp, #44]
	vstr.32	s15, [fp, #48]	@ int
	add	sp, sp, #1872
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L48:
	movw	r2, #39800
	movw	r1, #57308
	mov	r3, #0
	mov	r10, r6
	movt	r2, 65535
	str	r2, [sp, #1356]
	ldr	r2, [sp, #1292]
	movt	r1, 918
	add	fp, sp, #1680
	add	r0, sp, #1616
	str	r1, [sp, #1360]
	add	r1, r2, #16
	add	r0, r0, #8
	add	fp, fp, #8
	str	r1, [sp, #1296]
	add	r1, r2, #32
	add	r2, r2, #48
	str	r3, [sp, #396]
	str	fp, [sp, #1268]
	str	r0, [sp, #1264]
	str	r0, [sp, #1260]
	str	r1, [sp, #1304]
	str	r2, [sp, #1300]
.L47:
	add	r9, r3, #1
	add	r3, r10, r3, lsl #4
	str	r3, [sp, #1272]
	ldr	r3, [sp, #396]
	str	r9, [sp, #1340]
	add	r3, r3, #16
	str	r3, [sp, #392]
.L3:
	ldr	r3, [sp, #1320]
	add	r8, r9, r9, lsl #2
	vld1.32	{d22-d23}, [r3:64]
	ldr	r3, [sp, #1316]
	ldr	r6, [r10, r8, lsl #2]
	vld1.32	{d20-d21}, [r3:64]
	ldr	r3, .L118
	vst1.32	{d22-d23}, [fp:64]
	vld1.32	{d18-d19}, [r3:64]
	add	r3, r3, #16
	vld1.32	{d16-d17}, [r3:64]
	ldr	r3, [sp, #396]
	ldr	r2, [r10, r3]
	ldr	r3, [sp, #392]
	sub	r0, r6, r2
	ldr	r7, [r10, r3]
	ldr	r3, [sp, #1272]
	lsls	r0, r0, #6
	ldr	r3, [r3, r9, lsl #2]
	add	r6, r6, r2
	add	r4, r7, r3
	sub	r7, r7, r3
	add	r3, sp, #1616
	add	r3, r3, #8
	vst1.32	{d22-d23}, [r3:64]
	add	r3, sp, #1632
	add	r3, r3, #8
	vst1.32	{d20-d21}, [r3:64]
	add	r3, sp, #1696
	add	r3, r3, #8
	vst1.32	{d20-d21}, [r3:64]
	add	r3, sp, #1648
	add	r3, r3, #8
	vst1.32	{d18-d19}, [r3:64]
	add	r3, sp, #1712
	add	r3, r3, #8
	vst1.32	{d18-d19}, [r3:64]
	add	r3, sp, #1664
	add	r3, r3, #8
	vst1.32	{d16-d17}, [r3:64]
	add	r3, sp, #1728
	add	r3, r3, #8
	lsl	r4, r4, #6
	vst1.32	{d16-d17}, [r3:64]
	bne	.L104
	cmp	r4, #0
	movwgt	r4, #25736
	bgt	.L4
	bne	.L105
.L4:
	lsls	r6, r6, #6
	lsl	r7, r7, #6
	bne	.L13
	cmp	r7, #0
	subgt	r3, r4, #25600
	subgt	r3, r3, #136
	bgt	.L15
	addne	r3, r4, #25600
	addne	r3, r3, #136
	moveq	r3, r4
.L15:
	add	r3, r3, r3, lsr #31
	asr	r2, r3, #1
	add	r3, r2, #1
	asr	r3, r3, #1
	sub	r4, r4, r2
	add	r4, r4, #1
	eor	r2, r3, r3, asr #31
	cmp	r3, #0
	sub	r2, r2, r3, asr #31
	asr	r4, r4, #1
	beq	.L24
	movw	r0, #12868
	cmp	r2, r0
	beq	.L25
	movw	r1, #25736
	cmp	r2, r1
	beq	.L26
	cmp	r2, r0
	movle	r1, r2
	subgt	r1, r1, r2
	mvngt	r0, #0
	movle	r0, #1
	cmp	r1, #1072
	blt	.L57
	cmp	r1, #2144
	ble	.L58
	cmp	r1, #3216
	ble	.L59
	cmp	r1, #4288
	ble	.L60
	movw	ip, #6433
	cmp	r1, ip
	ble	.L61
	movw	ip, #8578
	cmp	r1, ip
	bgt	.L106
	movw	ip, #20275
	movw	lr, #59055
	movt	ip, 1360
	movt	lr, 65535
	str	ip, [sp, #1288]
	str	lr, [sp, #1284]
	mov	ip, lr
	b	.L28
.L13:
	eor	r3, r7, r7, asr #31
	eor	r2, r6, r6, asr #31
	sub	r3, r3, r7, asr #31
	sub	r2, r2, r6, asr #31
	cmp	r2, r3
	mov	r0, r7
	asr	r1, r7, #31
	asr	r7, r6, #31
	ble	.L16
	lsl	r1, r1, #14
	orr	r1, r1, r0, lsr #18
	mov	r2, r6
	mov	r3, r7
	lsl	r0, r0, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L107
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r3, #10551
	ldrhi	r2, [sp, #1348]
	mulls	r3, r3, r0
	mlahi	r3, r3, r0, r2
	addls	r3, r3, #8192
	sub	r3, r4, r3, asr #14
	b	.L15
.L104:
	eor	r2, r0, r0, asr #31
	eor	r3, r4, r4, asr #31
	sub	r2, r2, r0, asr #31
	sub	r3, r3, r4, asr #31
	cmp	r2, r3
	asr	r5, r4, #31
	asr	r1, r0, #31
	ble	.L5
	mov	r3, r1
	lsl	r1, r5, #14
	mov	r2, r0
	orr	r1, r1, r4, lsr #18
	lsl	r0, r4, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L108
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r4, #10551
	ldrhi	r3, [sp, #1348]
	mulls	r4, r3, r0
	mlahi	r4, r4, r0, r3
	addls	r4, r4, #8192
	asr	r4, r4, #14
	b	.L4
.L57:
	movw	ip, #65001
	mov	lr, #67108864
	movt	ip, 65535
	str	lr, [sp, #1288]
	str	ip, [sp, #1284]
.L28:
	ldr	lr, [sp, #1288]
	cmp	r3, #0
	mla	r1, ip, r1, lr
	add	r1, r1, #4096
	asr	r1, r1, #13
	mul	r0, r0, r1
	add	ip, sp, #1616
	add	r0, r0, #16
	ldr	r1, [sp, #396]
	asr	r0, r0, #5
	add	ip, ip, #8
	str	r0, [ip, r1]
	mvnlt	r3, #0
	bge	.L30
.L29:
	movw	r1, #12868
	cmp	r2, r1
	rsbgt	r2, r2, #25600
	addgt	r2, r2, #136
	cmp	r2, #2144
	ble	.L66
	cmp	r2, #4288
	ble	.L67
	movw	r1, #6433
	cmp	r2, r1
	ble	.L68
	movw	r1, #8578
	cmp	r2, r1
	ble	.L69
	movw	r1, #9650
	cmp	r2, r1
	bgt	.L109
	movw	r1, #56950
	movw	ip, #3621
	movt	r1, 412
	str	r1, [sp, #1336]
	str	ip, [sp, #1332]
	mov	r1, ip
	b	.L33
.L26:
	mvn	r0, #255
	ldr	r2, [sp, #396]
	add	r1, sp, #1616
	add	r1, r1, #8
	cmp	r3, #0
	str	r0, [r1, r2]
	blt	.L93
.L30:
	movw	r2, #12868
	cmp	r3, r2
	beq	.L110
	movw	r2, #25736
	cmp	r3, r2
	movne	r2, r3
	movne	r3, #1
	bne	.L29
.L93:
	mov	r3, #0
	mov	r1, r3
.L31:
	ldr	ip, [sp, #1264]
	eor	r2, r4, r4, asr #31
	str	r3, [ip, r9, lsl #2]
	ldr	r3, [sp, #1260]
	cmp	r4, #0
	str	r1, [r3, r9, lsl #4]
	add	r3, sp, #1616
	add	r3, r3, #8
	sub	r2, r2, r4, asr #31
	str	r0, [r3, r8, lsl #2]
	beq	.L34
	movw	r1, #12868
	cmp	r2, r1
	beq	.L35
	movw	r3, #25736
	cmp	r2, r3
	beq	.L36
	cmp	r2, r1
	movle	r3, r2
	subgt	r3, r3, r2
	mvngt	r1, #0
	movle	r1, #1
	cmp	r3, #1072
	blt	.L74
	cmp	r3, #2144
	ble	.L75
	cmp	r3, #3216
	ble	.L76
	cmp	r3, #4288
	ble	.L77
	movw	r0, #6433
	cmp	r3, r0
	ble	.L78
	movw	r0, #8578
	cmp	r3, r0
	bgt	.L111
	movw	r0, #20275
	movw	ip, #59055
	movt	r0, 1360
	movt	ip, 65535
	str	r0, [sp, #1280]
	str	ip, [sp, #1276]
	mov	r0, ip
	b	.L38
.L74:
	movw	r0, #65001
	mov	ip, #67108864
	movt	r0, 65535
	str	ip, [sp, #1280]
	str	r0, [sp, #1276]
.L38:
	ldr	ip, [sp, #1280]
	cmp	r4, #0
	mla	r3, r0, r3, ip
	add	r3, r3, #4096
	asr	r3, r3, #13
	mul	r3, r1, r3
	ldr	r1, [sp, #396]
	add	r3, r3, #16
	asr	r3, r3, #5
	str	r3, [fp, r1]
	mvnlt	r1, #0
	bge	.L40
.L39:
	movw	r0, #12868
	cmp	r2, r0
	rsbgt	r2, r2, #25600
	addgt	r2, r2, #136
	cmp	r2, #2144
	ble	.L83
	cmp	r2, #4288
	ble	.L84
	movw	r0, #6433
	cmp	r2, r0
	ble	.L85
	movw	r0, #8578
	cmp	r2, r0
	ble	.L86
	movw	r0, #9650
	cmp	r2, r0
	bgt	.L112
	movw	r0, #56950
	movw	ip, #3621
	movt	r0, 412
	str	r0, [sp, #1328]
	str	ip, [sp, #1324]
	mov	r0, ip
	b	.L43
.L119:
	.align	2
.L118:
	.word	.LANCHOR0+32
.L36:
	mvn	r3, #255
	ldr	r2, [sp, #396]
	cmp	r4, #0
	str	r3, [fp, r2]
	blt	.L91
.L40:
	movw	r2, #12868
	cmp	r4, r2
	beq	.L113
	movw	r2, #25736
	cmp	r4, r2
	movne	r2, r4
	movne	r1, #1
	bne	.L39
.L91:
	mov	r4, #0
	mov	r2, r4
.L41:
	add	r1, sp, #1616
	add	r1, r1, #8
	vld4.32	{d16, d18, d20, d22}, [r1:64]
	add	r1, sp, #1648
	add	r1, r1, #8
	vld4.32	{d17, d19, d21, d23}, [r1:64]
	add	r1, sp, #1744
	add	r1, r1, #8
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1760
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1776
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1792
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1744
	add	r1, r1, #8
	vld4.32	{d8, d10, d12, d14}, [r1:64]
	add	r1, sp, #1360
	add	r1, r1, #8
	vld4.32	{d16, d18, d20, d22}, [r1:64]
	add	r1, sp, #8
	vstmia	r1, {d16-d23}
	ldr	r1, [sp, #1268]
	vld4.32	{d0, d2, d4, d6}, [r10]
	str	r4, [r1, r9, lsl #2]
	ldr	r1, [sp, #392]
	ldr	r0, [sp, #1052]
	str	r2, [fp, r1]
	str	r3, [fp, r8, lsl #2]
	add	r3, sp, #1776
	add	r3, r3, #8
	vld4.32	{d9, d11, d13, d15}, [r3:64]
	ldr	r3, [sp, #1048]
	add	r2, sp, #1392
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, sp, #8
	vldmia	r3, {d24-d31}
	add	r2, r2, #8
	vld4.32	{d25, d27, d29, d31}, [r2:64]
	ldr	r2, [sp, #1256]
	vstmia	r3, {d24-d31}
	vld4.32	{d1, d3, d5, d7}, [r2]
	vmov	q15, q3  @ ti
	vldr	d6, [sp, #8]
	vldr	d7, [sp, #16]
	vld4.32	{d17, d19, d21, d23}, [r0]
	vmov	q12, q0  @ ti
	vmov	q13, q1  @ ti
	vmov	q14, q2  @ ti
	vmov.32	r0, d6[0]
	vmov.32	r1, d6[1]
	vld4.32	{d0, d2, d4, d6}, [fp:64]
	add	r4, sp, #1712
	add	r4, r4, #8
	vld4.32	{d1, d3, d5, d7}, [r4:64]
	add	r4, sp, #1616
	add	r3, sp, #480
	add	r4, r4, #8
	vstmia	r3, {d0-d7}
	vld4.32	{d0, d2, d4, d6}, [r4:64]
	add	r4, sp, #1648
	add	r4, r4, #8
	vld4.32	{d1, d3, d5, d7}, [r4:64]
	add	r3, sp, #400
	vstmia	r3, {d0-d7}
	vmov	q1, q13  @ ti
	vmov	q0, q12  @ ti
	vmov	q2, q14  @ ti
	vmov	q3, q15  @ ti
	add	r4, sp, #1104
	add	r3, sp, #72
	vstmia	r3, {d0-d7}
	vmov.32	lr, d8[0]
	vldr	d3, [r4]
	vmov.32	d3[0], lr
	add	lr, sp, #1104
	add	lr, lr, #8
	vmov.32	ip, d8[1]
	vldr	d2, [lr]
	vmov.32	d2[0], ip
	add	ip, sp, #544
	vstmia	ip, {d16-d23}
	vmov	q3, q8  @ v4si
	vldr	d17, [sp, #744]
	vmov.32	d17[0], r0
	add	r0, sp, #1136
	add	r0, r0, #8
	vmov	q2, q9  @ v4si
	vmov	q15, q9  @ v4si
	vmov.32	r2, d24[0]
	vldr	d18, [r0]
	vmov.32	r3, d24[1]
	vldr	d19, [sp, #864]
	vldr	d20, [sp, #872]
	vstr	d17, [sp, #744]
	vldr	d16, [sp, #8]
	vldr	d17, [sp, #16]
	vmov.32	d18[0], r1
	vstr	d2, [lr]
	mov	r1, r0
	vmov.32	d19[0], r2
	vmov.32	d20[0], r3
	vmov.32	lr, d17[0]
	vldr	d16, [sp, #24]
	vldr	d17, [sp, #32]
	add	r3, sp, #72
	vmov	d27, d18  @ v2si
	vstr	d18, [r1]
	vmov.32	ip, d16[0]
	vmov.32	r0, d16[1]
	vstr	d19, [sp, #864]
	vstr	d20, [sp, #872]
	vldmia	r3, {d16-d23}
	add	r7, sp, #1072
	vst1.64	{d6-d7}, [r7:64]
	vmov.32	r2, d18[0]
	vmov.32	r3, d18[1]
	vmov	q9, q3  @ v4si
	add	r7, sp, #1120
	vmov.32	r6, d9[0]
	vldr	d21, [r7]
	vmov.32	r5, d10[0]
	vmul.i32	q9, q9, d3[0]
	vstr	d3, [r4]
	vmov.32	r1, d17[0]
	vmov.32	r4, d10[1]
	vmul.i32	q8, q2, d2[0]
	vldr	d22, [sp, #648]
	vldr	d23, [sp, #656]
	vldr	d5, [sp, #752]
	vldr	d3, [sp, #768]
	vldr	d2, [sp, #776]
	vldr	d1, [sp, #880]
	vmov.32	d21[0], r6
	mov	r6, r7
	vmov.32	d22[0], r5
	vmov.32	d23[0], r4
	vmov.32	d5[0], lr
	vmov.32	d3[0], ip
	vmov.32	d2[0], r0
	vmov.32	d1[0], r1
	vstr	d21, [r6]
	add	r6, sp, #464
	vst1.32	{d9[1]}, [r6]
	vmov	d26, d21  @ v2si
	vstr	d22, [sp, #648]
	vstr	d23, [sp, #656]
	vstr	d5, [sp, #752]
	vstr	d3, [sp, #768]
	vstr	d2, [sp, #776]
	vstr	d1, [sp, #880]
	vldr	d20, [sp, #896]
	vldr	d21, [sp, #904]
	vmov.32	d20[0], r2
	vmov.32	d21[0], r3
	vstr	d20, [sp, #896]
	vstr	d21, [sp, #904]
	vldr	d20, [sp, #8]
	vldr	d21, [sp, #16]
	vmov.32	r5, d21[1]
	vldr	d20, [sp, #24]
	vldr	d21, [sp, #32]
	add	r3, sp, #72
	vldmia	r3, {d0-d7}
	vmov.32	r4, d21[0]
	vldr	d20, [sp, #40]
	vldr	d21, [sp, #48]
	add	r3, sp, #4
	vst1.32	{d4[1]}, [r3]
	vmov.32	r1, d3[0]
	vmov.32	lr, d20[0]
	vmov.32	ip, d20[1]
	vldr	d3, [sp, #800]
	vrshr.s32	q10, q9, #8
	vldr	d18, [sp, #640]
	add	r3, sp, #464
	vld1.32	{d18[0]}, [r3]
	vmov.32	d3[0], lr
	vmov.32	r8, d11[0]
	vmov.32	r0, d1[1]
	vmov.32	r2, d4[0]
	vmov.32	r7, d12[0]
	vmov.32	r6, d12[1]
	vldr	d19, [sp, #664]
	vldr	d22, [sp, #680]
	vldr	d23, [sp, #688]
	vldr	d6, [sp, #760]
	vldr	d5, [sp, #784]
	vldr	d2, [sp, #808]
	vldr	d1, [sp, #888]
	vstr	d18, [sp, #640]
	vstr	d3, [sp, #800]
	vldr	d18, [sp, #912]
	vldr	d3, [sp, #928]
	vmov.32	d19[0], r8
	vmov.32	d22[0], r7
	vmov.32	d23[0], r6
	vmov.32	d6[0], r5
	vmov.32	d5[0], r4
	vmov.32	d2[0], ip
	vmov.32	d1[0], r0
	vmov.32	d18[0], r1
	vmov.32	d3[0], r2
	add	r8, sp, #1056
	vst1.32	{d11[1]}, [r8]
	vstr	d19, [sp, #664]
	vstr	d22, [sp, #680]
	vstr	d23, [sp, #688]
	vstr	d6, [sp, #760]
	vstr	d5, [sp, #784]
	vstr	d2, [sp, #808]
	vstr	d1, [sp, #888]
	vstr	d18, [sp, #912]
	vstr	d3, [sp, #928]
	vldr	d19, [sp, #936]
	add	r3, sp, #4
	vld1.32	{d19[0]}, [r3]
	add	r3, sp, #480
	vldmia	r3, {d0-d7}
	add	r3, sp, #400
	vmov	q11, q0  @ v4si
	vstr	d2, [sp, #608]
	vstr	d3, [sp, #616]
	vldmia	r3, {d0-d7}
	add	r3, sp, #72
	vstr	d19, [sp, #936]
	vstr	d0, [sp, #464]
	vstr	d1, [sp, #472]
	vmov	q9, q1  @ v4si
	vldmia	r3, {d0-d7}
	vrshr.s32	q8, q8, #8
	add	r3, sp, #4
	vst1.32	{d6[1]}, [r3]
	vadd.i32	q10, q10, q8
	vmov.32	r8, d13[0]
	vldr	d16, [sp, #672]
	vldr	d17, [sp, #696]
	add	r3, sp, #544
	vmov.32	r0, d3[1]
	vmov.32	r1, d5[0]
	vmov.32	r2, d6[0]
	vldmia	r3, {d0-d7}
	add	r3, sp, #1056
	vld1.32	{d16[0]}, [r3]
	vldr	d24, [sp, #24]
	vldr	d25, [sp, #32]
	vmov.32	d17[0], r8
	vmov.32	r7, d14[0]
	vmov.32	r6, d14[1]
	vmov.32	r5, d25[1]
	vstr	d16, [sp, #672]
	vldr	d24, [sp, #40]
	vldr	d25, [sp, #48]
	vldr	d16, [sp, #712]
	vstr	d17, [sp, #696]
	vldr	d17, [sp, #720]
	vmov.32	r4, d25[0]
	vmov.32	d16[0], r7
	vldr	d24, [sp, #56]
	vldr	d25, [sp, #64]
	vmov.32	d17[0], r6
	vmov.32	lr, d24[0]
	vmov.32	ip, d24[1]
	vmov	q14, q10  @ v4si
	vstr	d6, [sp, #544]
	vstr	d7, [sp, #552]
	vmov	q10, q2  @ v4si
	vldr	d6, [sp, #792]
	vldr	d5, [sp, #816]
	vstr	d16, [sp, #712]
	vstr	d17, [sp, #720]
	vldr	d16, [sp, #832]
	vldr	d17, [sp, #840]
	vmov.32	d16[0], lr
	vmov.32	d17[0], ip
	vmov.32	d6[0], r5
	vmov.32	d5[0], r4
	vstr	d20, [sp, #624]
	vstr	d21, [sp, #632]
	vstr	d5, [sp, #816]
	vstr	d16, [sp, #832]
	vstr	d17, [sp, #840]
	vstr	d6, [sp, #792]
	vldr	d6, [sp, #920]
	vldr	d16, [sp, #40]
	vldr	d17, [sp, #48]
	vmov.32	d6[0], r0
	vmov.32	r0, d17[1]
	vldr	d16, [sp, #968]
	add	r3, sp, #4
	vld1.32	{d16[0]}, [r3]
	vmov	d7, d26  @ v2si
	vstr	d16, [sp, #968]
	vmul.i32	q10, q10, d7[0]
	vldr	d16, [sp, #56]
	vldr	d17, [sp, #64]
	vldr	d7, [sp, #744]
	vmov.32	ip, d17[0]
	vmul.i32	q8, q11, d7[0]
	add	r3, sp, #1056
	vst1.64	{d22-d23}, [r3:64]
	vmov	d7, d27  @ v2si
	vrshr.s32	q11, q8, #8
	vldr	d16, [sp, #608]
	vldr	d17, [sp, #616]
	vmul.i32	q8, q8, d7[0]
	vrshr.s32	q8, q8, #8
	vldr	d5, [sp, #944]
	vldr	d4, [sp, #960]
	vadd.i32	q8, q11, q8
	add	r3, sp, #1152
	vst1.64	{d16-d17}, [r3:64]
	vmov.32	d5[0], r1
	vmov.32	d4[0], r2
	add	r3, sp, #480
	vstr	d6, [sp, #920]
	vstr	d5, [sp, #944]
	vstr	d4, [sp, #960]
	vldmia	r3, {d0-d7}
	vldr	d16, [sp, #464]
	vldr	d17, [sp, #472]
	vstr	d6, [sp, #480]
	vstr	d7, [sp, #488]
	vldr	d7, [sp, #864]
	vmul.i32	q11, q8, d7[0]
	vldr	d7, [sp, #872]
	vmul.i32	q8, q9, d7[0]
	add	r3, sp, #400
	vmov	q13, q2  @ v4si
	vrshr.s32	q10, q10, #8
	vldmia	r3, {d0-d7}
	vrshr.s32	q11, q11, #8
	vrshr.s32	q8, q8, #8
	add	r3, sp, #72
	vadd.i32	q8, q11, q8
	vstr	d6, [sp, #400]
	vstr	d7, [sp, #408]
	vmov	q11, q2  @ v4si
	vldmia	r3, {d0-d7}
	vadd.i32	q1, q14, q10
	add	lr, sp, #1120
	add	lr, lr, #8
	vmov.32	r3, d7[0]
	vst1.64	{d2-d3}, [lr:64]
	vldr	d7, [sp, #640]
	vldr	d2, [sp, #544]
	vldr	d3, [sp, #552]
	vmul.i32	q10, q1, d7[0]
	vmov.32	r1, d15[0]
	vrshr.s32	q3, q10, #8
	vldr	d0, [sp, #704]
	vldr	d21, [sp, #728]
	vmov.32	r8, d13[1]
	vldr	d9, [sp, #824]
	vmov.32	d21[0], r1
	vmov.32	d9[0], r0
	vmov.32	d0[0], r8
	add	lr, sp, #1088
	vst1.64	{d6-d7}, [lr:64]
	vstr	d0, [sp, #704]
	vstr	d21, [sp, #728]
	vstr	d9, [sp, #824]
	vldr	d10, [sp, #848]
	vmov.32	d10[0], ip
	add	ip, sp, #1072
	vld1.64	{d24-d25}, [ip:64]
	vldr	d7, [sp, #648]
	vstr	d10, [sp, #848]
	vmul.i32	q5, q12, d7[0]
	vldr	d7, [sp, #656]
	vmov.32	r2, d5[1]
	vmov	q2, q15  @ v4si
	vmul.i32	q15, q15, d7[0]
	vldr	d7, [sp, #752]
	add	ip, sp, #1056
	vld1.64	{d0-d1}, [ip:64]
	vldr	d20, [sp, #56]
	vldr	d21, [sp, #64]
	vmul.i32	q14, q13, d7[0]
	vldr	d7, [sp, #768]
	vldr	d12, [sp, #608]
	vldr	d13, [sp, #616]
	vmov.32	r0, d21[1]
	vmul.i32	q10, q0, d7[0]
	vldr	d7, [sp, #776]
	vmul.i32	q4, q6, d7[0]
	vldr	d7, [sp, #880]
	vrshr.s32	q15, q15, #8
	vrshr.s32	q5, q5, #8
	vmov.32	r1, d15[1]
	vrshr.s32	q10, q10, #8
	vmov	q7, q13  @ v4si
	vrshr.s32	q4, q4, #8
	vmul.i32	q13, q11, d7[0]
	add	ip, sp, #1152
	vrshr.s32	q14, q14, #8
	vadd.i32	q5, q5, q15
	vld1.64	{d30-d31}, [ip:64]
	vrshr.s32	q13, q13, #8
	vadd.i32	q4, q10, q4
	vldr	d7, [sp, #896]
	vldr	d20, [sp, #464]
	vldr	d21, [sp, #472]
	vadd.i32	q15, q15, q14
	vadd.i32	q8, q8, q13
	vldr	d29, [sp, #976]
	vmul.i32	q10, q10, d7[0]
	vldr	d7, [sp, #904]
	add	ip, sp, #1056
	vst1.64	{d30-d31}, [ip:64]
	add	ip, sp, #1072
	vst1.64	{d8-d9}, [ip:64]
	add	ip, sp, #1152
	vst1.64	{d16-d17}, [ip:64]
	vmov.32	d29[0], r3
	vmul.i32	q8, q9, d7[0]
	vldr	d27, [sp, #952]
	vldr	d7, [sp, #664]
	vrshr.s32	q10, q10, #8
	vrshr.s32	q8, q8, #8
	vstr	d29, [sp, #976]
	vldr	d28, [sp, #624]
	vldr	d29, [sp, #632]
	vmov.32	d27[0], r2
	vstr	d18, [sp, #8]
	vstr	d19, [sp, #16]
	vadd.i32	q9, q10, q8
	vmul.i32	q10, q14, d7[0]
	vldr	d7, [sp, #680]
	vstr	d27, [sp, #952]
	vmul.i32	q13, q12, d7[0]
	vldr	d7, [sp, #712]
	vmul.i32	q15, q12, d7[0]
	vldr	d7, [sp, #688]
	vmul.i32	q1, q2, d7[0]
	vldr	d7, [sp, #720]
	add	r2, sp, #1168
	vst1.64	{d18-d19}, [r2:64]
	vldr	d16, [sp, #120]
	vldr	d17, [sp, #128]
	vmul.i32	q2, q2, d7[0]
	vldr	d8, [sp, #480]
	vldr	d9, [sp, #488]
	vldr	d7, [sp, #760]
	vmov.32	r3, d17[1]
	vmul.i32	q8, q4, d7[0]
	vldr	d7, [sp, #784]
	vmul.i32	q4, q7, d7[0]
	vldr	d7, [sp, #800]
	vmul.i32	q14, q0, d7[0]
	vldr	d7, [sp, #832]
	vmul.i32	q12, q0, d7[0]
	vldr	d1, [sp, #840]
	vldr	d7, [sp, #808]
	add	r2, sp, #1120
	add	r2, r2, #8
	vmul.i32	q9, q6, d1[0]
	vmul.i32	q3, q6, d7[0]
	vld1.64	{d0-d1}, [r2:64]
	vld1.64	{d12-d13}, [lr:64]
	vstr	d14, [sp, #72]
	vstr	d15, [sp, #80]
	vadd.i32	q6, q0, q6
	vldr	d14, [sp, #400]
	vldr	d15, [sp, #408]
	vldr	d1, [sp, #888]
	vrshr.s32	q10, q10, #8
	vrshr.s32	q13, q13, #8
	vmul.i32	q7, q7, d1[0]
	vrshr.s32	q1, q1, #8
	vldr	d1, [sp, #912]
	vadd.i32	q1, q13, q1
	vstr	d12, [sp, #136]
	vstr	d13, [sp, #144]
	vadd.i32	q5, q5, q10
	vmul.i32	q6, q11, d1[0]
	vldr	d20, [sp, #544]
	vldr	d21, [sp, #552]
	vldr	d1, [sp, #672]
	vldr	d26, [sp, #464]
	vldr	d27, [sp, #472]
	vstr	d2, [sp, #608]
	vstr	d3, [sp, #616]
	vmul.i32	q10, q10, d1[0]
	vldr	d3, [sp, #928]
	vldr	d1, [sp, #960]
	vmul.i32	q1, q13, d3[0]
	vmul.i32	q13, q13, d1[0]
	vrshr.s32	q0, q15, #8
	vldr	d31, [sp, #736]
	vmov.32	d31[0], r1
	add	r2, sp, #1056
	vrshr.s32	q8, q8, #8
	vstr	d31, [sp, #736]
	vld1.64	{d30-d31}, [r2:64]
	vstr	d0, [sp, #464]
	vstr	d1, [sp, #472]
	vadd.i32	q15, q15, q8
	vldr	d1, [sp, #936]
	vldr	d16, [sp, #8]
	vldr	d17, [sp, #16]
	vstr	d30, [sp, #200]
	vstr	d31, [sp, #208]
	vmul.i32	q15, q8, d1[0]
	vldr	d1, [sp, #968]
	add	r2, sp, #1072
	vrshr.s32	q14, q14, #8
	vrshr.s32	q3, q3, #8
	vmul.i32	q8, q8, d1[0]
	vrshr.s32	q4, q4, #8
	vld1.64	{d0-d1}, [r2:64]
	vadd.i32	q4, q0, q4
	vadd.i32	q0, q14, q3
	vldr	d29, [sp, #856]
	vmov.32	d29[0], r0
	add	r2, sp, #1056
	vst1.64	{d0-d1}, [r2:64]
	vrshr.s32	q7, q7, #8
	vstr	d29, [sp, #856]
	vld1.64	{d6-d7}, [ip:64]
	vadd.i32	q3, q3, q7
	add	r2, sp, #1168
	vrshr.s32	q6, q6, #8
	vstr	d6, [sp, #264]
	vstr	d7, [sp, #272]
	vld1.64	{d6-d7}, [r2:64]
	vadd.i32	q3, q3, q6
	add	r2, sp, #1072
	vst1.64	{d6-d7}, [r2:64]
	vldr	d28, [sp, #624]
	vldr	d29, [sp, #632]
	vldr	d7, [sp, #696]
	vrshr.s32	q8, q8, #8
	vrshr.s32	q1, q1, #8
	vrshr.s32	q15, q15, #8
	vstr	d16, [sp, #8]
	vstr	d17, [sp, #16]
	vadd.i32	q15, q1, q15
	vldr	d17, [sp, #984]
	vmul.i32	q1, q14, d7[0]
	vldr	d7, [sp, #728]
	vmov.32	d17[0], r3
	vst1.64	{d30-d31}, [lr:64]
	vmul.i32	q14, q14, d7[0]
	vldr	d30, [sp, #480]
	vldr	d31, [sp, #488]
	vldr	d7, [sp, #792]
	vldr	d12, [sp, #848]
	vmul.i32	q7, q15, d7[0]
	vstr	d17, [sp, #984]
	vldr	d7, [sp, #816]
	vldr	d16, [sp, #72]
	vldr	d17, [sp, #80]
	vldr	d0, [sp, #400]
	vldr	d1, [sp, #408]
	vmul.i32	q3, q8, d7[0]
	vmul.i32	q8, q8, d12[0]
	vldr	d12, [sp, #920]
	vrshr.s32	q10, q10, #8
	vmul.i32	q6, q0, d12[0]
	vldr	d1, [sp, #944]
	vadd.i32	q5, q5, q10
	vmul.i32	q15, q11, d1[0]
	vldr	d1, [sp, #976]
	vldr	d20, [sp, #544]
	vldr	d21, [sp, #552]
	vmul.i32	q11, q11, d1[0]
	vstr	d10, [sp, #152]
	vstr	d11, [sp, #160]
	vldr	d1, [sp, #704]
	vldr	d10, [sp, #608]
	vldr	d11, [sp, #616]
	vrshr.s32	q1, q1, #8
	vrshr.s32	q2, q2, #8
	vadd.i32	q1, q5, q1
	vmul.i32	q5, q10, d1[0]
	vldr	d0, [sp, #464]
	vldr	d1, [sp, #472]
	vrshr.s32	q7, q7, #8
	vadd.i32	q2, q0, q2
	vldr	d1, [sp, #736]
	add	r3, sp, #1056
	vadd.i32	q4, q4, q7
	vmul.i32	q10, q10, d1[0]
	vrshr.s32	q3, q3, #8
	vld1.64	{d0-d1}, [r3:64]
	vrshr.s32	q12, q12, #8
	vadd.i32	q3, q0, q3
	vstr	d8, [sp, #216]
	vstr	d9, [sp, #224]
	vldr	d1, [sp, #824]
	vldr	d8, [sp, #480]
	vldr	d9, [sp, #488]
	vrshr.s32	q9, q9, #8
	vadd.i32	q9, q12, q9
	vmul.i32	q12, q4, d1[0]
	vldr	d1, [sp, #856]
	add	r3, sp, #1072
	vrshr.s32	q6, q6, #8
	vmul.i32	q4, q4, d1[0]
	vld1.64	{d0-d1}, [r3:64]
	vadd.i32	q0, q0, q6
	vrshr.s32	q15, q15, #8
	vstr	d0, [sp, #280]
	vstr	d1, [sp, #288]
	vldr	d14, [sp, #400]
	vldr	d15, [sp, #408]
	vld1.64	{d12-d13}, [lr:64]
	vldr	d1, [sp, #952]
	vadd.i32	q15, q6, q15
	vmul.i32	q0, q7, d1[0]
	vldr	d12, [sp, #8]
	vldr	d13, [sp, #16]
	vrshr.s32	q13, q13, #8
	vrshr.s32	q0, q0, #8
	vadd.i32	q13, q13, q6
	vrshr.s32	q14, q14, #8
	vldr	d12, [sp, #984]
	vrshr.s32	q8, q8, #8
	vadd.i32	q14, q2, q14
	vrshr.s32	q4, q4, #8
	vrshr.s32	q5, q5, #8
	vrshr.s32	q11, q11, #8
	vmul.i32	q6, q7, d12[0]
	vrshr.s32	q10, q10, #8
	vadd.i32	q8, q9, q8
	vadd.i32	q9, q15, q0
	vadd.i32	q8, q8, q4
	vadd.i32	q1, q1, q5
	vstr	d18, [sp, #296]
	vstr	d19, [sp, #304]
	vadd.i32	q13, q13, q11
	vrshr.s32	q6, q6, #8
	vadd.i32	q9, q14, q10
	vrshr.s32	q12, q12, #8
	vstr	d2, [sp, #168]
	vstr	d3, [sp, #176]
	vstr	d16, [sp, #248]
	vstr	d17, [sp, #256]
	vstr	d18, [sp, #184]
	vstr	d19, [sp, #192]
	vadd.i32	q8, q13, q6
	vadd.i32	q12, q3, q12
	vld4.32	{d0, d2, d4, d6}, [fp:64]
	add	r3, sp, #136
	vstr	d16, [sp, #312]
	vstr	d17, [sp, #320]
	vldmia	r3, {d16-d23}
	vstr	d24, [sp, #232]
	vstr	d25, [sp, #240]
	add	ip, sp, #1712
	add	ip, ip, #8
	vld4.32	{d1, d3, d5, d7}, [ip:64]
	add	ip, sp, #1424
	add	ip, ip, #8
	vst4.32	{d16, d18, d20, d22}, [ip:64]
	add	ip, sp, #1456
	add	ip, ip, #8
	add	r3, sp, #200
	vst4.32	{d17, d19, d21, d23}, [ip:64]
	vldmia	r3, {d16-d23}
	add	ip, sp, #1552
	add	ip, ip, #8
	vst4.32	{d16, d18, d20, d22}, [ip:64]
	add	ip, sp, #1584
	add	ip, ip, #8
	add	r3, sp, #264
	vst4.32	{d17, d19, d21, d23}, [ip:64]
	vldmia	r3, {d16-d23}
	add	ip, sp, #1488
	add	ip, ip, #8
	vst4.32	{d16, d18, d20, d22}, [ip:64]
	add	ip, sp, #1808
	add	ip, ip, #8
	vst1.32	{d0-d1}, [ip:64]
	add	ip, sp, #1824
	add	ip, ip, #8
	vst1.32	{d2-d3}, [ip:64]
	add	ip, sp, #1840
	add	ip, ip, #8
	vst1.32	{d4-d5}, [ip:64]
	add	ip, sp, #1856
	add	ip, ip, #8
	vst1.32	{d6-d7}, [ip:64]
	add	ip, sp, #1520
	add	ip, ip, #8
	vst4.32	{d17, d19, d21, d23}, [ip:64]
	add	ip, sp, #1808
	add	ip, ip, #8
	vld4.32	{d16, d18, d20, d22}, [ip:64]
	add	ip, sp, #1488
	add	ip, ip, #8
	vld4.32	{d0, d2, d4, d6}, [ip:64]
	add	ip, sp, #1840
	add	ip, ip, #8
	vld4.32	{d17, d19, d21, d23}, [ip:64]
	add	r1, sp, #1184
	vldr	d24, [r1]
	vmov.32	r2, d16[0]
	vmov.32	d24[0], r2
	add	ip, sp, #1520
	add	r2, sp, #1184
	add	r2, r2, #8
	add	ip, ip, #8
	vld4.32	{d1, d3, d5, d7}, [ip:64]
	vmov.32	r3, d16[1]
	vstr	d24, [r1]
	vldr	d25, [r2]
	add	r0, sp, #1200
	vldr	d12, [r0]
	vmov.32	d25[0], r3
	vmov.32	r1, d17[0]
	vmov.32	r3, d18[1]
	vmov	d8, d24  @ v2si
	vldr	d24, [sp, #992]
	vmov.32	d12[0], r1
	vmov.32	d24[0], r3
	add	r1, sp, #1216
	vldr	d13, [r1]
	vstr	d25, [r2]
	vmov.32	r2, d18[0]
	add	ip, sp, #1200
	add	ip, ip, #8
	vstr	d12, [r0]
	vmul.i32	q5, q0, d8[0]
	vmov.32	r0, d17[1]
	vstr	d24, [sp, #992]
	vmov	d8, d25  @ v2si
	vmov	q12, q2  @ v4si
	vldr	d4, [ip]
	vmov.32	d13[0], r2
	vmov.32	d4[0], r0
	add	r0, sp, #1216
	add	r0, r0, #8
	vstr	d13, [r1]
	vmov	q13, q1  @ v4si
	vmul.i32	q4, q1, d8[0]
	vmov.32	r1, d19[0]
	vldr	d3, [r0]
	vmov.32	d3[0], r1
	vmov	q14, q3  @ v4si
	vmov.32	r3, d20[1]
	vldr	d6, [sp, #1016]
	vstr	d3, [r0]
	vldr	d2, [sp, #1000]
	vmov.32	r0, d19[1]
	vmov.32	r2, d20[0]
	vrshr.s32	q5, q5, #8
	vrshr.s32	q4, q4, #8
	vldr	d5, [sp, #1008]
	vmov.32	d6[0], r3
	vldr	d7, [sp, #992]
	vmov.32	d2[0], r0
	add	r0, sp, #1024
	vmov	q15, q0  @ v4si
	vmov.32	d5[0], r2
	vstr	d6, [sp, #1016]
	vmov.32	r2, d21[0]
	vmul.i32	q0, q13, d7[0]
	vadd.i32	q3, q5, q4
	vldr	d8, [r0]
	vmov.32	d8[0], r2
	vstr	d8, [r0]
	add	r0, sp, #1024
	add	r0, r0, #8
	vldr	d9, [r0]
	vmov.32	r1, d22[0]
	vmov.32	d9[0], r1
	add	r1, sp, #1040
	vldr	d10, [r1]
	vmov.32	r3, d22[1]
	vmul.i32	q7, q12, d12[0]
	vmov.32	d10[0], r3
	vmul.i32	q6, q15, d13[0]
	vstr	d10, [r1]
	vrshr.s32	q6, q6, #8
	vrshr.s32	q0, q0, #8
	vstr	d9, [r0]
	add	r1, sp, #1232
	vadd.i32	q0, q6, q0
	vmov.32	r2, d21[1]
	vldr	d13, [r1]
	vstr	d5, [sp, #1008]
	vldr	d12, [r0]
	vldr	d5, [sp, #1008]
	vrshr.s32	q7, q7, #8
	vmov.32	d13[0], r2
	add	r2, sp, #1040
	vmul.i32	q4, q15, d5[0]
	vmul.i32	q15, q15, d12[0]
	vldr	d12, [r2]
	add	r2, sp, #1232
	add	r2, r2, #8
	vmov.32	r3, d23[0]
	vadd.i32	q3, q3, q7
	vldr	d14, [r2]
	vldr	d5, [sp, #1016]
	vmov.32	d14[0], r3
	vstr	d4, [ip]
	vmul.i32	q5, q14, d4[0]
	vstr	d2, [sp, #1000]
	vmul.i32	q2, q13, d5[0]
	vmul.i32	q1, q12, d3[0]
	vstr	d13, [r1]
	vmul.i32	q13, q13, d12[0]
	vstr	d14, [r2]
	vldr	d12, [sp, #1000]
	add	r2, sp, #1024
	vmul.i32	q10, q14, d12[0]
	vrshr.s32	q5, q5, #8
	vldr	d12, [r2]
	vrshr.s32	q1, q1, #8
	add	r2, sp, #1248
	vmov.32	r3, d23[1]
	vadd.i32	q9, q3, q5
	vadd.i32	q1, q0, q1
	vmul.i32	q8, q12, d12[0]
	vldr	d1, [r2]
	vrshr.s32	q4, q4, #8
	vrshr.s32	q2, q2, #8
	vmov.32	d1[0], r3
	vstr	d18, [sp, #328]
	vstr	d19, [sp, #336]
	vadd.i32	q2, q4, q2
	vmul.i32	q9, q14, d13[0]
	vrshr.s32	q15, q15, #8
	vrshr.s32	q8, q8, #8
	vrshr.s32	q13, q13, #8
	vmul.i32	q12, q12, d14[0]
	add	ip, sp, #1552
	add	ip, ip, #8
	vld1.32	{d6-d7}, [ip:64]
	add	ip, sp, #1568
	add	ip, ip, #8
	vld1.32	{d22-d23}, [ip:64]
	vadd.i32	q8, q2, q8
	vrshr.s32	q9, q9, #8
	vadd.i32	q13, q15, q13
	vrshr.s32	q12, q12, #8
	vmul.i32	q14, q14, d1[0]
	vrshr.s32	q10, q10, #8
	add	ip, sp, #1376
	add	ip, ip, #8
	vst1.32	{d22-d23}, [ip:64]
	vadd.i32	q8, q8, q9
	vadd.i32	q13, q13, q12
	vrshr.s32	q14, q14, #8
	vadd.i32	q10, q1, q10
	add	r3, sp, #1360
	add	ip, sp, #1584
	add	r3, r3, #8
	add	ip, ip, #8
	vld1.32	{d22-d23}, [ip:64]
	vst1.32	{d6-d7}, [r3:64]
	vstr	d16, [sp, #360]
	vstr	d17, [sp, #368]
	add	ip, sp, #1600
	vadd.i32	q8, q13, q14
	add	ip, ip, #8
	vstr	d20, [sp, #344]
	vstr	d21, [sp, #352]
	vld1.32	{d20-d21}, [ip:64]
	add	ip, sp, #1392
	add	ip, ip, #8
	vstr	d1, [r2]
	vstr	d16, [sp, #376]
	vstr	d17, [sp, #384]
	vld4.32	{d0, d2, d4, d6}, [r3:64]
	vst1.32	{d22-d23}, [ip:64]
	add	ip, sp, #1408
	add	ip, ip, #8
	vst1.32	{d20-d21}, [ip:64]
	add	r3, sp, #328
	vldmia	r3, {d24-d31}
	add	ip, sp, #1392
	add	ip, ip, #8
	vld4.32	{d1, d3, d5, d7}, [ip:64]
	add	ip, sp, #1424
	add	ip, ip, #8
	vld1.32	{d22-d23}, [ip:64]
	add	ip, sp, #1440
	add	ip, ip, #8
	vld1.32	{d20-d21}, [ip:64]
	add	ip, sp, #1456
	add	ip, ip, #8
	vld1.32	{d18-d19}, [ip:64]
	add	ip, sp, #1472
	add	ip, ip, #8
	vld1.32	{d16-d17}, [ip:64]
	ldr	r2, [sp, #1256]
	vst4.32	{d24, d26, d28, d30}, [r10]
	vst4.32	{d25, d27, d29, d31}, [r2]
	ldr	r2, [sp, #1292]
	ldr	r1, [sp, #392]
	vst1.32	{d0-d1}, [r2]
	ldr	r2, [sp, #1296]
	add	r1, r1, #16
	str	r1, [sp, #392]
	vst1.32	{d2-d3}, [r2]
	ldr	r2, [sp, #1304]
	ldr	r3, [sp, #1048]
	vst1.32	{d4-d5}, [r2]
	ldr	r2, [sp, #1300]
	add	r9, r9, #1
	vst1.32	{d6-d7}, [r2]
	vst1.32	{d22-d23}, [r3]
	ldr	r3, [sp, #1308]
	ldr	r0, [sp, #1052]
	vst1.32	{d20-d21}, [r3]
	ldr	r3, [sp, #1312]
	cmp	r9, #4
	vst1.32	{d18-d19}, [r0]
	vst1.32	{d16-d17}, [r3]
	bne	.L3
	ldr	r2, [sp, #1268]
	ldr	r3, [sp, #1340]
	add	r2, r2, #16
	str	r2, [sp, #1268]
	ldr	r2, [sp, #1264]
	cmp	r3, #3
	add	r2, r2, #16
	str	r2, [sp, #1264]
	ldr	r2, [sp, #1260]
	add	r2, r2, #4
	str	r2, [sp, #1260]
	ldr	r2, [sp, #396]
	add	r2, r2, #20
	str	r2, [sp, #396]
	bne	.L47
	ldr	r3, [sp, #1352]
	mov	r6, r10
	subs	r3, r3, #1
	str	r3, [sp, #1352]
	bne	.L2
	add	sp, sp, #1872
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L16:
	mov	r3, r1
	lsl	r1, r7, #14
	mov	r2, r0
	orr	r1, r1, r6, lsr #18
	lsl	r0, r6, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L114
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r3, #10551
	ldrhi	r2, [sp, #1348]
	mulls	r3, r3, r0
	mlahi	r0, r3, r0, r2
	addls	r3, r3, #8192
	asrls	r3, r3, #14
	asrhi	r3, r0, #14
	cmp	r3, #0
	bge	.L20
	ldr	r2, [sp, #1356]
	sub	r3, r2, r3
	sub	r3, r4, r3
	b	.L15
.L5:
	lsl	r1, r1, #14
	orr	r1, r1, r0, lsr #18
	mov	r2, r4
	mov	r3, r5
	lsl	r0, r0, #14
	bl	__aeabi_ldivmod
	cmp	r0, #8192
	bgt	.L115
	add	r3, r0, #8192
	cmp	r3, #16384
	movwls	r3, #15204
	movwhi	r4, #10551
	ldrhi	r3, [sp, #1348]
	mulls	r4, r3, r0
	mlahi	r4, r4, r0, r3
	addls	r4, r4, #8192
	asr	r4, r4, #14
	cmp	r4, #0
	bge	.L9
	ldr	r3, [sp, #1356]
	sub	r4, r3, r4
	b	.L4
.L34:
	mov	r2, #256
	ldr	r3, [sp, #396]
	str	r2, [fp, r3]
	mov	r2, r4
	mov	r3, #256
	b	.L41
.L24:
	mov	r0, #256
	ldr	r2, [sp, #396]
	add	r1, sp, #1616
	add	r1, r1, #8
	str	r0, [r1, r2]
	mov	r1, r3
	b	.L31
.L83:
	mov	r0, #0
	str	r0, [sp, #1328]
	movw	r0, #8099
	str	r0, [sp, #1324]
.L43:
	ldr	ip, [sp, #1328]
	mla	r2, r0, r2, ip
	add	r2, r2, #4096
	asr	r2, r2, #13
	mul	r2, r1, r2
	add	r2, r2, #16
	asr	r2, r2, #5
	rsb	r4, r2, #0
	b	.L41
.L66:
	mov	r1, #0
	str	r1, [sp, #1336]
	movw	r1, #8099
	str	r1, [sp, #1332]
.L33:
	ldr	ip, [sp, #1336]
	mla	r2, r1, r2, ip
	add	r2, r2, #4096
	asr	r2, r2, #13
	mul	r1, r3, r2
	add	r1, r1, #16
	asr	r1, r1, #5
	rsb	r3, r1, #0
	b	.L31
.L25:
	mov	r0, #0
	ldr	r2, [sp, #396]
	add	r1, sp, #1616
	add	r1, r1, #8
	cmp	r3, #0
	str	r0, [r1, r2]
	bge	.L30
	mov	r3, #256
	mvn	r1, #255
	mov	r0, #0
	b	.L31
.L35:
	mov	r2, #0
	ldr	r3, [sp, #396]
	cmp	r4, #0
	str	r2, [fp, r3]
	movge	r3, r2
	bge	.L40
	mov	r4, #256
	mvn	r2, #255
	mov	r3, #0
	b	.L41
.L58:
	movw	ip, #24316
	movw	lr, #63939
	movt	ip, 1041
	movt	lr, 65535
	str	ip, [sp, #1288]
	str	lr, [sp, #1284]
	mov	ip, lr
	b	.L28
.L75:
	movw	r0, #24316
	movw	ip, #63939
	movt	r0, 1041
	movt	ip, 65535
	str	r0, [sp, #1280]
	str	ip, [sp, #1276]
	mov	r0, ip
	b	.L38
.L114:
	movw	r3, #10551
	ldr	r2, [sp, #1344]
	mla	r0, r3, r0, r2
	asr	r3, r0, #14
.L20:
	rsb	r3, r3, #25600
	add	r3, r3, #136
	sub	r3, r4, r3
	b	.L15
.L115:
	movw	r4, #10551
	ldr	r3, [sp, #1344]
	mla	r4, r4, r0, r3
	asr	r4, r4, #14
.L9:
	rsb	r4, r4, #25600
	add	r4, r4, #136
	b	.L4
.L84:
	movw	r0, #4024
	movw	ip, #7547
	movt	r0, 18
	str	r0, [sp, #1328]
	str	ip, [sp, #1324]
	mov	r0, ip
	b	.L43
.L67:
	movw	r1, #4024
	movw	ip, #7547
	movt	r1, 18
	str	r1, [sp, #1336]
	str	ip, [sp, #1332]
	mov	r1, ip
	b	.L33
.L107:
	movw	r3, #10551
	ldr	r2, [sp, #1344]
	mla	r3, r3, r0, r2
	sub	r3, r4, r3, asr #14
	b	.L15
.L108:
	movw	r4, #10551
	ldr	r3, [sp, #1344]
	mla	r4, r4, r0, r3
	asr	r4, r4, #14
	b	.L4
.L110:
	mvn	r3, #255
	mov	r1, #256
	b	.L31
.L113:
	mvn	r4, #255
	mov	r2, #256
	b	.L41
.L59:
	movw	ip, #14343
	movw	lr, #62905
	movt	ip, 1075
	movt	lr, 65535
	str	ip, [sp, #1288]
	str	lr, [sp, #1284]
	mov	ip, lr
	b	.L28
.L76:
	movw	r0, #14343
	movw	ip, #62905
	movt	r0, 1075
	movt	ip, 65535
	str	r0, [sp, #1280]
	str	ip, [sp, #1276]
	mov	r0, ip
	b	.L38
.L68:
	movw	r1, #55398
	movw	ip, #6481
	movt	r1, 87
	str	r1, [sp, #1336]
	str	ip, [sp, #1332]
	mov	r1, ip
	b	.L33
.L85:
	movw	r0, #55398
	movw	ip, #6481
	movt	r0, 87
	str	r0, [sp, #1328]
	str	ip, [sp, #1324]
	mov	r0, ip
	b	.L43
.L60:
	movw	ip, #51152
	movw	lr, #61915
	movt	ip, 1123
	movt	lr, 65535
	str	ip, [sp, #1288]
	str	lr, [sp, #1284]
	mov	ip, lr
	b	.L28
.L77:
	movw	r0, #51152
	movw	ip, #61915
	movt	r0, 1123
	movt	ip, 65535
	str	r0, [sp, #1280]
	str	ip, [sp, #1276]
	mov	r0, ip
	b	.L38
.L69:
	movw	r1, #57628
	movw	ip, #4973
	movt	r1, 235
	str	r1, [sp, #1336]
	str	ip, [sp, #1332]
	mov	r1, ip
	b	.L33
.L86:
	movw	r0, #57628
	movw	ip, #4973
	movt	r0, 235
	str	r0, [sp, #1328]
	str	ip, [sp, #1324]
	mov	r0, ip
	b	.L43
.L61:
	movw	ip, #18046
	movw	lr, #60563
	movt	ip, 1212
	movt	lr, 65535
	str	ip, [sp, #1288]
	str	lr, [sp, #1284]
	mov	ip, lr
	b	.L28
.L78:
	movw	r0, #18046
	movw	ip, #60563
	movt	r0, 1212
	movt	ip, 65535
	str	r0, [sp, #1280]
	str	ip, [sp, #1276]
	mov	r0, ip
	b	.L38
.L112:
	movw	r0, #10722
	cmp	r2, r0
	ble	.L88
	movw	r0, #11795
	cmp	r2, r0
	ble	.L89
	movw	ip, #12868
	ldr	lr, [sp, #1360]
	cmp	r2, ip
	movw	r0, #535
	ldr	ip, [sp, #1328]
	movne	ip, lr
	str	ip, [sp, #1328]
	ldr	ip, [sp, #1324]
	movne	ip, r0
	str	ip, [sp, #1324]
	mov	r0, ip
	b	.L43
.L109:
	movw	r1, #10722
	cmp	r2, r1
	ble	.L71
	movw	r1, #11795
	cmp	r2, r1
	ble	.L72
	movw	ip, #12868
	ldr	lr, [sp, #1360]
	cmp	r2, ip
	movw	r1, #535
	ldr	ip, [sp, #1336]
	movne	ip, lr
	str	ip, [sp, #1336]
	ldr	ip, [sp, #1332]
	movne	ip, r1
	str	ip, [sp, #1332]
	mov	r1, ip
	b	.L33
.L111:
	movw	r0, #10722
	cmp	r3, r0
	bgt	.L116
	movw	r0, #57488
	movw	ip, #57989
	movt	r0, 1499
	movt	ip, 65535
	str	r0, [sp, #1280]
	str	ip, [sp, #1276]
	mov	r0, ip
	b	.L38
.L106:
	movw	ip, #10722
	cmp	r1, ip
	bgt	.L117
	movw	ip, #57488
	movw	lr, #57989
	movt	ip, 1499
	movt	lr, 65535
	str	ip, [sp, #1288]
	str	lr, [sp, #1284]
	mov	ip, lr
	b	.L28
.L71:
	movw	r1, #36307
	movw	ip, #2631
	movt	r1, 558
	str	r1, [sp, #1336]
	str	ip, [sp, #1332]
	mov	r1, ip
	b	.L33
.L88:
	movw	r0, #36307
	movw	ip, #2631
	movt	r0, 558
	str	r0, [sp, #1328]
	str	ip, [sp, #1324]
	mov	r0, ip
	b	.L43
.L117:
	movw	lr, #12868
	ldr	r5, [sp, #1364]
	cmp	r1, lr
	movw	ip, #57437
	ldr	lr, [sp, #1288]
	movne	lr, r5
	movt	ip, 65535
	str	lr, [sp, #1288]
	ldr	lr, [sp, #1284]
	movne	lr, ip
	str	lr, [sp, #1284]
	mov	ip, lr
	b	.L28
.L116:
	movw	ip, #12868
	ldr	lr, [sp, #1364]
	cmp	r3, ip
	movw	r0, #57437
	ldr	ip, [sp, #1280]
	movne	ip, lr
	movt	r0, 65535
	str	ip, [sp, #1280]
	ldr	ip, [sp, #1276]
	movne	ip, r0
	str	ip, [sp, #1276]
	mov	r0, ip
	b	.L38
.L105:
	ldr	r4, [sp, #1356]
	b	.L4
.L72:
	movw	r1, #51978
	movw	ip, #1597
	movt	r1, 727
	str	r1, [sp, #1336]
	str	ip, [sp, #1332]
	mov	r1, ip
	b	.L33
.L89:
	movw	r0, #51978
	movw	ip, #1597
	movt	r0, 727
	str	r0, [sp, #1328]
	str	ip, [sp, #1324]
	mov	r0, ip
	b	.L43
	.size	SVD_decompose, .-SVD_decompose
	.data
	.align	3
	.set	.LANCHOR0,. + 0
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
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
