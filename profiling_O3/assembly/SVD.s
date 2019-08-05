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
	.align	2
	.global	SVD_decompose
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_decompose, %function
SVD_decompose:
	@ args = 0, pretend = 0, frame = 1368
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r4, r0
	sub	sp, sp, #1360
	sub	sp, sp, #12
	mov	r5, r1
	mov	r8, r2
	str	r1, [sp, #728]
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #920
	mov	r6, r3
	str	r3, [sp, #820]
	bl	memset
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #984
	bl	memset
	add	r0, sp, #1040
	mov	r2, #64
	mov	r1, #0
	add	r0, r0, #8
	bl	memset
	mov	r3, r4
	mov	r2, r8
	vld1.32	{d16-d17}, [r3]!
	vst1.32	{d16-d17}, [r2]!
	vld1.32	{d16-d17}, [r3]
	vst1.32	{d16-d17}, [r2]
	add	r3, r4, #32
	str	r2, [sp, #852]
	movw	r2, #:lower16:.LANCHOR0
	vld1.32	{d16-d17}, [r3]
	movt	r2, #:upper16:.LANCHOR0
	add	r1, r8, #32
	vst1.32	{d16-d17}, [r1]
	str	r1, [sp, #736]
	mov	r1, r2
	add	r4, r4, #48
	vld1.32	{d16-d17}, [r1:64]!
	vld1.32	{d18-d19}, [r4]
	add	r3, r8, #48
	vst1.32	{d18-d19}, [r3]
	mov	r0, r5
	vst1.32	{d16-d17}, [r5]!
	vld1.32	{d16-d17}, [r1:64]
	vst1.32	{d16-d17}, [r5]
	add	ip, r2, #32
	vld1.32	{d16-d17}, [ip:64]
	add	lr, r0, #32
	vst1.32	{d16-d17}, [lr]
	str	lr, [sp, #732]
	add	lr, r2, #48
	vld1.32	{d16-d17}, [lr:64]
	add	r0, r0, #48
	vst1.32	{d16-d17}, [r0]
	vld1.32	{d22-d23}, [r2:64]
	vld1.32	{d20-d21}, [r1:64]
	vld1.32	{d18-d19}, [ip:64]
	vld1.32	{d16-d17}, [lr:64]
	add	r3, sp, #856
	vst1.32	{d22-d23}, [r3:64]
	add	r3, sp, #872
	vst1.32	{d20-d21}, [r3:64]
	add	r3, sp, #888
	vst1.32	{d18-d19}, [r3:64]
	add	r3, sp, #904
	vst1.32	{d16-d17}, [r3:64]
	add	r3, r6, #16
	str	r2, [sp, #844]
	str	r1, [sp, #840]
	str	r5, [sp, #832]
	str	r0, [sp, #836]
	str	r3, [sp, #848]
.L2:
	mov	r4, r8
	mov	r7, #0
.L5:
	mov	r6, r4
	mov	r5, #0
.L7:
	cmp	r7, r5
	add	r5, r5, #1
	beq	.L10
	vldr.32	s0, [r6]
	bl	SVD_abs
	vldr.32	s15, .L25
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L24
.L10:
	cmp	r5, #4
	add	r6, r6, #4
	bne	.L7
	add	r7, r7, #1
	cmp	r7, #4
	add	r4, r4, #16
	bne	.L5
	vldr.32	s16, .L25
	mov	r7, #0
	ldr	r6, [sp, #852]
	add	r4, r8, #80
.L11:
	sub	r5, r6, #16
.L14:
	vldmia.32	r5!, {s0}
	bl	SVD_abs
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, FPSCR
	vstrpl.32	s0, [r5, #-4]
	strmi	r7, [r5, #-4]	@ float
	cmp	r5, r6
	bne	.L14
	add	r6, r5, #16
	cmp	r6, r4
	bne	.L11
	add	sp, sp, #1360
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L26:
	.align	2
.L25:
	.word	953267991
	.word	.LANCHOR0+32
.L24:
	mov	r3, #16
	str	r3, [sp, #816]
	ldr	r3, [sp, #820]
	add	r7, sp, #1104
	add	r2, r3, #32
	add	r3, r3, #48
	str	r3, [sp, #824]
	add	r3, r8, #4
	str	r3, [sp, #720]
	add	r3, sp, #1104
	add	r3, r3, #12
	str	r3, [sp, #724]
	add	r3, sp, #1168
	add	r3, r3, #12
	str	r3, [sp, #716]
	add	r3, sp, #1168
	add	r3, r3, #8
	str	r2, [sp, #828]
	add	r7, r7, #8
	str	r3, [sp, #700]
	str	r8, [sp, #696]
.L4:
	ldr	r2, [sp, #716]
	ldr	r3, [sp, #816]
	str	r2, [sp, #704]
	ldr	r2, [sp, #724]
	add	fp, r3, #4
	str	r2, [sp, #712]
	ldr	r2, [sp, #720]
	str	r3, [sp, #580]
	str	r2, [sp, #708]
.L3:
	ldr	r3, [sp, #844]
	add	r1, sp, #920
	vld1.32	{d22-d23}, [r3:64]
	ldr	r3, [sp, #840]
	vst1.32	{d22-d23}, [r1:64]
	vld1.32	{d20-d21}, [r3:64]
	ldr	r3, .L25+4
	add	r1, sp, #984
	vld1.32	{d18-d19}, [r3:64]
	add	r3, r3, #16
	vld1.32	{d16-d17}, [r3:64]
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1040
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1232
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1296
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #936
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1000
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1056
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1120
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1184
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1248
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1312
	add	r1, r1, #8
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #952
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1016
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1072
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1136
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1200
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1264
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1328
	add	r1, r1, #8
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #968
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1024
	ldr	r4, [sp, #696]
	ldr	r5, [sp, #580]
	add	r1, r1, #8
	vst1.32	{d16-d17}, [r1:64]
	ldr	r6, [sp, #700]
	add	r1, sp, #1088
	add	r2, r4, r5
	add	r3, r4, fp
	add	r1, r1, #8
	vst1.32	{d22-d23}, [r6:64]
	vst1.32	{d22-d23}, [r7:64]
	vst1.32	{d16-d17}, [r1:64]
	vldr.32	s0, [r2]
	vldr.32	s1, [r3]
	ldr	r2, [sp, #708]
	ldr	r3, [sp, #720]
	vldmia.32	r2!, {s14}
	vldr.32	s15, [r3, #-4]
	add	r1, sp, #1152
	add	r1, r1, #8
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1216
	add	r1, r1, #8
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1280
	add	r1, r1, #8
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1344
	add	r1, r1, #8
	vsub.f32	s16, s0, s14
	vst1.32	{d16-d17}, [r1:64]
	vadd.f32	s0, s0, s14
	vadd.f32	s18, s1, s15
	vsub.f32	s1, s1, s15
	str	r2, [sp, #708]
	bl	SVD_atan
	vmov.f32	s1, s18
	vmov.f32	s17, s0
	vmov.f32	s0, s16
	bl	SVD_atan
	vmov.f32	s15, #5.0e-1
	vsub.f32	s16, s17, s0
	vmul.f32	s16, s16, s15
	vmov.f32	s0, s16
	bl	SVD_cos
	ldr	r3, [sp, #724]
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s16
	bl	SVD_sin
	vneg.f32	s15, s0
	ldr	r3, [sp, #712]
	vmov.f32	s0, s16
	vstmia.32	r3!, {s15}
	str	r3, [sp, #712]
	bl	SVD_sin
	add	r3, r7, r5
	vstr.32	s0, [r3]
	vmov.f32	s0, s16
	bl	SVD_cos
	vsub.f32	s16, s17, s16
	add	r3, r7, fp
	vstr.32	s0, [r3]
	vmov.f32	s0, s16
	bl	SVD_cos
	ldr	r3, [sp, #716]
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s16
	bl	SVD_sin
	vneg.f32	s15, s0
	ldr	r3, [sp, #704]
	vmov.f32	s0, s16
	vstmia.32	r3!, {s15}
	str	r3, [sp, #704]
	bl	SVD_sin
	add	r3, r6, r5
	vstr.32	s0, [r3]
	vmov.f32	s0, s16
	str	r5, [sp, #580]
	bl	SVD_cos
	vld4.32	{d16, d18, d20, d22}, [r7:64]
	add	r3, sp, #1136
	add	r3, r3, #8
	vld4.32	{d17, d19, d21, d23}, [r3:64]
	add	r3, sp, #1232
	add	r3, r3, #8
	vst1.32	{d16-d17}, [r3:64]
	add	r3, sp, #1248
	add	r3, r3, #8
	vst1.32	{d18-d19}, [r3:64]
	vld4.32	{d24, d26, d28, d30}, [r4]
	add	r2, sp, #1264
	add	r2, r2, #8
	vst1.32	{d20-d21}, [r2:64]
	add	r2, sp, #1280
	ldr	r3, [sp, #736]
	add	r2, r2, #8
	vst1.32	{d22-d23}, [r2:64]
	vld4.32	{d25, d27, d29, d31}, [r3]
	add	r3, r6, fp
	vstr.32	s0, [r3]
	vld4.32	{d0, d2, d4, d6}, [r7:64]
	add	r2, sp, #1232
	add	r2, r2, #8
	vld4.32	{d16, d18, d20, d22}, [r2:64]
	add	r2, sp, #1136
	add	r2, r2, #8
	vld4.32	{d1, d3, d5, d7}, [r2:64]
	add	r3, sp, #856
	vld4.32	{d8, d10, d12, d14}, [r3:64]
	add	r3, sp, #584
	vstmia	r3, {d0-d7}
	vld4.32	{d0, d2, d4, d6}, [r6:64]
	add	r1, sp, #888
	vld4.32	{d9, d11, d13, d15}, [r1:64]
	add	r1, sp, #1264
	add	r1, r1, #8
	vld4.32	{d17, d19, d21, d23}, [r1:64]
	add	r1, sp, #1200
	add	r1, r1, #8
	vld4.32	{d1, d3, d5, d7}, [r1:64]
	add	r3, sp, #256
	ldr	r1, [sp, #728]
	vstmia	r3, {d0-d7}
	add	r3, sp, #64
	vstmia	r3, {d8-d15}
	vmov.32	r3, d8[0]
	vld4.32	{d6, d8, d10, d12}, [r1]
	ldr	r0, [sp, #732]
	vstmia	sp, {d16-d23}
	vld4.32	{d7, d9, d11, d13}, [r0]
	vmov	q11, q12  @ ti
	vmov.32	r2, d24[0]
	str	r6, [sp, #700]
	vld1.64	{d20-d21}, [sp:64]
	vmov.32	r6, d24[1]
	vmov	q12, q13  @ ti
	vmov	q13, q14  @ ti
	vmov	q14, q15  @ ti
	vdup.32	q8, r3
	add	r1, sp, #320
	add	r3, sp, #64
	vstmia	r1, {d6-d13}
	vldmia	r3, {d4-d11}
	add	r3, sp, #576
	vldr	d2, [sp, #256]
	vldr	d3, [sp, #264]
	vmov.32	r9, d20[0]
	str	r4, [sp, #696]
	vldr	d20, [sp, #584]
	vldr	d21, [sp, #592]
	vst1.32	{d25[0]}, [r3]
	add	r3, sp, #744
	vst1.32	{d26[1]}, [r3]
	add	r3, sp, #128
	vstmia	r3, {d22-d29}
	vmov.32	r10, d24[0]
	vdup.32	q9, r2
	vmov.32	r5, d24[1]
	vmov.f32	q15, #0.0  @ v4sf
	vmov.f32	q12, #0.0  @ v4sf
	vmla.f32	q15, q9, q10
	vmla.f32	q12, q8, q1
	add	r3, sp, #760
	vst1.32	{d28[0]}, [r3]
	vmov	q9, q15  @ v4sf
	vldr	d28, [sp, #600]
	vldr	d29, [sp, #608]
	vmov	q8, q12  @ v4sf
	vdup.32	q12, r6
	vmla.f32	q9, q12, q14
	vdup.32	q12, r10
	add	r10, sp, #788
	vst1.32	{d8[0]}, [r10]
	vmov.32	ip, d6[0]
	vmov.32	r6, d6[1]
	vldmia	sp, {d6-d13}
	add	r10, sp, #792
	vst1.32	{d7[0]}, [r10]
	add	r10, sp, #796
	vst1.32	{d8[1]}, [r10]
	vmov.32	lr, d4[1]
	add	r10, sp, #804
	vst1.32	{d10[0]}, [r10]
	vmov.32	r8, d23[0]
	vmov.32	r4, d26[0]
	vld1.64	{d30-d31}, [sp:64]
	vldr	d26, [sp, #272]
	vldr	d27, [sp, #280]
	vmov.32	r2, d23[1]
	add	r10, sp, #128
	vdup.32	q11, lr
	vldmia	r10, {d8-d15}
	vstr	d28, [sp, #648]
	vstr	d29, [sp, #656]
	vmov.f32	q14, #0.0  @ v4sf
	vmov.32	r0, d30[1]
	vmov.32	lr, d5[0]
	vldr	d30, [sp, #16]
	vldr	d31, [sp, #24]
	vmla.f32	q8, q11, q13
	add	r10, sp, #740
	vdup.32	q11, r9
	add	r9, sp, #64
	vst1.32	{d11[1]}, [r10]
	vmla.f32	q14, q12, q10
	vldmia	r9, {d4-d11}
	vstr	d26, [sp, #664]
	vstr	d27, [sp, #672]
	vmov.f32	q12, #0.0  @ v4sf
	vldr	d26, [sp, #320]
	vldr	d27, [sp, #328]
	add	r10, sp, #776
	vst1.32	{d13[0]}, [r10]
	vmov.32	r1, d30[0]
	add	r10, sp, #780
	vdup.32	q15, lr
	add	lr, sp, #584
	vst1.32	{d14[1]}, [r10]
	vmla.f32	q12, q11, q13
	vmov.32	r10, d5[1]
	vmov.32	r9, d7[0]
	vdup.32	q11, r8
	vldmia	lr, {d4-d11}
	vmov	q0, q4  @ v4sf
	vmla.f32	q9, q11, q4
	vdup.32	q11, r5
	vldr	d8, [sp, #648]
	vldr	d9, [sp, #656]
	vmla.f32	q14, q11, q4
	vldr	d8, [sp, #112]
	vldr	d9, [sp, #120]
	vdup.32	q11, r4
	vmov.32	r4, d8[0]
	vld1.64	{d8-d9}, [sp:64]
	vmov.32	lr, d9[1]
	vldr	d8, [sp, #16]
	vldr	d9, [sp, #24]
	add	r8, sp, #800
	vldr	d12, [sp, #288]
	vldr	d13, [sp, #296]
	vldr	d14, [sp, #304]
	vldr	d15, [sp, #312]
	vmov	q2, q5  @ v4sf
	vstr	d26, [sp, #680]
	vstr	d27, [sp, #688]
	vldr	d10, [sp, #96]
	vldr	d11, [sp, #104]
	vst1.32	{d9[0]}, [r8]
	vldr	d8, [sp, #32]
	vldr	d9, [sp, #40]
	add	r8, sp, #808
	vst1.32	{d8[1]}, [r8]
	vmov	q13, q12  @ v4sf
	vldr	d8, [sp, #48]
	vldr	d9, [sp, #56]
	vmov.f32	q12, #0.0  @ v4sf
	add	r8, sp, #812
	vst1.32	{d8[0]}, [r8]
	vmla.f32	q12, q11, q10
	vldr	d8, [sp, #160]
	vldr	d9, [sp, #168]
	vmla.f32	q8, q15, q6
	vdup.32	q11, ip
	vmov.f32	q15, #0.0  @ v4sf
	add	r8, sp, #584
	vst1.32	{d9[1]}, [r8]
	vmla.f32	q15, q11, q1
	vldr	d8, [sp, #176]
	vldr	d9, [sp, #184]
	vldr	d2, [sp, #336]
	vldr	d3, [sp, #344]
	vdup.32	q11, r0
	add	r8, sp, #784
	vmov.32	r5, d10[1]
	vst1.32	{d9[0]}, [r8]
	vmla.f32	q13, q11, q1
	vldr	d8, [sp, #680]
	vldr	d9, [sp, #688]
	vdup.32	q11, r1
	vmov.f32	q5, #0.0  @ v4sf
	vmla.f32	q5, q11, q4
	vdup.32	q4, r2
	vmla.f32	q9, q4, q2
	ldr	r3, [sp, #576]	@ float
	vstr	d18, [sp, #192]
	vstr	d19, [sp, #200]
	vdup.32	q9, r3
	vdup.32	q3, r10
	ldr	r2, [sp, #744]	@ float
	vmla.f32	q14, q9, q0
	vldr	d8, [sp, #648]
	vldr	d9, [sp, #656]
	vdup.32	q9, r2
	vmla.f32	q8, q3, q7
	vmla.f32	q12, q9, q4
	vldr	d8, [sp, #80]
	vldr	d9, [sp, #88]
	vldr	d6, [sp, #664]
	vldr	d7, [sp, #672]
	vstr	d16, [sp, #448]
	vstr	d17, [sp, #456]
	vdup.32	q8, r6
	vmov.32	r10, d9[1]
	vldr	d8, [sp, #96]
	vldr	d9, [sp, #104]
	vmla.f32	q15, q8, q3
	vdup.32	q8, r9
	ldr	r2, [sp, #760]	@ float
	vmov.32	r8, d9[0]
	vldr	d8, [sp, #112]
	vldr	d9, [sp, #120]
	vmla.f32	q15, q8, q6
	vdup.32	q9, r2
	vmov	q11, q5  @ v4sf
	vmov.f32	q5, #0.0  @ v4sf
	vmov.32	ip, d8[1]
	ldr	r6, [sp, #788]	@ float
	vldr	d8, [sp, #16]
	vldr	d9, [sp, #24]
	vmla.f32	q5, q9, q10
	vdup.32	q8, r6
	vstr	d30, [sp, #744]
	vstr	d31, [sp, #752]
	vmov.f32	q9, #0.0  @ v4sf
	vldr	d30, [sp, #256]
	vldr	d31, [sp, #264]
	vmov.32	r0, d9[1]
	vldr	d8, [sp, #32]
	vldr	d9, [sp, #40]
	vmla.f32	q9, q8, q15
	vdup.32	q8, r10
	vmov.32	r1, d9[0]
	vmov	q10, q5  @ v4sf
	vldr	d8, [sp, #48]
	vldr	d9, [sp, #56]
	vldr	d10, [sp, #352]
	vldr	d11, [sp, #360]
	ldr	r6, [sp, #792]	@ float
	vstr	d16, [sp, #760]
	vstr	d17, [sp, #768]
	vdup.32	q8, r6
	vldr	d30, [sp, #368]
	vldr	d31, [sp, #376]
	vmov.32	r2, d8[1]
	vstr	d10, [sp, #128]
	vstr	d11, [sp, #136]
	vldr	d8, [sp, #176]
	vldr	d9, [sp, #184]
	ldr	r6, [sp, #796]	@ float
	vmla.f32	q13, q8, q5
	vdup.32	q8, r6
	ldr	r6, [sp, #804]	@ float
	vmov.32	r3, d9[1]
	vmla.f32	q11, q8, q1
	vldr	d8, [sp, #680]
	vldr	d9, [sp, #688]
	vdup.32	q8, r6
	vmov.f32	q5, #0.0  @ v4sf
	ldr	r6, [sp, #740]	@ float
	vmla.f32	q5, q8, q4
	vdup.32	q4, r6
	vmla.f32	q14, q4, q2
	ldr	r6, [sp, #776]	@ float
	vstr	d28, [sp, #208]
	vstr	d29, [sp, #216]
	vdup.32	q14, r6
	ldr	r6, [sp, #780]	@ float
	vmla.f32	q12, q14, q0
	vldr	d8, [sp, #648]
	vldr	d9, [sp, #656]
	vdup.32	q14, r6
	vmla.f32	q10, q14, q4
	vdup.32	q14, r5
	vmov	q8, q5  @ v4sf
	vmla.f32	q9, q14, q3
	vldr	d10, [sp, #256]
	vldr	d11, [sp, #264]
	vdup.32	q14, r4
	vmov.f32	q3, #0.0  @ v4sf
	vmla.f32	q3, q14, q5
	vdup.32	q5, lr
	vmla.f32	q13, q5, q15
	ldr	lr, [sp, #800]	@ float
	vldr	d10, [sp, #128]
	vldr	d11, [sp, #136]
	vstr	d26, [sp, #384]
	vstr	d27, [sp, #392]
	vdup.32	q13, lr
	ldr	lr, [sp, #808]	@ float
	vmla.f32	q11, q13, q5
	vdup.32	q13, lr
	ldr	lr, [sp, #812]	@ float
	vmla.f32	q8, q13, q1
	vldr	d8, [sp, #680]
	vldr	d9, [sp, #688]
	vdup.32	q13, lr
	vmov	q14, q3  @ v4sf
	vmov.f32	q3, #0.0  @ v4sf
	ldr	lr, [sp, #584]	@ float
	vmla.f32	q3, q13, q4
	vdup.32	q4, lr
	vmla.f32	q12, q4, q2
	ldr	lr, [sp, #784]	@ float
	vstr	d24, [sp, #224]
	vstr	d25, [sp, #232]
	vdup.32	q12, lr
	vmla.f32	q10, q12, q0
	vldr	d0, [sp, #96]
	vldr	d1, [sp, #104]
	vmov.32	r9, d1[1]
	vldr	d0, [sp, #112]
	vldr	d1, [sp, #120]
	vmov.32	r5, d1[0]
	vldr	d0, [sp, #32]
	vldr	d1, [sp, #40]
	vmov.32	r4, d1[1]
	vldr	d0, [sp, #48]
	vldr	d1, [sp, #56]
	vldr	d10, [sp, #664]
	vldr	d11, [sp, #672]
	vmov.32	lr, d1[0]
	vdup.32	q0, ip
	vmov	q13, q3  @ v4sf
	vldr	d24, [sp, #744]
	vldr	d25, [sp, #752]
	vldr	d6, [sp, #760]
	vldr	d7, [sp, #768]
	vmla.f32	q14, q0, q5
	vdup.32	q0, r0
	vmla.f32	q12, q3, q7
	vmla.f32	q11, q0, q15
	vstr	d24, [sp, #464]
	vstr	d25, [sp, #472]
	vdup.32	q12, r8
	vldr	d10, [sp, #128]
	vldr	d11, [sp, #136]
	vldr	d6, [sp, #112]
	vldr	d7, [sp, #120]
	vdup.32	q4, r1
	vstr	d22, [sp, #400]
	vstr	d23, [sp, #408]
	vdup.32	q11, r3
	vmla.f32	q9, q12, q6
	vdup.32	q0, r2
	vdup.32	q12, r9
	vmla.f32	q10, q11, q2
	vmov.32	r8, d7[1]
	vdup.32	q11, r4
	vldr	d6, [sp, #48]
	vldr	d7, [sp, #56]
	vmla.f32	q8, q4, q5
	vmla.f32	q9, q12, q7
	vmla.f32	q13, q0, q1
	vdup.32	q1, r5
	vmla.f32	q8, q11, q15
	vmov.32	r3, d7[1]
	vstr	d20, [sp, #240]
	vstr	d21, [sp, #248]
	vdup.32	q10, lr
	vmla.f32	q14, q1, q6
	vstr	d18, [sp, #480]
	vstr	d19, [sp, #488]
	vdup.32	q9, r8
	vstr	d16, [sp, #416]
	vstr	d17, [sp, #424]
	vmla.f32	q13, q10, q5
	vdup.32	q8, r3
	vmla.f32	q14, q9, q7
	add	r3, sp, #192
	vldmia	r3, {d6-d13}
	vmla.f32	q13, q8, q15
	vldmia	r3, {d16-d23}
	vstr	d28, [sp, #496]
	vstr	d29, [sp, #504]
	add	r2, sp, #984
	vst4.32	{d6, d8, d10, d12}, [r2:64]
	add	r2, sp, #1016
	vst4.32	{d17, d19, d21, d23}, [r2:64]
	ldr	r6, [sp, #700]
	add	r3, sp, #448
	vld4.32	{d0, d2, d4, d6}, [r6:64]
	vldmia	r3, {d16-d23}
	vstr	d26, [sp, #432]
	vstr	d27, [sp, #440]
	add	r2, sp, #984
	vld4.32	{d24, d26, d28, d30}, [r2:64]
	add	r2, sp, #1200
	add	r2, r2, #8
	vld4.32	{d1, d3, d5, d7}, [r2:64]
	add	r2, sp, #1040
	add	r2, r2, #8
	vst4.32	{d16, d18, d20, d22}, [r2:64]
	add	r2, sp, #1072
	add	r2, r2, #8
	add	r3, sp, #384
	vst4.32	{d17, d19, d21, d23}, [r2:64]
	vldmia	r3, {d16-d23}
	add	r2, sp, #920
	vst4.32	{d16, d18, d20, d22}, [r2:64]
	add	r2, sp, #952
	vst4.32	{d17, d19, d21, d23}, [r2:64]
	add	r2, sp, #1296
	add	r2, r2, #8
	vst1.32	{d0-d1}, [r2:64]
	add	r2, sp, #1312
	add	r2, r2, #8
	vst1.32	{d2-d3}, [r2:64]
	add	r2, sp, #1328
	add	r2, r2, #8
	vst1.32	{d4-d5}, [r2:64]
	add	r2, sp, #1344
	add	r2, r2, #8
	vst1.32	{d6-d7}, [r2:64]
	add	r2, sp, #1016
	vld4.32	{d25, d27, d29, d31}, [r2:64]
	add	r2, sp, #1296
	add	r2, r2, #8
	vld4.32	{d16, d18, d20, d22}, [r2:64]
	add	r2, sp, #1328
	add	r2, r2, #8
	vld4.32	{d17, d19, d21, d23}, [r2:64]
	vmov.32	r3, d16[0]
	vmov.32	r2, d16[1]
	vdup.32	q3, r3
	vmov.f32	q2, #0.0  @ v4sf
	vmov.32	r3, d18[0]
	vmla.f32	q2, q3, q12
	vdup.32	q1, r2
	vmov.32	r1, d17[0]
	vdup.32	q3, r3
	vmla.f32	q2, q1, q13
	vdup.32	q7, r1
	vmov	q1, q14  @ v4sf
	vmov.32	r0, d17[1]
	vmov.f32	q5, #0.0  @ v4sf
	vmov	q14, q15  @ v4sf
	vmov.32	r2, d18[1]
	vmov.32	r3, d20[0]
	vmla.f32	q5, q3, q12
	vmla.f32	q2, q7, q1
	vdup.32	q7, r0
	vmov	q0, q13  @ v4sf
	vmov	q4, q12  @ v4sf
	vdup.32	q6, r2
	vmov.32	r1, d19[0]
	vmov.32	r2, d20[1]
	vmla.f32	q2, q7, q14
	vmov	q3, q5  @ v4sf
	vmov.f32	q13, #0.0  @ v4sf
	vdup.32	q5, r3
	vmov.32	r3, d22[0]
	vmla.f32	q3, q6, q0
	vmla.f32	q13, q5, q4
	vdup.32	q6, r1
	vdup.32	q15, r2
	vmov.32	r1, d19[1]
	vmov.32	r2, d21[0]
	vdup.32	q12, r3
	vstr	d4, [sp, #512]
	vstr	d5, [sp, #520]
	vmov.f32	q2, #0.0  @ v4sf
	vmov.32	r3, d22[1]
	vmla.f32	q13, q15, q0
	vmla.f32	q2, q12, q4
	vdup.32	q15, r2
	vmla.f32	q3, q6, q1
	vmov.32	r2, d21[1]
	vdup.32	q6, r1
	vmov	q12, q2  @ v4sf
	vmla.f32	q3, q6, q14
	vdup.32	q2, r3
	vmla.f32	q13, q15, q1
	vmov.32	r3, d23[0]
	vdup.32	q15, r2
	add	ip, sp, #1040
	add	ip, ip, #8
	vld1.32	{d10-d11}, [ip:64]
	add	ip, sp, #1056
	add	ip, ip, #8
	vmla.f32	q13, q15, q14
	vld1.32	{d8-d9}, [ip:64]
	vmla.f32	q12, q2, q0
	vstr	d6, [sp, #528]
	vstr	d7, [sp, #536]
	vdup.32	q3, r3
	vmov.32	r3, d23[1]
	add	r2, sp, #856
	vst1.32	{d10-d11}, [r2:64]
	add	r2, sp, #872
	vst1.32	{d8-d9}, [r2:64]
	vstr	d26, [sp, #544]
	vstr	d27, [sp, #552]
	vmla.f32	q12, q3, q1
	vdup.32	q13, r3
	add	r2, sp, #1072
	add	r2, r2, #8
	vmla.f32	q12, q13, q14
	vld1.32	{d0-d1}, [r2:64]
	add	r2, sp, #1088
	add	r2, r2, #8
	vld1.32	{d4-d5}, [r2:64]
	add	r3, sp, #856
	vld4.32	{d16, d18, d20, d22}, [r3:64]
	add	r2, sp, #888
	vstr	d24, [sp, #560]
	vstr	d25, [sp, #568]
	vst1.32	{d0-d1}, [r2:64]
	add	r2, sp, #904
	vst1.32	{d4-d5}, [r2:64]
	add	r3, sp, #512
	vldmia	r3, {d6-d13}
	add	r2, sp, #888
	vld4.32	{d17, d19, d21, d23}, [r2:64]
	add	r2, sp, #920
	vld1.32	{d30-d31}, [r2:64]
	add	r2, sp, #936
	vld1.32	{d28-d29}, [r2:64]
	add	r2, sp, #952
	vld1.32	{d26-d27}, [r2:64]
	add	r2, sp, #968
	vld1.32	{d24-d25}, [r2:64]
	ldr	r3, [sp, #736]
	ldr	r4, [sp, #696]
	ldr	r1, [sp, #728]
	vst4.32	{d6, d8, d10, d12}, [r4]
	vst4.32	{d7, d9, d11, d13}, [r3]
	ldr	r3, [sp, #820]
	ldr	r5, [sp, #580]
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [sp, #848]
	add	fp, fp, #20
	vst1.32	{d18-d19}, [r3]
	ldr	r3, [sp, #828]
	ldr	r0, [sp, #732]
	vst1.32	{d20-d21}, [r3]
	ldr	r3, [sp, #824]
	add	r2, r5, #16
	vst1.32	{d22-d23}, [r3]
	ldr	r3, [sp, #832]
	vst1.32	{d30-d31}, [r1]
	vst1.32	{d28-d29}, [r3]
	ldr	r3, [sp, #836]
	cmp	fp, #80
	vst1.32	{d26-d27}, [r0]
	str	r2, [sp, #580]
	vst1.32	{d24-d25}, [r3]
	bne	.L3
	ldr	r3, [sp, #816]
	add	r3, r3, #20
	str	r3, [sp, #816]
	cmp	r3, #76
	ldr	r3, [sp, #720]
	add	r3, r3, #20
	str	r3, [sp, #720]
	ldr	r3, [sp, #724]
	add	r3, r3, #20
	str	r3, [sp, #724]
	ldr	r3, [sp, #716]
	add	r3, r3, #20
	str	r3, [sp, #716]
	bne	.L4
	mov	r8, r4
	b	.L2
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
