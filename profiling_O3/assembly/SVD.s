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
	@ args = 0, pretend = 0, frame = 600
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r4, r0
	sub	sp, sp, #604
	add	r5, sp, #152
	mov	fp, r1
	mov	r10, r2
	mov	r1, #0
	mov	r2, #64
	mov	r0, r5
	str	r3, [sp, #48]
	bl	memset
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #216
	bl	memset
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #280
	bl	memset
	mov	r3, r4
	mov	r2, r10
	vld1.32	{d16-d17}, [r3]!
	vst1.32	{d16-d17}, [r2]!
	vld1.32	{d16-d17}, [r3]
	vst1.32	{d16-d17}, [r2]
	add	r3, r4, #32
	str	r2, [sp, #84]
	movw	r2, #:lower16:.LANCHOR0
	vld1.32	{d16-d17}, [r3]
	movt	r2, #:upper16:.LANCHOR0
	add	r3, r10, #32
	vst1.32	{d16-d17}, [r3]
	mov	r3, r2
	add	r4, r4, #48
	vld1.32	{d16-d17}, [r3:64]!
	vld1.32	{d18-d19}, [r4]
	mov	ip, fp
	mov	r1, r3
	str	r3, [sp, #80]
	add	r3, r10, #48
	vst1.32	{d18-d19}, [r3]
	vst1.32	{d16-d17}, [ip]!
	vld1.32	{d16-d17}, [r1:64]
	vst1.32	{d16-d17}, [ip]
	mov	r3, r1
	add	r1, r2, #32
	vld1.32	{d16-d17}, [r1:64]
	add	r0, fp, #32
	vst1.32	{d16-d17}, [r0]
	str	r0, [sp, #68]
	add	r0, r2, #48
	vld1.32	{d16-d17}, [r0:64]
	str	ip, [sp, #64]
	add	ip, fp, #48
	vst1.32	{d16-d17}, [ip]
	vld1.32	{d22-d23}, [r2:64]
	vld1.32	{d20-d21}, [r3:64]
	vld1.32	{d18-d19}, [r1:64]
	vld1.32	{d16-d17}, [r0:64]
	add	r3, sp, #88
	vst1.32	{d22-d23}, [r3:64]
	add	r3, sp, #104
	vst1.32	{d20-d21}, [r3:64]
	add	r3, sp, #120
	vst1.32	{d18-d19}, [r3:64]
	add	r3, sp, #136
	vst1.32	{d16-d17}, [r3:64]
	vldr.32	s16, .L26
	mov	r0, r5
	str	r2, [sp, #76]
	str	ip, [sp, #72]
.L2:
	mov	r4, r10
	mov	r7, #0
	mov	r8, r0
.L5:
	mov	r6, r4
	mov	r5, #0
.L7:
	cmp	r7, r5
	add	r5, r5, #1
	beq	.L10
	vldr.32	s0, [r6]
	bl	SVD_abs
	vldr.32	s15, .L26+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bge	.L25
.L10:
	cmp	r5, #4
	add	r6, r6, #4
	bne	.L7
	add	r7, r7, #1
	cmp	r7, #4
	add	r4, r4, #16
	bne	.L5
	vldr.32	s16, .L26+4
	mov	r7, #0
	ldr	r6, [sp, #84]
	add	r4, r10, #80
.L11:
	sub	r5, r6, #16
.L14:
	vldmia.32	r5!, {s0}
	bl	SVD_abs
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, FPSCR
	vstrpl.32	s0, [r5, #-4]
	strmi	r7, [r5, #-4]	@ float
	cmp	r6, r5
	bne	.L14
	add	r6, r6, #16
	cmp	r6, r4
	bne	.L11
	add	sp, sp, #604
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L27:
	.align	2
.L26:
	.word	0
	.word	953267991
	.word	.LANCHOR0+32
.L25:
	mov	r3, #16
	mov	r0, r8
	str	r3, [sp, #44]
	ldr	r3, [sp, #48]
	add	r1, r10, #4
	add	r2, r3, #16
	str	r2, [sp, #52]
	add	r2, r3, #32
	add	r3, r3, #48
	str	r3, [sp, #60]
	add	r3, sp, #348
	str	r3, [sp, #12]
	add	r3, sp, #412
	str	r2, [sp, #56]
	str	r3, [sp, #16]
	add	ip, sp, #168
	add	r2, sp, #184
	add	r3, sp, #200
	add	r7, sp, #344
	add	r6, sp, #408
.L4:
	ldr	lr, [sp, #44]
	ldr	r4, [sp, #16]
	mov	r5, lr
	ldr	r9, [sp, #12]
	str	r4, [sp, #4]
	str	r1, [sp, #8]
	add	r4, lr, #4
.L3:
	ldr	lr, [sp, #76]
	add	r8, sp, #216
	vld1.32	{d22-d23}, [lr:64]
	ldr	lr, [sp, #80]
	vst1.32	{d22-d23}, [r8:64]
	vld1.32	{d20-d21}, [lr:64]
	ldr	lr, .L26+8
	vst1.32	{d20-d21}, [ip:64]
	vld1.32	{d18-d19}, [lr:64]
	add	lr, lr, #16
	vld1.32	{d16-d17}, [lr:64]
	vst1.32	{d18-d19}, [r2:64]
	add	ip, sp, #232
	add	r2, sp, #248
	vst1.32	{d20-d21}, [ip:64]
	vst1.32	{d18-d19}, [r2:64]
	vst1.32	{d16-d17}, [r3:64]
	add	ip, sp, #296
	add	r2, sp, #312
	add	r3, sp, #264
	vst1.32	{d20-d21}, [ip:64]
	vst1.32	{d18-d19}, [r2:64]
	vst1.32	{d16-d17}, [r3:64]
	add	ip, sp, #360
	add	r2, sp, #376
	add	r3, sp, #328
	vst1.32	{d20-d21}, [ip:64]
	vst1.32	{d18-d19}, [r2:64]
	vst1.32	{d16-d17}, [r3:64]
	add	r8, sp, #280
	add	ip, sp, #424
	add	r2, sp, #440
	add	r3, sp, #392
	vst1.32	{d22-d23}, [r8:64]
	vst1.32	{d20-d21}, [ip:64]
	vst1.32	{d18-d19}, [r2:64]
	vst1.32	{d16-d17}, [r3:64]
	add	r8, sp, #472
	add	ip, sp, #488
	add	r2, sp, #504
	add	r3, sp, #456
	vst1.32	{d22-d23}, [r8:64]
	vst1.32	{d20-d21}, [ip:64]
	vst1.32	{d18-d19}, [r2:64]
	vst1.32	{d16-d17}, [r3:64]
	add	ip, sp, #552
	add	r2, sp, #568
	add	r3, sp, #520
	add	r8, sp, #536
	vst1.32	{d22-d23}, [r0:64]
	vst1.32	{d20-d21}, [ip:64]
	vst1.32	{d18-d19}, [r2:64]
	vst1.32	{d22-d23}, [r7:64]
	vst1.32	{d22-d23}, [r6:64]
	vst1.32	{d22-d23}, [r8:64]
	vst1.32	{d16-d17}, [r3:64]
	add	r3, sp, #584
	vst1.32	{d16-d17}, [r3:64]
	ldr	r3, [sp, #8]
	add	r0, r10, r4
	add	lr, r10, r5
	vldmia.32	r3!, {s14}
	vldr.32	s15, [r1, #-4]
	vldr.32	s1, [r0]
	vldr.32	s0, [lr]
	vadd.f32	s19, s1, s15
	vsub.f32	s18, s0, s14
	vsub.f32	s1, s1, s15
	vadd.f32	s0, s0, s14
	str	r1, [sp, #40]
	str	r3, [sp, #8]
	bl	SVD_atan
	vmov.f32	s1, s19
	vmov.f32	s17, s0
	vmov.f32	s0, s18
	bl	SVD_atan
	vmov.f32	s15, #5.0e-1
	vsub.f32	s0, s17, s0
	vmul.f32	s18, s0, s15
	vmov.f32	s0, s18
	bl	SVD_cos
	ldr	r3, [sp, #12]
	vmov.f32	s24, s16
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s18
	bl	SVD_sin
	vneg.f32	s15, s0
	vmov.f32	s0, s18
	vstmia.32	r9!, {s15}
	bl	SVD_sin
	add	r3, r7, r5
	vstr.32	s0, [r3]
	vmov.f32	s0, s18
	bl	SVD_cos
	vsub.f32	s17, s17, s18
	add	r3, r7, r4
	vstr.32	s0, [r3]
	vmov.f32	s0, s17
	bl	SVD_cos
	ldr	r3, [sp, #16]
	vmov.f32	s30, s16
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s17
	bl	SVD_sin
	vneg.f32	s15, s0
	ldr	r3, [sp, #4]
	vmov.f32	s0, s17
	vstmia.32	r3!, {s15}
	str	r3, [sp, #4]
	bl	SVD_sin
	add	r3, r6, r5
	vstr.32	s0, [r3]
	vmov.f32	s0, s17
	bl	SVD_cos
	add	r3, r6, r4
	vstr.32	s0, [r3]
	vld4.32	{d24, d26, d28, d30}, [r7:64]
	vld4.32	{d16, d18, d20, d22}, [r6:64]
	add	r3, sp, #376
	vld4.32	{d25, d27, d29, d31}, [r3:64]
	add	r3, sp, #440
	vld4.32	{d17, d19, d21, d23}, [r3:64]
	add	r3, sp, #472
	vst1.32	{d24-d25}, [r3:64]
	add	r3, sp, #488
	vst1.32	{d26-d27}, [r3:64]
	add	r3, sp, #504
	vst1.32	{d28-d29}, [r3:64]
	add	r3, sp, #520
	vst1.32	{d30-d31}, [r3:64]
	add	r3, sp, #536
	vst1.32	{d16-d17}, [r3:64]
	add	r3, sp, #552
	vst1.32	{d18-d19}, [r3:64]
	add	r3, sp, #568
	vst1.32	{d20-d21}, [r3:64]
	add	r3, sp, #584
	vldr.32	s4, [sp, #472]
	vldr.32	s0, [sp, #488]
	vldr.32	s7, [sp, #504]
	vldr.32	s12, [sp, #520]
	vldr.32	s23, [sp, #476]
	vldr.32	s1, [sp, #492]
	vldr.32	s8, [sp, #508]
	vldr.32	s13, [sp, #524]
	vldr.32	s21, [sp, #480]
	vldr.32	s3, [sp, #496]
	vldr.32	s9, [sp, #512]
	vldr.32	s14, [sp, #528]
	vldr.32	s19, [sp, #484]
	vldr.32	s5, [sp, #500]
	vldr.32	s10, [sp, #516]
	vldr.32	s15, [sp, #532]
	vldr.32	s17, [fp]
	vldr.32	s18, [fp, #4]
	vldr.32	s6, [fp, #8]
	vst1.32	{d22-d23}, [r3:64]
	vldr.32	s11, [fp, #12]
	vldr.32	s2, [fp, #16]
	vmla.f32	s24, s2, s19
	vldr.32	s20, [fp, #48]
	vstr.32	s24, [sp, #36]
	vmov.f32	s24, s16
	vmla.f32	s24, s20, s4
	vldr.32	s22, [fp, #32]
	vstr.32	s24, [sp, #20]
	vmov.f32	s24, s16
	vmla.f32	s24, s23, s22
	vstr.32	s24, [sp, #28]
	vmov.f32	s24, s16
	vmov.f32	s26, s16
	vmla.f32	s24, s20, s23
	vmla.f32	s30, s17, s23
	vmla.f32	s26, s2, s23
	vmov.f32	s23, s24
	vmov.f32	s24, s16
	vmla.f32	s24, s21, s22
	vmov.f32	s27, s16
	vstr.32	s24, [sp, #32]
	vmov.f32	s25, s16
	vmov.f32	s24, s16
	vmla.f32	s27, s2, s4
	vmla.f32	s25, s2, s21
	vmla.f32	s24, s19, s22
	vmov.f32	s2, s16
	vmla.f32	s2, s4, s22
	vmov.f32	s22, s24
	vmov.f32	s24, s16
	vmov.f32	s29, s16
	vmla.f32	s24, s20, s21
	vmla.f32	s29, s17, s21
	vmov.f32	s21, s24
	vmov.f32	s24, s16
	vmov.f32	s31, s16
	vmla.f32	s24, s20, s19
	vmov.f32	s28, s16
	vmla.f32	s31, s17, s4
	vmla.f32	s28, s17, s19
	vldr.32	s17, [fp, #20]
	vmov.f32	s19, s24
	vldr.32	s24, [sp, #36]
	vmla.f32	s24, s17, s5
	vldr.32	s4, [fp, #52]
	vstr.32	s2, [sp, #24]
	vmla.f32	s27, s17, s0
	vldr.32	s2, [fp, #36]
	vmla.f32	s26, s17, s1
	vmla.f32	s25, s17, s3
	vstr.32	s24, [sp, #36]
	vldr.32	s17, [sp, #20]
	vldr.32	s24, [sp, #28]
	vmla.f32	s17, s4, s0
	vmla.f32	s24, s1, s2
	vmla.f32	s31, s18, s0
	vmla.f32	s30, s18, s1
	vmla.f32	s29, s18, s3
	vmla.f32	s28, s18, s5
	vldr.32	s20, [sp, #24]
	vldr.32	s18, [fp, #24]
	vmla.f32	s23, s4, s1
	vldr.32	s1, [sp, #32]
	vstr.32	s17, [sp, #20]
	vstr.32	s24, [sp, #24]
	vldr.32	s17, [fp, #40]
	vmla.f32	s20, s0, s2
	vmla.f32	s1, s3, s2
	vldr.32	s0, [fp, #56]
	vmla.f32	s22, s5, s2
	vmla.f32	s21, s4, s3
	vmla.f32	s19, s4, s5
	vmla.f32	s31, s6, s7
	vmla.f32	s30, s6, s8
	vmla.f32	s29, s6, s9
	vmla.f32	s28, s6, s10
	vmla.f32	s26, s8, s18
	vldr.32	s6, [fp, #28]
	vmla.f32	s25, s9, s18
	vldr.32	s24, [sp, #36]
	vldr.32	s4, [sp, #20]
	vldr.32	s3, [sp, #24]
	vldr.32	s5, [fp, #44]
	vmla.f32	s31, s11, s12
	vmla.f32	s30, s11, s13
	vmla.f32	s29, s11, s14
	vmla.f32	s28, s11, s15
	vmla.f32	s26, s13, s6
	vmla.f32	s25, s14, s6
	vmla.f32	s27, s7, s18
	vmla.f32	s24, s10, s18
	vmla.f32	s20, s7, s17
	vmla.f32	s4, s0, s7
	vmla.f32	s3, s8, s17
	vldr.32	s7, [fp, #60]
	vmla.f32	s23, s0, s8
	vmla.f32	s22, s10, s17
	vmla.f32	s19, s0, s10
	vmla.f32	s27, s12, s6
	vmla.f32	s24, s15, s6
	vmla.f32	s20, s12, s5
	vmla.f32	s4, s7, s12
	vmla.f32	s3, s13, s5
	vmla.f32	s23, s7, s13
	vmla.f32	s22, s15, s5
	vmla.f32	s19, s7, s15
	vmla.f32	s1, s9, s17
	vmla.f32	s21, s0, s9
	vstr.32	s31, [sp, #152]
	vstr.32	s30, [sp, #156]
	vstr.32	s29, [sp, #160]
	vmov.f32	s13, s16
	vstr.32	s28, [sp, #164]
	vmov.f32	s15, s16
	vldr.32	s8, [sp, #408]
	vldr.32	s10, [sp, #88]
	vldr.32	s11, [sp, #92]
	vldr.32	s12, [sp, #96]
	vstr.32	s26, [sp, #172]
	vstr.32	s25, [sp, #176]
	vmov.f32	s17, s16
	vldr.32	s25, [sp, #100]
	vmov.f32	s26, s16
	vmla.f32	s1, s14, s5
	vmla.f32	s21, s7, s14
	vmla.f32	s13, s8, s10
	vldr.32	s14, [sp, #424]
	vmla.f32	s15, s8, s11
	vmla.f32	s17, s8, s12
	vmla.f32	s26, s8, s25
	vstr.32	s3, [sp, #188]
	vmov.f32	s6, s16
	vmov.f32	s3, s16
	vmov.f32	s7, s16
	vmov.f32	s8, s16
	vldr.32	s9, [sp, #412]
	vmla.f32	s3, s10, s14
	vmla.f32	s6, s11, s14
	vmla.f32	s7, s12, s14
	vmla.f32	s8, s25, s14
	vstr.32	s24, [sp, #180]
	vldr.32	s14, [sp, #428]
	vldr.32	s24, [sp, #104]
	vstr.32	s20, [sp, #184]
	vstr.32	s23, [sp, #204]
	vldr.32	s20, [sp, #116]
	vldr.32	s23, [sp, #108]
	vstr.32	s21, [sp, #208]
	vldr.32	s21, [sp, #112]
	vldr.32	s18, [sp, #124]
	vldr.32	s0, [sp, #128]
	vmla.f32	s13, s9, s24
	vmla.f32	s15, s9, s23
	vmla.f32	s17, s9, s21
	vmla.f32	s26, s9, s20
	vmla.f32	s3, s24, s14
	vldr.32	s9, [sp, #416]
	vmla.f32	s6, s23, s14
	vmla.f32	s7, s21, s14
	vmla.f32	s8, s20, s14
	vstr.32	s1, [sp, #192]
	vldr.32	s14, [sp, #432]
	vldr.32	s1, [sp, #132]
	vstr.32	s19, [sp, #212]
	vldr.32	s19, [sp, #120]
	vldr.32	s2, [sp, #136]
	vmla.f32	s8, s1, s14
	vmla.f32	s13, s9, s19
	vmla.f32	s15, s9, s18
	vmla.f32	s17, s9, s0
	vmla.f32	s26, s9, s1
	vmla.f32	s3, s19, s14
	vldr.32	s9, [sp, #420]
	vmla.f32	s6, s18, s14
	vmla.f32	s7, s0, s14
	vstr.32	s27, [sp, #168]
	vstr.32	s22, [sp, #196]
	vstr.32	s4, [sp, #200]
	vldr.32	s4, [sp, #140]
	vldr.32	s5, [sp, #144]
	vldr.32	s14, [sp, #148]
	vldr.32	s22, [sp, #436]
	vmla.f32	s13, s9, s2
	vmla.f32	s15, s9, s4
	vmla.f32	s17, s9, s5
	vmla.f32	s26, s9, s14
	vmov.f32	s9, s8
	vmla.f32	s6, s4, s22
	vmla.f32	s7, s5, s22
	vmla.f32	s9, s14, s22
	vstr.32	s13, [sp, #280]
	vstr.32	s15, [sp, #284]
	vldr.32	s13, [sp, #440]
	vldr.32	s15, [sp, #456]
	vstr.32	s6, [sp, #300]
	vstr.32	s7, [sp, #304]
	vstr.32	s9, [sp, #308]
	vmov.f32	s6, s16
	vmov.f32	s7, s16
	vmov.f32	s8, s16
	vmov.f32	s9, s16
	vmla.f32	s6, s10, s13
	vmla.f32	s7, s10, s15
	vmla.f32	s8, s11, s13
	vmla.f32	s9, s11, s15
	vmov.f32	s10, s16
	vmov.f32	s11, s16
	vmla.f32	s10, s12, s13
	vmla.f32	s11, s25, s13
	vmov.f32	s13, s16
	vmla.f32	s13, s12, s15
	vmov.f32	s12, s13
	vmov.f32	s13, s16
	vmla.f32	s3, s2, s22
	vmla.f32	s13, s25, s15
	vldr.32	s22, [sp, #444]
	vldr.32	s15, [sp, #460]
	vmla.f32	s6, s24, s22
	vmla.f32	s7, s24, s15
	vmla.f32	s8, s23, s22
	vmla.f32	s9, s23, s15
	vmla.f32	s10, s21, s22
	vmla.f32	s11, s20, s22
	vmla.f32	s12, s21, s15
	vmla.f32	s13, s20, s15
	vstr.32	s17, [sp, #288]
	vldr.32	s15, [sp, #464]
	vldr.32	s17, [sp, #448]
	vmla.f32	s7, s19, s15
	vmla.f32	s6, s19, s17
	vmla.f32	s8, s18, s17
	vmla.f32	s9, s18, s15
	vmla.f32	s10, s0, s17
	vmla.f32	s11, s1, s17
	vmla.f32	s12, s0, s15
	vmla.f32	s13, s1, s15
	vstr.32	s3, [sp, #296]
	vldr.32	s15, [sp, #468]
	vldr.32	s3, [sp, #452]
	vmla.f32	s7, s2, s15
	vmla.f32	s6, s2, s3
	vmla.f32	s8, s4, s3
	vmla.f32	s9, s4, s15
	vmla.f32	s10, s5, s3
	vmla.f32	s11, s14, s3
	vmla.f32	s12, s5, s15
	vmla.f32	s13, s14, s15
	vldr.32	s21, [r10, #8]
	vldr.32	s14, [r10]
	vldr.32	s15, [r10, #4]
	vldr.32	s19, [r10, #12]
	vstr.32	s26, [sp, #292]
	vstr.32	s6, [sp, #312]
	vstr.32	s7, [sp, #328]
	vstr.32	s8, [sp, #316]
	vstr.32	s9, [sp, #332]
	vstr.32	s10, [sp, #320]
	vstr.32	s11, [sp, #324]
	vstr.32	s12, [sp, #336]
	vstr.32	s13, [sp, #340]
	vmov.f32	s31, s16
	vldr.32	s17, [r10, #16]
	vmov.f32	s30, s16
	vldr.32	s23, [sp, #344]
	vldr.32	s13, [sp, #360]
	vmov.f32	s29, s16
	vmov.f32	s28, s16
	vmov.f32	s27, s16
	vmov.f32	s26, s16
	vmov.f32	s25, s16
	vmov.f32	s24, s16
	vldr.32	s22, [sp, #376]
	vldr.32	s20, [sp, #392]
	vmla.f32	s31, s14, s23
	vmla.f32	s30, s15, s23
	vmla.f32	s29, s21, s23
	vmla.f32	s28, s19, s23
	vmla.f32	s27, s14, s13
	vmla.f32	s26, s15, s13
	vmla.f32	s25, s21, s13
	vmla.f32	s24, s19, s13
	vmov.f32	s23, s16
	vmov.f32	s13, s16
	vmla.f32	s23, s22, s14
	vmla.f32	s13, s20, s14
	vmov.f32	s14, s16
	vmla.f32	s14, s22, s15
	vstr.32	s14, [sp, #24]
	vmov.f32	s14, s16
	vmla.f32	s14, s20, s15
	vmov.f32	s15, s14
	vmov.f32	s14, s16
	vmla.f32	s14, s22, s21
	vstr.32	s14, [sp, #20]
	vmov.f32	s14, s16
	vmla.f32	s14, s22, s19
	vmov.f32	s22, s14
	vmov.f32	s14, s16
	vmla.f32	s14, s20, s21
	vmov.f32	s21, s16
	vmla.f32	s21, s20, s19
	vldr.32	s0, [r10, #20]
	vldr.32	s1, [r10, #24]
	vldr.32	s2, [r10, #28]
	vldr.32	s18, [sp, #348]
	vldr.32	s20, [sp, #380]
	vldr.32	s19, [sp, #396]
	vstr.32	s21, [sp, #32]
	vldr.32	s21, [sp, #364]
	vstr.32	s14, [sp, #28]
	vmla.f32	s31, s17, s18
	vmla.f32	s27, s17, s21
	vmla.f32	s26, s0, s21
	vmla.f32	s25, s1, s21
	vmla.f32	s24, s2, s21
	vmla.f32	s23, s20, s17
	vmla.f32	s13, s19, s17
	vldr.32	s14, [sp, #24]
	vldr.32	s17, [sp, #28]
	vldr.32	s21, [sp, #32]
	vmla.f32	s30, s0, s18
	vmla.f32	s14, s20, s0
	vmla.f32	s15, s19, s0
	vmla.f32	s17, s19, s1
	vmla.f32	s21, s19, s2
	vldr.32	s0, [sp, #20]
	vldr.32	s4, [r10, #32]
	vldr.32	s9, [r10, #48]
	vldr.32	s5, [r10, #36]
	vldr.32	s10, [r10, #52]
	vldr.32	s6, [r10, #40]
	vldr.32	s11, [r10, #56]
	vldr.32	s7, [r10, #44]
	vldr.32	s12, [r10, #60]
	vldr.32	s3, [sp, #352]
	vldr.32	s8, [sp, #356]
	vldr.32	s19, [sp, #368]
	vmla.f32	s29, s1, s18
	vmla.f32	s28, s2, s18
	vmla.f32	s0, s20, s1
	vldr.32	s18, [sp, #384]
	vmla.f32	s22, s20, s2
	vmov.f32	s1, s17
	vmov.f32	s2, s21
	vldr.32	s17, [sp, #400]
	vmla.f32	s31, s4, s3
	vmla.f32	s2, s17, s7
	vmla.f32	s30, s5, s3
	vmla.f32	s29, s6, s3
	vmla.f32	s27, s4, s19
	vmla.f32	s26, s5, s19
	vmla.f32	s25, s6, s19
	vmla.f32	s24, s7, s19
	vmla.f32	s23, s18, s4
	vmla.f32	s13, s17, s4
	vmla.f32	s14, s18, s5
	vldr.32	s4, [sp, #372]
	vmla.f32	s15, s17, s5
	vmla.f32	s0, s18, s6
	vldr.32	s5, [sp, #388]
	vmla.f32	s1, s17, s6
	vldr.32	s6, [sp, #404]
	vmla.f32	s27, s9, s4
	vmla.f32	s29, s11, s8
	vmla.f32	s26, s10, s4
	vmla.f32	s25, s11, s4
	vmla.f32	s24, s12, s4
	vmla.f32	s0, s5, s11
	vmla.f32	s1, s6, s11
	vmla.f32	s28, s7, s3
	vmla.f32	s22, s18, s7
	vmov.f32	s11, s2
	vldr.32	s7, [sp, #548]
	vmov.f32	s4, s16
	vmla.f32	s31, s9, s8
	vmla.f32	s23, s5, s9
	vmla.f32	s13, s6, s9
	vmla.f32	s14, s5, s10
	vmla.f32	s15, s6, s10
	vmla.f32	s28, s12, s8
	vmla.f32	s22, s5, s12
	vmla.f32	s11, s6, s12
	vldr.32	s5, [sp, #540]
	vldr.32	s12, [sp, #536]
	vldr.32	s6, [sp, #544]
	vmla.f32	s4, s27, s7
	vmov.f32	s20, s16
	vmov.f32	s19, s16
	vmov.f32	s18, s16
	vmov.f32	s21, s16
	vmov.f32	s17, s16
	vmov.f32	s2, s16
	vmov.f32	s3, s16
	vmla.f32	s20, s12, s31
	vmla.f32	s19, s5, s31
	vmla.f32	s18, s6, s31
	vmla.f32	s21, s7, s31
	vmla.f32	s17, s27, s12
	vmla.f32	s2, s27, s5
	vmla.f32	s3, s27, s6
	vstr.32	s31, [sp, #216]
	vstr.32	s27, [sp, #232]
	vmov.f32	s31, s16
	vmov.f32	s27, s4
	vmov.f32	s4, s16
	vmla.f32	s31, s13, s12
	vmla.f32	s4, s23, s12
	vmov.f32	s12, s16
	vmla.f32	s12, s23, s5
	vstr.32	s12, [sp, #20]
	vmov.f32	s12, s16
	vmla.f32	s12, s13, s5
	vmov.f32	s5, s12
	vmov.f32	s12, s16
	vmla.f32	s12, s23, s6
	vstr.32	s12, [sp, #24]
	vmov.f32	s12, s16
	vmla.f32	s12, s23, s7
	vstr.32	s23, [sp, #248]
	vmov.f32	s23, s12
	vmov.f32	s12, s16
	vmla.f32	s12, s13, s6
	vmov.f32	s6, s16
	vmla.f32	s30, s10, s8
	vmla.f32	s6, s13, s7
	vldr.32	s8, [sp, #552]
	vldr.32	s9, [sp, #568]
	vldr.32	s10, [sp, #584]
	vstr.32	s13, [sp, #264]
	vstr.32	s14, [sp, #252]
	vstr.32	s15, [sp, #268]
	vstr.32	s12, [sp, #28]
	vstr.32	s6, [sp, #32]
	vstr.32	s30, [sp, #220]
	vldr.32	s6, [sp, #556]
	vstr.32	s29, [sp, #224]
	vstr.32	s28, [sp, #228]
	vstr.32	s26, [sp, #236]
	vstr.32	s25, [sp, #240]
	vstr.32	s24, [sp, #244]
	vstr.32	s0, [sp, #256]
	vstr.32	s22, [sp, #260]
	vstr.32	s1, [sp, #272]
	vstr.32	s11, [sp, #276]
	vldr.32	s7, [sp, #560]
	vldr.32	s12, [sp, #20]
	vldr.32	s13, [sp, #564]
	vmla.f32	s4, s14, s8
	vmla.f32	s31, s15, s8
	vmla.f32	s12, s14, s6
	vmla.f32	s5, s15, s6
	vmla.f32	s20, s8, s30
	vmla.f32	s19, s6, s30
	vmla.f32	s17, s26, s8
	vmla.f32	s2, s26, s6
	vldr.32	s8, [sp, #24]
	vldr.32	s6, [sp, #32]
	vmla.f32	s8, s14, s7
	vmla.f32	s23, s14, s13
	vmla.f32	s6, s15, s13
	vldr.32	s14, [sp, #28]
	vmla.f32	s18, s7, s30
	vmla.f32	s14, s15, s7
	vmla.f32	s21, s13, s30
	vmla.f32	s3, s26, s7
	vmla.f32	s27, s26, s13
	vldr.32	s7, [sp, #576]
	vldr.32	s13, [sp, #580]
	vmov.f32	s15, s6
	vldr.32	s6, [sp, #572]
	add	r3, sp, #280
	vld1.32	{d18-d19}, [r3:64]
	add	r3, sp, #296
	vld1.32	{d16-d17}, [r3:64]
	vmla.f32	s20, s9, s29
	vmla.f32	s18, s7, s29
	vmla.f32	s21, s13, s29
	vmla.f32	s17, s25, s9
	vmla.f32	s3, s25, s7
	vmla.f32	s27, s25, s13
	vmla.f32	s4, s0, s9
	vmla.f32	s31, s1, s9
	vmla.f32	s8, s0, s7
	vldr.32	s9, [sp, #592]
	vmla.f32	s23, s0, s13
	vmla.f32	s14, s1, s7
	vmla.f32	s15, s1, s13
	vldr.32	s7, [sp, #588]
	vldr.32	s13, [sp, #596]
	vmla.f32	s19, s6, s29
	vmla.f32	s2, s25, s6
	vmla.f32	s12, s0, s6
	vmla.f32	s5, s1, s6
	add	r3, sp, #88
	vst1.32	{d18-d19}, [r3:64]
	add	r3, sp, #104
	vst1.32	{d16-d17}, [r3:64]
	vmla.f32	s20, s10, s28
	vmla.f32	s19, s7, s28
	vmla.f32	s18, s9, s28
	vmla.f32	s21, s28, s13
	vmla.f32	s17, s24, s10
	vmla.f32	s2, s24, s7
	vmla.f32	s3, s24, s9
	vmla.f32	s27, s24, s13
	vmla.f32	s4, s22, s10
	vmla.f32	s31, s11, s10
	vmla.f32	s12, s22, s7
	vmla.f32	s5, s11, s7
	vmla.f32	s8, s22, s9
	vmla.f32	s23, s22, s13
	vmla.f32	s14, s11, s9
	vmla.f32	s15, s11, s13
	add	r3, sp, #312
	vstr.32	s20, [r10]
	vstr.32	s19, [r10, #4]
	vstr.32	s18, [r10, #8]
	vstr.32	s21, [r10, #12]
	vstr.32	s17, [r10, #16]
	vstr.32	s2, [r10, #20]
	vstr.32	s3, [r10, #24]
	vstr.32	s27, [r10, #28]
	vstr.32	s4, [r10, #32]
	vstr.32	s31, [r10, #48]
	vstr.32	s12, [r10, #36]
	vstr.32	s5, [r10, #52]
	vstr.32	s8, [r10, #40]
	vstr.32	s23, [r10, #44]
	vstr.32	s14, [r10, #56]
	vstr.32	s15, [r10, #60]
	vld1.32	{d18-d19}, [r3:64]
	add	r3, sp, #328
	vld1.32	{d16-d17}, [r3:64]
	add	r3, sp, #120
	vst1.32	{d18-d19}, [r3:64]
	add	r3, sp, #136
	vst1.32	{d16-d17}, [r3:64]
	add	r3, sp, #88
	vld4.32	{d16, d18, d20, d22}, [r3:64]
	add	r1, sp, #120
	vld4.32	{d17, d19, d21, d23}, [r1:64]
	add	ip, sp, #168
	add	r1, sp, #152
	vld1.32	{d30-d31}, [r1:64]
	vld1.32	{d28-d29}, [ip:64]
	add	r2, sp, #184
	vld1.32	{d26-d27}, [r2:64]
	add	r3, sp, #200
	vld1.32	{d24-d25}, [r3:64]
	ldr	r1, [sp, #48]
	add	r4, r4, #20
	vst1.32	{d16-d17}, [r1]
	ldr	r1, [sp, #52]
	cmp	r4, #80
	vst1.32	{d18-d19}, [r1]
	ldr	r1, [sp, #56]
	add	r5, r5, #16
	vst1.32	{d20-d21}, [r1]
	ldr	r1, [sp, #60]
	add	r0, sp, #152
	vst1.32	{d22-d23}, [r1]
	ldr	r1, [sp, #64]
	vst1.32	{d30-d31}, [fp]
	vst1.32	{d28-d29}, [r1]
	ldr	r1, [sp, #68]
	vst1.32	{d26-d27}, [r1]
	ldr	r1, [sp, #72]
	vst1.32	{d24-d25}, [r1]
	ldr	r1, [sp, #40]
	bne	.L3
	ldr	lr, [sp, #44]
	add	r1, r1, #20
	add	lr, lr, #20
	str	lr, [sp, #44]
	cmp	lr, #76
	ldr	lr, [sp, #12]
	add	lr, lr, #20
	str	lr, [sp, #12]
	ldr	lr, [sp, #16]
	add	lr, lr, #20
	str	lr, [sp, #16]
	bne	.L4
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
