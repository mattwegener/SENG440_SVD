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
	@ args = 0, pretend = 0, frame = 1392
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r4, r0
	sub	sp, sp, #1392
	sub	sp, sp, #4
	mov	r5, r1
	mov	r8, r2
	str	r1, [sp, #728]
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #944
	add	fp, sp, #1008
	mov	r6, r3
	str	r3, [sp, #840]
	add	r10, sp, #1072
	bl	memset
	mov	r2, #64
	mov	r1, #0
	mov	r0, fp
	bl	memset
	mov	r2, #64
	mov	r1, #0
	mov	r0, r10
	bl	memset
	mov	r3, r4
	mov	r2, r8
	vld1.32	{d16-d17}, [r3]!
	vst1.32	{d16-d17}, [r2]!
	vld1.32	{d16-d17}, [r3]
	str	r2, [sp, #876]
	vst1.32	{d16-d17}, [r2]
	movw	r2, #:lower16:.LANCHOR0
	add	r3, r4, #32
	movt	r2, #:upper16:.LANCHOR0
	vld1.32	{d16-d17}, [r3]
	mov	r0, r2
	add	r1, r8, #32
	vst1.32	{d16-d17}, [r1]
	vld1.32	{d16-d17}, [r0:64]!
	add	r4, r4, #48
	vld1.32	{d18-d19}, [r4]
	str	r1, [sp, #736]
	str	r0, [sp, #860]
	mov	r1, r0
	mov	r0, r5
	add	r3, r8, #48
	vst1.32	{d18-d19}, [r3]
	vst1.32	{d16-d17}, [r0]!
	vld1.32	{d16-d17}, [r1:64]
	vst1.32	{d16-d17}, [r0]
	str	r0, [sp, #852]
	add	r0, r2, #32
	vld1.32	{d16-d17}, [r0:64]
	add	ip, r5, #32
	vst1.32	{d16-d17}, [ip]
	str	ip, [sp, #732]
	add	ip, r2, #48
	vld1.32	{d16-d17}, [ip:64]
	add	lr, r5, #48
	vst1.32	{d16-d17}, [lr]
	vld1.32	{d22-d23}, [r2:64]
	vld1.32	{d20-d21}, [r1:64]
	vld1.32	{d18-d19}, [r0:64]
	vld1.32	{d16-d17}, [ip:64]
	add	r3, sp, #880
	vst1.32	{d22-d23}, [r3:64]
	add	r3, sp, #896
	vst1.32	{d20-d21}, [r3:64]
	add	r3, sp, #912
	vst1.32	{d18-d19}, [r3:64]
	add	r3, sp, #928
	vst1.32	{d16-d17}, [r3:64]
	add	r3, r6, #16
	str	r3, [sp, #868]
	mov	r3, #5
	str	r2, [sp, #864]
	str	lr, [sp, #856]
	str	r3, [sp, #872]
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
	vldr.32	s15, .L27
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L26
.L10:
	cmp	r5, #4
	add	r6, r6, #4
	bne	.L7
	add	r7, r7, #1
	cmp	r7, #4
	add	r4, r4, #16
	bne	.L5
	vldr.32	s16, .L27
	mov	r7, #0
	ldr	r5, [sp, #876]
	add	r4, r8, #80
.L11:
	sub	r6, r5, #16
.L14:
	vldmia.32	r6!, {s0}
	bl	SVD_abs
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, FPSCR
	vstrpl.32	s0, [r6, #-4]
	strmi	r7, [r6, #-4]	@ float
	cmp	r5, r6
	bne	.L14
	add	r5, r5, #16
	cmp	r5, r4
	bne	.L11
	add	sp, sp, #1392
	add	sp, sp, #4
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L28:
	.align	2
.L27:
	.word	869711765
	.word	.LANCHOR0+32
.L26:
	mov	r3, #16
	str	r3, [sp, #836]
	ldr	r3, [sp, #840]
	add	r7, sp, #1136
	add	r2, r3, #32
	add	r3, r3, #48
	str	r3, [sp, #844]
	add	r3, r8, #4
	str	r3, [sp, #720]
	add	r3, sp, #1136
	add	r3, r3, #4
	str	r3, [sp, #724]
	add	r3, sp, #1200
	add	r3, r3, #4
	str	r2, [sp, #848]
	str	r3, [sp, #716]
	add	r6, sp, #1200
	str	r8, [sp, #700]
.L4:
	ldr	r3, [sp, #836]
	ldr	r2, [sp, #716]
	add	r8, r3, #4
	mov	r4, r8
	str	r2, [sp, #708]
	ldr	r2, [sp, #724]
	str	r3, [sp, #696]
	str	r2, [sp, #712]
	ldr	r2, [sp, #720]
	str	r2, [sp, #704]
.L3:
	ldr	r3, [sp, #864]
	add	r1, sp, #944
	vld1.32	{d22-d23}, [r3:64]
	ldr	r3, [sp, #860]
	vst1.32	{d22-d23}, [r1:64]
	vld1.32	{d20-d21}, [r3:64]
	ldr	r3, .L27+4
	add	r1, sp, #1264
	vld1.32	{d18-d19}, [r3:64]
	add	r3, r3, #16
	vld1.32	{d16-d17}, [r3:64]
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #1328
	vst1.32	{d22-d23}, [r1:64]
	add	r1, sp, #960
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1024
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1088
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1152
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1216
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1280
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #1344
	vst1.32	{d20-d21}, [r1:64]
	add	r1, sp, #976
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1040
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1104
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1168
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1232
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1296
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #1360
	vst1.32	{d18-d19}, [r1:64]
	add	r1, sp, #992
	vst1.32	{d16-d17}, [r1:64]
	ldr	r5, [sp, #700]
	ldr	r8, [sp, #696]
	add	r1, sp, #1056
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1120
	vst1.32	{d16-d17}, [r1:64]
	add	r2, r5, r8
	add	r3, r5, r4
	add	r1, sp, #1184
	vst1.32	{d22-d23}, [fp:64]
	vst1.32	{d22-d23}, [r10:64]
	vst1.32	{d22-d23}, [r7:64]
	vst1.32	{d22-d23}, [r6:64]
	vst1.32	{d16-d17}, [r1:64]
	vldr.32	s0, [r2]
	vldr.32	s1, [r3]
	ldr	r2, [sp, #704]
	ldr	r3, [sp, #720]
	vldmia.32	r2!, {s14}
	vldr.32	s15, [r3, #-4]
	add	r1, sp, #1248
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1312
	vst1.32	{d16-d17}, [r1:64]
	add	r1, sp, #1376
	vsub.f32	s16, s0, s14
	vst1.32	{d16-d17}, [r1:64]
	vadd.f32	s0, s0, s14
	vadd.f32	s18, s1, s15
	vsub.f32	s1, s1, s15
	str	r2, [sp, #704]
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
	add	r9, sp, #812
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s16
	bl	SVD_sin
	vneg.f32	s15, s0
	ldr	r3, [sp, #712]
	vmov.f32	s0, s16
	vstmia.32	r3!, {s15}
	str	r3, [sp, #712]
	bl	SVD_sin
	add	r3, r7, r8
	vstr.32	s0, [r3]
	vmov.f32	s0, s16
	bl	SVD_cos
	vsub.f32	s16, s17, s16
	add	r3, r7, r4
	vstr.32	s0, [r3]
	vmov.f32	s0, s16
	bl	SVD_cos
	ldr	r3, [sp, #716]
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s16
	bl	SVD_sin
	vneg.f32	s15, s0
	ldr	r3, [sp, #708]
	vmov.f32	s0, s16
	vstmia.32	r3!, {s15}
	str	r3, [sp, #708]
	bl	SVD_sin
	add	r3, r6, r8
	vstr.32	s0, [r3]
	vmov.f32	s0, s16
	str	r8, [sp, #696]
	bl	SVD_cos
	vld4.32	{d16, d18, d20, d22}, [r7:64]
	add	r3, sp, #1168
	vld4.32	{d17, d19, d21, d23}, [r3:64]
	add	r3, sp, #1264
	vst1.32	{d16-d17}, [r3:64]
	add	r3, sp, #1280
	vst1.32	{d18-d19}, [r3:64]
	vld4.32	{d24, d26, d28, d30}, [r5]
	ldr	r3, [sp, #736]
	add	r2, sp, #1296
	vst1.32	{d20-d21}, [r2:64]
	add	r2, sp, #1312
	vld4.32	{d25, d27, d29, d31}, [r3]
	vst1.32	{d22-d23}, [r2:64]
	add	r3, r6, r4
	vstr.32	s0, [r3]
	vld4.32	{d0, d2, d4, d6}, [r7:64]
	add	r2, sp, #1264
	vld4.32	{d16, d18, d20, d22}, [r2:64]
	add	r2, sp, #1168
	vld4.32	{d1, d3, d5, d7}, [r2:64]
	add	r3, sp, #880
	vld4.32	{d8, d10, d12, d14}, [r3:64]
	add	r3, sp, #584
	vstmia	r3, {d0-d7}
	vld4.32	{d0, d2, d4, d6}, [r6:64]
	add	r1, sp, #1296
	vld4.32	{d17, d19, d21, d23}, [r1:64]
	add	r1, sp, #1232
	vld4.32	{d1, d3, d5, d7}, [r1:64]
	add	r3, sp, #912
	vld4.32	{d9, d11, d13, d15}, [r3:64]
	add	r3, sp, #8
	vstmia	r3, {d16-d23}
	ldr	r1, [sp, #728]
	add	r3, sp, #264
	vstmia	r3, {d0-d7}
	add	r3, sp, #72
	vstmia	r3, {d8-d15}
	vmov.32	r3, d8[0]
	vld4.32	{d6, d8, d10, d12}, [r1]
	ldr	r0, [sp, #732]
	vmov.32	r2, d24[0]
	vld4.32	{d7, d9, d11, d13}, [r0]
	vldr	d20, [sp, #8]
	vldr	d21, [sp, #16]
	vdup.32	q9, r2
	vdup.32	q8, r3
	add	r1, sp, #328
	add	r2, sp, #680
	add	r3, sp, #72
	vmov	q11, q12  @ ti
	vstmia	r1, {d6-d13}
	vldr	d2, [sp, #264]
	vldr	d3, [sp, #272]
	vldmia	r3, {d4-d11}
	vmov.32	r8, d24[1]
	str	r5, [sp, #700]
	vmov	q12, q13  @ ti
	vst1.32	{d20[0]}, [r2]
	vmov	q13, q14  @ ti
	vldr	d20, [sp, #584]
	vldr	d21, [sp, #592]
	vmov	q14, q15  @ ti
	vmov.f32	q15, #0.0  @ v4sf
	vmla.f32	q15, q9, q10
	vmov	q9, q15  @ v4sf
	vldr	d30, [sp, #8]
	vldr	d31, [sp, #16]
	vmov.32	r3, d30[1]
	vldr	d30, [sp, #24]
	vldr	d31, [sp, #32]
	vst1.32	{d30[0]}, [r9]
	add	r9, sp, #740
	vst1.32	{d23[1]}, [r9]
	add	r9, sp, #744
	vst1.32	{d25[0]}, [r9]
	add	r9, sp, #760
	vst1.32	{d26[1]}, [r9]
	add	r9, sp, #136
	vstmia	r9, {d22-d29}
	vmov.32	r5, d24[0]
	vmov.32	ip, d24[1]
	vmov.f32	q12, #0.0  @ v4sf
	vmla.f32	q12, q8, q1
	add	r9, sp, #784
	vst1.32	{d28[0]}, [r9]
	vmov	q8, q12  @ v4sf
	vldr	d28, [sp, #600]
	vldr	d29, [sp, #608]
	vdup.32	q12, r8
	vmla.f32	q9, q12, q14
	vdup.32	q12, r5
	add	r5, sp, #800
	vst1.32	{d8[0]}, [r5]
	add	r5, sp, #8
	vmov.32	r2, d6[0]
	vmov.32	r9, d6[1]
	vldmia	r5, {d6-d13}
	add	r5, sp, #804
	vst1.32	{d7[0]}, [r5]
	add	r5, sp, #816
	vst1.32	{d8[1]}, [r5]
	add	r5, sp, #824
	vst1.32	{d10[0]}, [r5]
	add	r5, sp, #136
	vldmia	r5, {d8-d15}
	vmov.32	r1, d4[1]
	add	r5, sp, #776
	vst1.32	{d11[1]}, [r5]
	add	r5, sp, #780
	vst1.32	{d13[0]}, [r5]
	vmov.32	lr, d23[0]
	vmov.32	r0, d26[0]
	vdup.32	q11, r1
	vldr	d26, [sp, #280]
	vldr	d27, [sp, #288]
	add	r5, sp, #788
	vst1.32	{d14[1]}, [r5]
	vstr	d28, [sp, #648]
	vstr	d29, [sp, #656]
	vmov.f32	q14, #0.0  @ v4sf
	ldr	r5, [sp, #680]	@ float
	vmov.32	r1, d5[0]
	vmla.f32	q8, q11, q13
	vdup.32	q11, r5
	add	r5, sp, #72
	vldmia	r5, {d4-d11}
	vmla.f32	q14, q12, q10
	vstr	d26, [sp, #664]
	vstr	d27, [sp, #672]
	vmov.f32	q12, #0.0  @ v4sf
	vldr	d26, [sp, #328]
	vldr	d27, [sp, #336]
	vdup.32	q15, r1
	add	r8, sp, #796
	add	r1, sp, #584
	vmla.f32	q12, q11, q13
	vmov.32	r5, d5[1]
	vst1.32	{d7[0]}, [r8]
	vdup.32	q11, lr
	vldmia	r1, {d4-d11}
	vmov	q0, q4  @ v4sf
	vmla.f32	q9, q11, q4
	vdup.32	q11, ip
	vldr	d8, [sp, #648]
	vldr	d9, [sp, #656]
	vldr	d12, [sp, #296]
	vldr	d13, [sp, #304]
	vldr	d14, [sp, #312]
	vldr	d15, [sp, #320]
	vmov	q2, q5  @ v4sf
	vmla.f32	q14, q11, q4
	vldr	d10, [sp, #104]
	vldr	d11, [sp, #112]
	vstr	d26, [sp, #680]
	vstr	d27, [sp, #688]
	vldr	d8, [sp, #120]
	vldr	d9, [sp, #128]
	vmov.32	r1, d8[0]
	vldr	d8, [sp, #8]
	vldr	d9, [sp, #16]
	add	ip, sp, #808
	vst1.32	{d9[1]}, [ip]
	vldr	d8, [sp, #24]
	vldr	d9, [sp, #32]
	add	ip, sp, #820
	vst1.32	{d9[0]}, [ip]
	vldr	d8, [sp, #40]
	vldr	d9, [sp, #48]
	add	ip, sp, #828
	vst1.32	{d8[1]}, [ip]
	vdup.32	q11, r0
	vldr	d8, [sp, #56]
	vldr	d9, [sp, #64]
	vmov	q13, q12  @ v4sf
	vmov.f32	q12, #0.0  @ v4sf
	add	ip, sp, #832
	vst1.32	{d8[0]}, [ip]
	vmla.f32	q12, q11, q10
	vldr	d8, [sp, #168]
	vldr	d9, [sp, #176]
	vmla.f32	q8, q15, q6
	vdup.32	q11, r2
	vmov.f32	q15, #0.0  @ v4sf
	add	ip, sp, #584
	vst1.32	{d9[1]}, [ip]
	vmla.f32	q15, q11, q1
	vldr	d8, [sp, #184]
	vldr	d9, [sp, #192]
	vldr	d2, [sp, #344]
	vldr	d3, [sp, #352]
	vdup.32	q11, r3
	ldr	r2, [sp, #812]	@ float
	add	ip, sp, #792
	vmov.32	r0, d10[1]
	vst1.32	{d9[0]}, [ip]
	vmla.f32	q13, q11, q1
	vldr	d8, [sp, #680]
	vldr	d9, [sp, #688]
	vdup.32	q11, r2
	vmov.f32	q5, #0.0  @ v4sf
	ldr	r2, [sp, #740]	@ float
	vmla.f32	q5, q11, q4
	vdup.32	q4, r2
	vmla.f32	q9, q4, q2
	ldr	r2, [sp, #744]	@ float
	vstr	d18, [sp, #200]
	vstr	d19, [sp, #208]
	vdup.32	q9, r2
	ldr	r2, [sp, #760]	@ float
	vmla.f32	q14, q9, q0
	vldr	d8, [sp, #648]
	vldr	d9, [sp, #656]
	vdup.32	q9, r2
	vmla.f32	q12, q9, q4
	vldr	d8, [sp, #88]
	vldr	d9, [sp, #96]
	add	r3, sp, #4
	vst1.32	{d9[1]}, [r3]
	vldr	d8, [sp, #104]
	vldr	d9, [sp, #112]
	vmov.32	r8, d9[0]
	vldr	d8, [sp, #120]
	vldr	d9, [sp, #128]
	vdup.32	q3, r5
	vmov.32	r5, d8[1]
	vldr	d8, [sp, #24]
	vldr	d9, [sp, #32]
	vmov.32	lr, d9[1]
	vldr	d8, [sp, #40]
	vldr	d9, [sp, #48]
	vmov.32	ip, d9[0]
	vldr	d8, [sp, #56]
	vldr	d9, [sp, #64]
	ldr	r2, [sp, #784]	@ float
	vmla.f32	q8, q3, q7
	vdup.32	q9, r2
	vmov.32	r2, d8[1]
	vldr	d8, [sp, #184]
	vldr	d9, [sp, #192]
	add	r3, sp, #740
	vst1.32	{d9[1]}, [r3]
	vstr	d16, [sp, #456]
	vstr	d17, [sp, #464]
	vldr	d6, [sp, #664]
	vldr	d7, [sp, #672]
	vdup.32	q8, r9
	ldr	r9, [sp, #796]	@ float
	vmla.f32	q15, q8, q3
	vdup.32	q8, r9
	vmov	q11, q5  @ v4sf
	vmla.f32	q15, q8, q6
	vmov.f32	q5, #0.0  @ v4sf
	ldr	r9, [sp, #800]	@ float
	vmla.f32	q5, q9, q10
	vdup.32	q8, r9
	vstr	d30, [sp, #744]
	vstr	d31, [sp, #752]
	vmov.f32	q9, #0.0  @ v4sf
	vldr	d30, [sp, #264]
	vldr	d31, [sp, #272]
	ldr	r3, [sp, #4]	@ float
	vmla.f32	q9, q8, q15
	vdup.32	q8, r3
	ldr	r9, [sp, #804]	@ float
	vmov	q10, q5  @ v4sf
	vstr	d16, [sp, #760]
	vstr	d17, [sp, #768]
	vldr	d10, [sp, #360]
	vldr	d11, [sp, #368]
	vdup.32	q8, r9
	ldr	r9, [sp, #816]	@ float
	vmla.f32	q13, q8, q5
	vdup.32	q8, r9
	ldr	r9, [sp, #824]	@ float
	vstr	d10, [sp, #136]
	vstr	d11, [sp, #144]
	vmla.f32	q11, q8, q1
	vldr	d8, [sp, #680]
	vldr	d9, [sp, #688]
	vdup.32	q8, r9
	vmov.f32	q5, #0.0  @ v4sf
	ldr	r9, [sp, #776]	@ float
	vmla.f32	q5, q8, q4
	vdup.32	q4, r9
	vmla.f32	q14, q4, q2
	ldr	r9, [sp, #780]	@ float
	vstr	d28, [sp, #216]
	vstr	d29, [sp, #224]
	vdup.32	q14, r9
	ldr	r9, [sp, #788]	@ float
	vmla.f32	q12, q14, q0
	vldr	d8, [sp, #648]
	vldr	d9, [sp, #656]
	vdup.32	q14, r9
	vmla.f32	q10, q14, q4
	vdup.32	q14, r0
	vmov	q8, q5  @ v4sf
	vmla.f32	q9, q14, q3
	vldr	d10, [sp, #264]
	vldr	d11, [sp, #272]
	vdup.32	q14, r1
	vmov.f32	q3, #0.0  @ v4sf
	ldr	r9, [sp, #808]	@ float
	vldr	d30, [sp, #376]
	vldr	d31, [sp, #384]
	vmla.f32	q3, q14, q5
	vdup.32	q5, r9
	vmla.f32	q13, q5, q15
	ldr	r9, [sp, #820]	@ float
	vldr	d10, [sp, #136]
	vldr	d11, [sp, #144]
	vstr	d26, [sp, #392]
	vstr	d27, [sp, #400]
	vdup.32	q13, r9
	ldr	r9, [sp, #828]	@ float
	vmla.f32	q11, q13, q5
	vdup.32	q13, r9
	ldr	r9, [sp, #832]	@ float
	vmla.f32	q8, q13, q1
	vldr	d8, [sp, #680]
	vldr	d9, [sp, #688]
	vdup.32	q13, r9
	vmov	q14, q3  @ v4sf
	vmov.f32	q3, #0.0  @ v4sf
	ldr	r9, [sp, #584]	@ float
	vmla.f32	q3, q13, q4
	vdup.32	q4, r9
	vmla.f32	q12, q4, q2
	ldr	r9, [sp, #792]	@ float
	vstr	d24, [sp, #232]
	vstr	d25, [sp, #240]
	vdup.32	q12, r9
	vmla.f32	q10, q12, q0
	vldr	d0, [sp, #104]
	vldr	d1, [sp, #112]
	vmov.32	r9, d1[1]
	vldr	d0, [sp, #120]
	vldr	d1, [sp, #128]
	vmov.32	r0, d1[0]
	vldr	d0, [sp, #40]
	vldr	d1, [sp, #48]
	vmov.32	r1, d1[1]
	vldr	d0, [sp, #56]
	vldr	d1, [sp, #64]
	vldr	d10, [sp, #664]
	vldr	d11, [sp, #672]
	vmov.32	r3, d1[0]
	vdup.32	q0, r5
	vmov	q13, q3  @ v4sf
	vldr	d24, [sp, #744]
	vldr	d25, [sp, #752]
	vldr	d6, [sp, #760]
	vldr	d7, [sp, #768]
	vmla.f32	q14, q0, q5
	vdup.32	q0, lr
	vmla.f32	q12, q3, q7
	vmla.f32	q11, q0, q15
	vstr	d24, [sp, #472]
	vstr	d25, [sp, #480]
	vdup.32	q12, r8
	vdup.32	q0, r2
	ldr	r2, [sp, #740]	@ float
	vldr	d10, [sp, #136]
	vldr	d11, [sp, #144]
	vldr	d6, [sp, #120]
	vldr	d7, [sp, #128]
	vdup.32	q4, ip
	vstr	d22, [sp, #408]
	vstr	d23, [sp, #416]
	vdup.32	q11, r2
	vmla.f32	q9, q12, q6
	vdup.32	q12, r9
	vmla.f32	q10, q11, q2
	vmov.32	r8, d7[1]
	vdup.32	q11, r1
	vldr	d6, [sp, #56]
	vldr	d7, [sp, #64]
	vmla.f32	q8, q4, q5
	vmla.f32	q9, q12, q7
	vmla.f32	q13, q0, q1
	vdup.32	q1, r0
	vstr	d20, [sp, #248]
	vstr	d21, [sp, #256]
	vmla.f32	q8, q11, q15
	vmov.32	r2, d7[1]
	vdup.32	q10, r3
	vstr	d18, [sp, #488]
	vstr	d19, [sp, #496]
	vmla.f32	q14, q1, q6
	vdup.32	q9, r8
	vstr	d16, [sp, #424]
	vstr	d17, [sp, #432]
	vmla.f32	q13, q10, q5
	vdup.32	q8, r2
	vmla.f32	q14, q9, q7
	add	r3, sp, #200
	vldmia	r3, {d6-d13}
	vmla.f32	q13, q8, q15
	vldmia	r3, {d16-d23}
	vstr	d28, [sp, #504]
	vstr	d29, [sp, #512]
	add	r2, sp, #1040
	vst4.32	{d6, d8, d10, d12}, [fp:64]
	add	r3, sp, #456
	vst4.32	{d17, d19, d21, d23}, [r2:64]
	vld4.32	{d0, d2, d4, d6}, [r6:64]
	vldmia	r3, {d16-d23}
	vstr	d26, [sp, #440]
	vstr	d27, [sp, #448]
	add	r2, sp, #1232
	vld4.32	{d1, d3, d5, d7}, [r2:64]
	add	r3, sp, #392
	add	r2, sp, #1104
	vst4.32	{d16, d18, d20, d22}, [r10:64]
	vst4.32	{d17, d19, d21, d23}, [r2:64]
	vldmia	r3, {d16-d23}
	vld4.32	{d24, d26, d28, d30}, [fp:64]
	add	r2, sp, #944
	vst4.32	{d16, d18, d20, d22}, [r2:64]
	add	r2, sp, #976
	vst4.32	{d17, d19, d21, d23}, [r2:64]
	add	r2, sp, #1328
	vst1.32	{d0-d1}, [r2:64]
	add	r2, sp, #1344
	vst1.32	{d2-d3}, [r2:64]
	add	r2, sp, #1360
	vst1.32	{d4-d5}, [r2:64]
	add	r2, sp, #1376
	vst1.32	{d6-d7}, [r2:64]
	add	r2, sp, #1040
	vld4.32	{d25, d27, d29, d31}, [r2:64]
	add	r2, sp, #1328
	vld4.32	{d16, d18, d20, d22}, [r2:64]
	add	r2, sp, #1360
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
	vstr	d4, [sp, #520]
	vstr	d5, [sp, #528]
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
	vld1.32	{d10-d11}, [r10:64]
	add	ip, sp, #1088
	vld1.32	{d8-d9}, [ip:64]
	vmla.f32	q13, q15, q14
	vstr	d6, [sp, #536]
	vstr	d7, [sp, #544]
	vmla.f32	q12, q2, q0
	vdup.32	q3, r3
	vmov.32	r3, d23[1]
	add	r2, sp, #880
	vst1.32	{d10-d11}, [r2:64]
	add	r2, sp, #896
	vst1.32	{d8-d9}, [r2:64]
	vstr	d26, [sp, #552]
	vstr	d27, [sp, #560]
	vmla.f32	q12, q3, q1
	vdup.32	q13, r3
	add	r2, sp, #1104
	vld1.32	{d0-d1}, [r2:64]
	add	r2, sp, #1120
	vld1.32	{d4-d5}, [r2:64]
	vmla.f32	q12, q13, q14
	add	r3, sp, #880
	vld4.32	{d16, d18, d20, d22}, [r3:64]
	add	r2, sp, #928
	add	r3, sp, #912
	vst1.32	{d0-d1}, [r3:64]
	vst1.32	{d4-d5}, [r2:64]
	vstr	d24, [sp, #568]
	vstr	d25, [sp, #576]
	vld4.32	{d17, d19, d21, d23}, [r3:64]
	add	r3, sp, #520
	vldmia	r3, {d6-d13}
	add	r2, sp, #944
	vld1.32	{d30-d31}, [r2:64]
	add	r2, sp, #960
	vld1.32	{d28-d29}, [r2:64]
	add	r2, sp, #976
	vld1.32	{d26-d27}, [r2:64]
	add	r2, sp, #992
	vld1.32	{d24-d25}, [r2:64]
	ldr	r3, [sp, #736]
	ldr	r5, [sp, #700]
	ldr	r8, [sp, #696]
	vst4.32	{d6, d8, d10, d12}, [r5]
	vst4.32	{d7, d9, d11, d13}, [r3]
	ldr	r3, [sp, #840]
	add	r2, r8, #16
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [sp, #868]
	str	r2, [sp, #696]
	vst1.32	{d18-d19}, [r3]
	ldr	r3, [sp, #848]
	ldr	r1, [sp, #728]
	vst1.32	{d20-d21}, [r3]
	ldr	r3, [sp, #844]
	add	r4, r4, #20
	vst1.32	{d22-d23}, [r3]
	ldr	r3, [sp, #852]
	vst1.32	{d30-d31}, [r1]
	ldr	r0, [sp, #732]
	vst1.32	{d28-d29}, [r3]
	ldr	r3, [sp, #856]
	cmp	r4, #80
	vst1.32	{d26-d27}, [r0]
	vst1.32	{d24-d25}, [r3]
	bne	.L3
	ldr	r3, [sp, #836]
	add	r3, r3, #20
	str	r3, [sp, #836]
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
	ldr	r3, [sp, #872]
	mov	r8, r5
	subs	r3, r3, #1
	str	r3, [sp, #872]
	bne	.L2
	add	sp, sp, #1392
	add	sp, sp, #4
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
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
