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
	@ args = 0, pretend = 0, frame = 560
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r4, r0
	mov	fp, r2
	sub	sp, sp, #564
	mov	r2, #64
	mov	r10, r1
	add	r0, sp, #176
	mov	r1, #0
	str	r3, [sp, #80]
	bl	memset
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #240
	bl	memset
	add	r2, fp, #16
	add	r3, r4, #16
	cmp	fp, r3
	cmpcc	r4, r2
	str	r2, [sp, #108]
	bcc	.L2
	vld1.32	{q8}, [r4]
	vst1.32	{q8}, [fp]
	vld1.32	{q8}, [r3]
	vst1.32	{q8}, [r2]
	add	r3, r4, #32
	vld1.32	{q8}, [r3]
	add	r3, fp, #32
	vst1.32	{q8}, [r3]
	add	r4, r4, #48
	vld1.32	{q8}, [r4]
	add	r3, fp, #48
	vst1.32	{q8}, [r3]
.L3:
	movw	r9, #:lower16:.LANCHOR0
	movt	r9, #:upper16:.LANCHOR0
	add	r2, r10, #16
	add	r3, r9, #16
	cmp	r10, r3
	cmpcc	r9, r2
	str	r2, [sp, #104]
	bcc	.L4
	vld1.64	{d16-d17}, [r9:64]
	vst1.32	{q8}, [r10]
	vldr	d16, [r9, #16]
	vldr	d17, [r9, #24]
	vst1.32	{q8}, [r2]
	vldr	d16, [r9, #32]
	vldr	d17, [r9, #40]
	add	r3, r10, #32
	vst1.32	{q8}, [r3]
	vldr	d16, [r9, #48]
	vldr	d17, [r9, #56]
	add	r3, r10, #48
	vst1.32	{q8}, [r3]
.L5:
	vldr	d22, [r9, #16]
	vldr	d23, [r9, #24]
	vldr	d20, [r9, #32]
	vldr	d21, [r9, #40]
	vldr	d18, [r9, #48]
	vldr	d19, [r9, #56]
	vld1.64	{d16-d17}, [r9:64]
	vstr	d22, [sp, #128]
	vstr	d23, [sp, #136]
	vstr	d20, [sp, #144]
	vstr	d21, [sp, #152]
	vstr	d18, [sp, #160]
	vstr	d19, [sp, #168]
	vstr	d16, [sp, #112]
	vstr	d17, [sp, #120]
	vldr.32	s3, .L29
.L6:
	mov	r6, fp
	mov	r7, #0
.L9:
	mov	r5, r6
	mov	r4, #0
.L11:
	cmp	r7, r4
	add	r4, r4, #1
	beq	.L14
	vldr.32	s0, [r5]
	vstr.32	s3, [sp, #4]	@ int
	bl	SVD_abs
	vldr.32	s15, .L29+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s3, [sp, #4]	@ int
	bge	.L28
.L14:
	cmp	r4, #4
	add	r5, r5, #4
	bne	.L11
	add	r7, r7, #1
	cmp	r7, #4
	add	r6, r6, #16
	bne	.L9
	vldr.32	s16, .L29+4
	mov	r7, #0
	ldr	r6, [sp, #108]
	add	r4, fp, #80
.L15:
	sub	r5, r6, #16
.L18:
	vldmia.32	r5!, {s0}
	bl	SVD_abs
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, FPSCR
	vstrpl.32	s0, [r5, #-4]
	strmi	r7, [r5, #-4]	@ float
	cmp	r6, r5
	bne	.L18
	add	r6, r6, #16
	cmp	r4, r6
	bne	.L15
	add	sp, sp, #564
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L30:
	.align	2
.L29:
	.word	0
	.word	953267991
.L28:
	mov	r3, #16
	str	r3, [sp, #76]
	ldr	r3, [sp, #80]
	add	r0, fp, #4
	add	r2, r3, #16
	str	r2, [sp, #84]
	add	r2, r3, #32
	str	r2, [sp, #88]
	mov	r2, r9
	add	r3, r3, #48
	str	r3, [sp, #92]
	add	r3, sp, #308
	str	r3, [sp, #12]
	add	r3, sp, #372
	str	r3, [sp, #8]
	add	r3, r10, #32
	str	r3, [sp, #100]
	add	r3, r10, #48
	str	r3, [sp, #96]
	add	r6, sp, #304
	add	r5, sp, #368
.L8:
	ldr	r3, [sp, #76]
	ldr	r7, [sp, #12]
	add	r9, r3, #4
	str	r7, [sp, #4]
	mov	r4, r3
	mov	r7, r9
	mov	r9, r0
	ldr	r8, [sp, #8]
.L7:
	add	lr, fp, r4
	add	ip, fp, r7
	vldr.32	s15, [r0, #-4]
	vldmia.32	r9!, {s14}
	vldr.32	s0, [lr]
	vldr.32	s1, [ip]
	vldr	d20, [r2, #16]
	vldr	d21, [r2, #24]
	vldr	d18, [r2, #32]
	vldr	d19, [r2, #40]
	vld1.64	{d22-d23}, [r2:64]
	vldr	d16, [r2, #48]
	vldr	d17, [r2, #56]
	vsub.f32	s17, s0, s14
	vadd.f32	s18, s1, s15
	vadd.f32	s0, s0, s14
	vsub.f32	s1, s1, s15
	vstr.32	s3, [sp, #16]	@ int
	str	r0, [sp, #72]
	str	r2, [sp, #68]
	vstr	d22, [sp, #240]
	vstr	d23, [sp, #248]
	vstr	d22, [sp, #304]
	vstr	d23, [sp, #312]
	vstr	d22, [sp, #368]
	vstr	d23, [sp, #376]
	vstr	d22, [sp, #432]
	vstr	d23, [sp, #440]
	vstr	d22, [sp, #496]
	vstr	d23, [sp, #504]
	vstr	d20, [sp, #192]
	vstr	d21, [sp, #200]
	vstr	d20, [sp, #256]
	vstr	d21, [sp, #264]
	vstr	d20, [sp, #320]
	vstr	d21, [sp, #328]
	vstr	d20, [sp, #384]
	vstr	d21, [sp, #392]
	vstr	d20, [sp, #448]
	vstr	d21, [sp, #456]
	vstr	d20, [sp, #512]
	vstr	d21, [sp, #520]
	vstr	d18, [sp, #208]
	vstr	d19, [sp, #216]
	vstr	d18, [sp, #272]
	vstr	d19, [sp, #280]
	vstr	d18, [sp, #336]
	vstr	d19, [sp, #344]
	vstr	d18, [sp, #400]
	vstr	d19, [sp, #408]
	vstr	d18, [sp, #464]
	vstr	d19, [sp, #472]
	vstr	d18, [sp, #528]
	vstr	d19, [sp, #536]
	vstr	d16, [sp, #224]
	vstr	d17, [sp, #232]
	vstr	d16, [sp, #288]
	vstr	d17, [sp, #296]
	vstr	d16, [sp, #352]
	vstr	d17, [sp, #360]
	vstr	d16, [sp, #416]
	vstr	d17, [sp, #424]
	vstr	d16, [sp, #480]
	vstr	d17, [sp, #488]
	vstr	d16, [sp, #544]
	vstr	d17, [sp, #552]
	bl	SVD_atan
	vmov.f32	s1, s18
	vmov.f32	s16, s0
	vmov.f32	s0, s17
	bl	SVD_atan
	vmov.f32	s15, #5.0e-1
	vsub.f32	s0, s16, s0
	vmul.f32	s17, s0, s15
	vmov.f32	s0, s17
	bl	SVD_cos
	ldr	r3, [sp, #12]
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s17
	bl	SVD_sin
	vneg.f32	s15, s0
	ldr	r3, [sp, #4]
	vmov.f32	s0, s17
	vstmia.32	r3!, {s15}
	str	r3, [sp, #4]
	bl	SVD_sin
	add	ip, r6, r4
	vstr.32	s0, [ip]
	vmov.f32	s0, s17
	bl	SVD_cos
	vsub.f32	s16, s16, s17
	add	ip, r6, r7
	vstr.32	s0, [ip]
	vmov.f32	s0, s16
	bl	SVD_cos
	ldr	r3, [sp, #8]
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s16
	bl	SVD_sin
	vneg.f32	s15, s0
	vmov.f32	s0, s16
	vstmia.32	r8!, {s15}
	bl	SVD_sin
	add	ip, r5, r4
	vstr.32	s0, [ip]
	vmov.f32	s0, s16
	bl	SVD_cos
	add	ip, r5, r7
	vstr.32	s0, [ip]
	vld4.32	{d24, d26, d28, d30}, [r6:64]
	vld4.32	{d16, d18, d20, d22}, [r5:64]
	add	r3, sp, #336
	vld4.32	{d25, d27, d29, d31}, [r3:64]
	add	r3, sp, #400
	vld4.32	{d17, d19, d21, d23}, [r3:64]
	add	r3, sp, #432
	vst1.32	{d24-d25}, [r3:64]
	add	r3, sp, #448
	vst1.32	{d26-d27}, [r3:64]
	add	r3, sp, #464
	vst1.32	{d28-d29}, [r3:64]
	add	r3, sp, #480
	vst1.32	{d30-d31}, [r3:64]
	add	r3, sp, #496
	vst1.32	{d16-d17}, [r3:64]
	add	r3, sp, #512
	vst1.32	{d18-d19}, [r3:64]
	add	r3, sp, #528
	vst1.32	{d20-d21}, [r3:64]
	add	r3, sp, #544
	vldr.32	s4, [sp, #432]
	vldr.32	s16, [sp, #448]
	vldr.32	s7, [sp, #464]
	vldr.32	s12, [sp, #480]
	vldr.32	s23, [sp, #436]
	vldr.32	s0, [sp, #452]
	vldr.32	s8, [sp, #468]
	vldr.32	s13, [sp, #484]
	vldr.32	s21, [sp, #440]
	vldr.32	s2, [sp, #456]
	vldr.32	s9, [sp, #472]
	vldr.32	s14, [sp, #488]
	vldr.32	s19, [sp, #444]
	vldr.32	s5, [sp, #460]
	vldr.32	s10, [sp, #476]
	vldr.32	s15, [sp, #492]
	vldr.32	s17, [r10]
	vldr.32	s18, [r10, #4]
	vldr.32	s6, [r10, #8]
	vst1.32	{d22-d23}, [r3:64]
	vldr.32	s11, [r10, #12]
	vldr.32	s3, [sp, #16]	@ int
	vldr.32	s1, [r10, #16]
	vmov.f32	s24, s3
	vmla.f32	s24, s19, s1
	vldr.32	s20, [r10, #48]
	vstr.32	s24, [sp, #16]
	vmov.f32	s24, s3
	vmla.f32	s24, s20, s4
	vldr.32	s22, [r10, #32]
	vstr.32	s24, [sp, #20]
	vmov.f32	s24, s3
	vmla.f32	s24, s23, s22
	vstr.32	s24, [sp, #28]
	vmov.f32	s24, s3
	vmov.f32	s30, s3
	vmla.f32	s24, s20, s23
	vmov.f32	s26, s3
	vmla.f32	s30, s17, s23
	vmla.f32	s26, s23, s1
	vmov.f32	s23, s24
	vmov.f32	s24, s3
	vmla.f32	s24, s21, s22
	vmov.f32	s27, s3
	vstr.32	s24, [sp, #32]
	vmov.f32	s25, s3
	vmov.f32	s24, s3
	vmla.f32	s27, s4, s1
	vmla.f32	s25, s21, s1
	vmla.f32	s24, s19, s22
	vmov.f32	s1, s3
	vmla.f32	s1, s4, s22
	vmov.f32	s22, s24
	vmov.f32	s24, s3
	vmov.f32	s29, s3
	vmla.f32	s24, s20, s21
	vmla.f32	s29, s17, s21
	vmov.f32	s21, s24
	vmov.f32	s24, s3
	vmov.f32	s31, s3
	vmla.f32	s24, s20, s19
	vmov.f32	s28, s3
	vmla.f32	s31, s17, s4
	vmla.f32	s28, s17, s19
	vldr.32	s17, [r10, #20]
	vmov.f32	s19, s24
	vldr.32	s24, [sp, #16]
	vmla.f32	s24, s5, s17
	vldr.32	s4, [r10, #52]
	vstr.32	s1, [sp, #24]
	vmla.f32	s27, s16, s17
	vldr.32	s1, [r10, #36]
	vmla.f32	s26, s0, s17
	vmla.f32	s25, s2, s17
	vstr.32	s24, [sp, #16]
	vldr.32	s17, [sp, #20]
	vldr.32	s24, [sp, #28]
	vmla.f32	s17, s4, s16
	vmla.f32	s24, s0, s1
	vmla.f32	s30, s18, s0
	vldr.32	s20, [sp, #24]
	vmla.f32	s23, s4, s0
	vldr.32	s0, [sp, #32]
	vstr.32	s17, [sp, #20]
	vstr.32	s24, [sp, #24]
	vldr.32	s17, [r10, #40]
	vmla.f32	s31, s18, s16
	vmla.f32	s29, s18, s2
	vmla.f32	s28, s18, s5
	vmla.f32	s20, s16, s1
	vldr.32	s18, [r10, #24]
	vldr.32	s16, [r10, #56]
	vmla.f32	s0, s2, s1
	vmla.f32	s21, s4, s2
	vmla.f32	s19, s4, s5
	vldr.32	s2, [sp, #24]
	vldr.32	s4, [sp, #20]
	vmla.f32	s22, s5, s1
	vmla.f32	s31, s6, s7
	vldr.32	s5, [r10, #28]
	vmla.f32	s30, s6, s8
	vmla.f32	s29, s6, s9
	vmla.f32	s28, s6, s10
	vmla.f32	s27, s7, s18
	vldr.32	s6, [r10, #44]
	vmla.f32	s25, s9, s18
	vmla.f32	s20, s7, s17
	vmla.f32	s4, s16, s7
	vmla.f32	s2, s8, s17
	vldr.32	s7, [r10, #60]
	vmla.f32	s0, s9, s17
	vmla.f32	s21, s16, s9
	vldr.32	s24, [sp, #16]
	vmla.f32	s31, s11, s12
	vmla.f32	s30, s11, s13
	vmla.f32	s29, s11, s14
	vmla.f32	s25, s14, s5
	vmla.f32	s4, s7, s12
	vmla.f32	s2, s13, s6
	vmla.f32	s0, s14, s6
	vmla.f32	s21, s7, s14
	vmla.f32	s26, s8, s18
	vmla.f32	s24, s10, s18
	vmla.f32	s23, s16, s8
	vmla.f32	s22, s10, s17
	vmla.f32	s19, s16, s10
	vmla.f32	s28, s11, s15
	vmla.f32	s27, s12, s5
	vmla.f32	s26, s13, s5
	vmla.f32	s24, s15, s5
	vmla.f32	s20, s12, s6
	vmla.f32	s23, s7, s13
	vmla.f32	s22, s15, s6
	vmla.f32	s19, s7, s15
	vstr.32	s31, [sp, #176]
	vstr.32	s30, [sp, #180]
	vmov.f32	s12, s3
	vstr.32	s29, [sp, #184]
	vmov.f32	s13, s3
	vldr.32	s15, [fp, #4]
	vldr.32	s16, [fp, #8]
	vldr.32	s1, [fp, #12]
	vldr.32	s14, [sp, #304]
	vstr.32	s25, [sp, #200]
	vstr.32	s4, [sp, #224]
	vstr.32	s2, [sp, #212]
	vstr.32	s0, [sp, #216]
	vldr.32	s2, [fp]
	vldr.32	s0, [sp, #320]
	vstr.32	s21, [sp, #232]
	vmov.f32	s25, s3
	vmov.f32	s4, s3
	vmov.f32	s21, s3
	vldr.32	s11, [fp, #16]
	vldr.32	s18, [fp, #24]
	vldr.32	s5, [fp, #28]
	vmla.f32	s25, s14, s2
	vmla.f32	s12, s14, s15
	vmla.f32	s13, s14, s16
	vmla.f32	s4, s14, s1
	vmla.f32	s21, s1, s0
	vstr.32	s20, [sp, #208]
	vstr.32	s23, [sp, #228]
	vldr.32	s20, [fp, #20]
	vldr.32	s23, [sp, #308]
	vstr.32	s22, [sp, #220]
	vstr.32	s19, [sp, #236]
	vmov.f32	s14, s3
	vmov.f32	s22, s3
	vmov.f32	s19, s3
	vldr.32	s8, [sp, #112]
	vldr.32	s6, [sp, #372]
	vldr.32	s10, [sp, #116]
	vldr.32	s7, [sp, #388]
	vldr.32	s17, [fp, #32]
	vldr.32	s9, [fp, #48]
	vmla.f32	s14, s2, s0
	vmla.f32	s22, s15, s0
	vmla.f32	s19, s16, s0
	vmla.f32	s25, s23, s11
	vmla.f32	s12, s23, s20
	vmla.f32	s13, s23, s18
	vmla.f32	s4, s23, s5
	vstr.32	s28, [sp, #188]
	vstr.32	s27, [sp, #192]
	vstr.32	s26, [sp, #196]
	vldr.32	s27, [sp, #368]
	vldr.32	s26, [sp, #384]
	vstr.32	s24, [sp, #204]
	vmov.f32	s0, s21
	vldr.32	s21, [sp, #324]
	vldr.32	s23, [sp, #312]
	vldr.32	s24, [fp, #36]
	vmla.f32	s12, s24, s23
	vldr.32	s24, [fp, #40]
	vmla.f32	s13, s24, s23
	vldr.32	s24, [fp, #44]
	vmla.f32	s14, s11, s21
	vmla.f32	s22, s20, s21
	vmla.f32	s19, s18, s21
	vmla.f32	s0, s5, s21
	vmla.f32	s25, s17, s23
	vldr.32	s21, [sp, #328]
	vmla.f32	s4, s24, s23
	vldr.32	s23, [fp, #36]
	vmla.f32	s22, s23, s21
	vldr.32	s23, [fp, #40]
	vmla.f32	s0, s24, s21
	vmla.f32	s19, s23, s21
	vldr.32	s24, [fp, #52]
	vldr.32	s23, [sp, #316]
	vmla.f32	s12, s23, s24
	vldr.32	s24, [fp, #56]
	vmla.f32	s13, s23, s24
	vldr.32	s24, [fp, #60]
	vmla.f32	s25, s23, s9
	vmla.f32	s4, s23, s24
	vmla.f32	s14, s17, s21
	vldr.32	s23, [fp, #52]
	vldr.32	s21, [sp, #332]
	vmla.f32	s22, s23, s21
	vmla.f32	s0, s24, s21
	vldr.32	s23, [fp, #56]
	vmla.f32	s14, s9, s21
	vmla.f32	s19, s23, s21
	vstr.32	s0, [sp, #32]
	vldr.32	s21, [sp, #352]
	vstr.32	s0, [sp, #268]
	vmov.f32	s29, s3
	vldr.32	s0, [sp, #336]
	vmov.f32	s28, s3
	vmla.f32	s29, s2, s0
	vmla.f32	s28, s21, s2
	vstr.32	s19, [sp, #36]
	vldr.32	s2, [sp, #356]
	vstr.32	s19, [sp, #264]
	vmov.f32	s23, s3
	vldr.32	s19, [sp, #340]
	vmla.f32	s28, s2, s11
	vmla.f32	s29, s11, s19
	vmla.f32	s23, s21, s15
	vmov.f32	s11, s3
	vmov.f32	s24, s3
	vmla.f32	s11, s15, s0
	vmov.f32	s15, s23
	vldr.32	s23, [sp, #496]
	vldr.32	s30, [sp, #500]
	vmla.f32	s24, s25, s23
	vmov.f32	s23, s3
	vstr.32	s25, [sp, #240]
	vmla.f32	s23, s25, s30
	vstr.32	s12, [sp, #244]
	vstr.32	s13, [sp, #248]
	vstr.32	s4, [sp, #252]
	vstr.32	s14, [sp, #256]
	vstr.32	s22, [sp, #40]
	vstr.32	s22, [sp, #260]
	vmov.f32	s30, s3
	vldr.32	s31, [sp, #504]
	vmla.f32	s30, s25, s31
	vldr.32	s31, [sp, #508]
	vmov.f32	s22, s30
	vmov.f32	s30, s3
	vmla.f32	s30, s25, s31
	vmov.f32	s25, s30
	vldr.32	s30, [sp, #344]
	vmla.f32	s29, s17, s30
	vldr.32	s30, [sp, #360]
	vmla.f32	s28, s30, s17
	vmov.f32	s30, s3
	vmov.f32	s17, s3
	vmla.f32	s30, s1, s0
	vmla.f32	s17, s16, s0
	vmov.f32	s0, s30
	vmov.f32	s30, s3
	vmla.f32	s30, s21, s16
	vmla.f32	s11, s20, s19
	vmov.f32	s16, s30
	vmov.f32	s30, s3
	vstr.32	s11, [sp, #24]
	vmla.f32	s30, s21, s1
	vldr.32	s11, [sp, #120]
	vmov.f32	s31, s3
	vstr.32	s30, [sp, #20]
	vmla.f32	s15, s2, s20
	vmla.f32	s31, s27, s11
	vmov.f32	s21, s3
	vldr.32	s11, [sp, #124]
	vmov.f32	s20, s3
	vmov.f32	s30, s3
	vmla.f32	s21, s27, s8
	vmla.f32	s20, s27, s10
	vmla.f32	s30, s27, s11
	vmov.f32	s27, s3
	vmla.f32	s27, s8, s26
	vstr.32	s29, [sp, #28]
	vmov.f32	s29, s27
	vmov.f32	s27, s3
	vmla.f32	s27, s10, s26
	vstr.32	s28, [sp, #16]
	vldr.32	s11, [sp, #120]
	vmov.f32	s28, s27
	vmov.f32	s27, s3
	vldr.32	s1, [sp, #124]
	vmla.f32	s27, s11, s26
	vmov.f32	s11, s3
	vmla.f32	s11, s1, s26
	vmov.f32	s26, s11
	vldr.32	s11, [sp, #512]
	vmla.f32	s24, s12, s11
	vldr.32	s11, [sp, #516]
	vmla.f32	s23, s12, s11
	vldr.32	s11, [sp, #520]
	vmla.f32	s22, s12, s11
	vldr.32	s11, [sp, #524]
	vmla.f32	s25, s12, s11
	vldr.32	s11, [sp, #128]
	vmla.f32	s21, s6, s11
	vldr.32	s11, [sp, #132]
	vmla.f32	s20, s6, s11
	vldr.32	s11, [sp, #136]
	vmla.f32	s31, s6, s11
	vldr.32	s11, [sp, #140]
	vmla.f32	s30, s6, s11
	vldr.32	s11, [sp, #128]
	vmla.f32	s29, s11, s7
	vldr.32	s11, [sp, #132]
	vmla.f32	s28, s11, s7
	vldr.32	s11, [sp, #136]
	vmla.f32	s27, s11, s7
	vldr.32	s11, [sp, #140]
	vmov.f32	s12, s25
	vmla.f32	s26, s11, s7
	vmov.f32	s25, s3
	vldr.32	s11, [sp, #400]
	vldr.32	s7, [sp, #416]
	vmla.f32	s25, s8, s11
	vmov.f32	s11, s3
	vldr.32	s1, [sp, #20]
	vmla.f32	s11, s8, s7
	vmla.f32	s16, s2, s18
	vmla.f32	s1, s2, s5
	vmov.f32	s8, s11
	vldr.32	s2, [sp, #28]
	vldr.32	s11, [sp, #348]
	vmla.f32	s0, s5, s19
	vmla.f32	s2, s9, s11
	vldr.32	s5, [sp, #16]
	vldr.32	s11, [sp, #364]
	vmla.f32	s5, s11, s9
	vstr.32	s2, [sp, #272]
	vmov.f32	s9, s3
	vstr.32	s5, [sp, #288]
	vldr.32	s11, [sp, #400]
	vmla.f32	s9, s10, s11
	vmov.f32	s11, s3
	vmla.f32	s11, s10, s7
	vldr.32	s6, [sp, #24]
	vldr.32	s7, [sp, #344]
	vmov.f32	s10, s11
	vldr.32	s11, [fp, #36]
	vmla.f32	s6, s11, s7
	vldr.32	s7, [sp, #360]
	vmov.f32	s11, s6
	vldr.32	s6, [fp, #36]
	vldr.32	s5, [sp, #400]
	vmla.f32	s15, s7, s6
	vldr.32	s6, [sp, #120]
	vmov.f32	s7, s3
	vmla.f32	s17, s18, s19
	vmla.f32	s7, s6, s5
	vldr.32	s18, [sp, #400]
	vldr.32	s5, [sp, #124]
	vmov.f32	s6, s3
	vldr.32	s19, [sp, #416]
	vmla.f32	s6, s5, s18
	vldr.32	s18, [sp, #120]
	vmov.f32	s5, s3
	vmla.f32	s5, s18, s19
	vldr.32	s2, [sp, #416]
	vmov.f32	s19, s5
	vmov.f32	s18, s3
	vldr.32	s5, [sp, #124]
	vmla.f32	s18, s5, s2
	vldr.32	s5, [sp, #528]
	vmla.f32	s24, s13, s5
	vldr.32	s5, [sp, #532]
	vmla.f32	s23, s13, s5
	vldr.32	s5, [sp, #536]
	vmla.f32	s22, s13, s5
	vldr.32	s5, [sp, #540]
	vmla.f32	s12, s13, s5
	vldr.32	s5, [sp, #344]
	vldr.32	s13, [fp, #40]
	vmla.f32	s17, s13, s5
	vldr.32	s13, [fp, #44]
	vmla.f32	s0, s13, s5
	vldr.32	s13, [sp, #360]
	vldr.32	s5, [fp, #40]
	vmla.f32	s16, s13, s5
	vldr.32	s5, [fp, #44]
	vmla.f32	s1, s13, s5
	vldr.32	s13, [sp, #376]
	vldr.32	s5, [sp, #144]
	vmla.f32	s21, s13, s5
	vldr.32	s5, [sp, #148]
	vmla.f32	s20, s13, s5
	vldr.32	s5, [sp, #152]
	vmla.f32	s31, s13, s5
	vldr.32	s5, [sp, #156]
	vmla.f32	s30, s13, s5
	vldr.32	s5, [sp, #392]
	vldr.32	s13, [sp, #144]
	vstr.32	s12, [sp, #16]
	vmla.f32	s29, s13, s5
	vldr.32	s13, [sp, #148]
	vmla.f32	s28, s13, s5
	vldr.32	s13, [sp, #152]
	vmla.f32	s27, s13, s5
	vldr.32	s13, [sp, #156]
	vmla.f32	s26, s13, s5
	vldr.32	s13, [sp, #128]
	vldr.32	s5, [sp, #404]
	vmla.f32	s25, s13, s5
	vldr.32	s5, [sp, #420]
	vmla.f32	s8, s13, s5
	vldr.32	s13, [sp, #132]
	vldr.32	s5, [sp, #404]
	vmla.f32	s9, s13, s5
	vldr.32	s5, [sp, #420]
	vmla.f32	s10, s13, s5
	vldr.32	s5, [sp, #404]
	vldr.32	s13, [sp, #136]
	vmla.f32	s7, s13, s5
	vldr.32	s13, [sp, #140]
	vmla.f32	s6, s13, s5
	vldr.32	s5, [sp, #420]
	vldr.32	s13, [sp, #136]
	vmla.f32	s19, s13, s5
	vldr.32	s13, [sp, #140]
	vmla.f32	s18, s13, s5
	vldr.32	s13, [fp, #52]
	vldr.32	s5, [sp, #348]
	vmla.f32	s11, s13, s5
	vldr.32	s13, [sp, #364]
	vldr.32	s5, [fp, #52]
	vmla.f32	s15, s13, s5
	vldr.32	s13, [sp, #496]
	vmov.f32	s5, s3
	vldr.32	s2, [sp, #500]
	vmla.f32	s5, s14, s13
	vmov.f32	s13, s3
	vmla.f32	s13, s14, s2
	vldr.32	s2, [sp, #504]
	vstr.32	s13, [sp, #20]
	vmov.f32	s13, s3
	vstr.32	s6, [sp, #56]
	vmla.f32	s13, s14, s2
	vmov.f32	s6, s3
	vldr.32	s2, [sp, #508]
	vstr.32	s13, [sp, #24]
	vmla.f32	s6, s14, s2
	vldr.32	s13, [sp, #272]
	vldr.32	s2, [sp, #496]
	vmov.f32	s14, s3
	vmla.f32	s14, s13, s2
	vstr.32	s8, [sp, #60]
	vstr.32	s9, [sp, #48]
	vstr.32	s10, [sp, #64]
	vstr.32	s7, [sp, #52]
	vldr.32	s13, [sp, #288]
	vmov.f32	s7, s14
	vmov.f32	s14, s3
	vmla.f32	s14, s13, s2
	vldr.32	s2, [sp, #500]
	vldr.32	s13, [sp, #272]
	vmov.f32	s8, s14
	vmov.f32	s14, s3
	vmla.f32	s14, s13, s2
	vldr.32	s13, [sp, #288]
	vmov.f32	s9, s14
	vmov.f32	s14, s3
	vmla.f32	s14, s13, s2
	vldr.32	s13, [sp, #272]
	vldr.32	s2, [sp, #504]
	vmov.f32	s10, s14
	vmov.f32	s14, s3
	vmov.f32	s12, s3
	vmla.f32	s14, s13, s2
	vldr.32	s2, [sp, #508]
	vstr.32	s14, [sp, #28]
	vmla.f32	s12, s13, s2
	vmov.f32	s14, s3
	vldr.32	s13, [sp, #288]
	vldr.32	s2, [sp, #504]
	vmla.f32	s14, s13, s2
	vldr.32	s2, [sp, #508]
	vstr.32	s14, [sp, #44]
	vmov.f32	s14, s3
	vmla.f32	s14, s13, s2
	vldr.32	s2, [sp, #544]
	vmla.f32	s24, s4, s2
	vldr.32	s2, [sp, #548]
	vmla.f32	s23, s4, s2
	vldr.32	s2, [sp, #552]
	vstr.32	s23, [fp, #4]
	vmla.f32	s22, s4, s2
	vldr.32	s23, [sp, #16]
	vldr.32	s2, [sp, #556]
	vmla.f32	s23, s4, s2
	vldr.32	s4, [sp, #348]
	vldr.32	s2, [fp, #56]
	vmla.f32	s17, s2, s4
	vldr.32	s2, [fp, #60]
	vmla.f32	s0, s2, s4
	vldr.32	s2, [sp, #364]
	vldr.32	s4, [fp, #56]
	vmla.f32	s16, s2, s4
	vldr.32	s4, [fp, #60]
	vmla.f32	s1, s2, s4
	vldr.32	s2, [sp, #380]
	vldr.32	s4, [sp, #160]
	vmla.f32	s21, s2, s4
	vmov.f32	s4, s20
	vstr.32	s21, [sp, #112]
	vldr.32	s21, [sp, #164]
	vmla.f32	s4, s2, s21
	vstr.32	s24, [fp]
	vstr.32	s22, [fp, #8]
	vstr.32	s23, [fp, #12]
	vstr.32	s4, [sp, #116]
	vldr.32	s4, [sp, #168]
	vmla.f32	s31, s2, s4
	vldr.32	s4, [sp, #172]
	vmla.f32	s30, s2, s4
	vldr.32	s4, [sp, #396]
	vldr.32	s2, [sp, #160]
	vmla.f32	s29, s2, s4
	vldr.32	s2, [sp, #168]
	vmla.f32	s27, s2, s4
	vldr.32	s2, [sp, #172]
	vmla.f32	s28, s21, s4
	vmla.f32	s26, s2, s4
	vldr.32	s2, [sp, #144]
	vldr.32	s4, [sp, #408]
	vldr.32	s24, [sp, #60]
	vmla.f32	s25, s2, s4
	vldr.32	s4, [sp, #424]
	vldr.32	s23, [sp, #48]
	vmla.f32	s24, s2, s4
	vldr.32	s2, [sp, #148]
	vldr.32	s4, [sp, #408]
	vldr.32	s20, [sp, #64]
	vmla.f32	s23, s2, s4
	vldr.32	s4, [sp, #424]
	vldr.32	s21, [sp, #52]
	vmla.f32	s20, s2, s4
	vldr.32	s4, [sp, #408]
	vldr.32	s2, [sp, #152]
	vmov.f32	s22, s20
	vmla.f32	s21, s2, s4
	vldr.32	s20, [sp, #56]
	vldr.32	s2, [sp, #156]
	vmla.f32	s20, s2, s4
	vldr.32	s4, [sp, #424]
	vldr.32	s2, [sp, #152]
	vmla.f32	s19, s2, s4
	vldr.32	s2, [sp, #156]
	vldr.32	s13, [sp, #40]
	vmla.f32	s18, s2, s4
	vldr.32	s2, [sp, #512]
	vmla.f32	s5, s13, s2
	vldr.32	s2, [sp, #516]
	vstr.32	s5, [sp, #16]
	vldr.32	s5, [sp, #20]
	vstr.32	s26, [sp, #140]
	vmla.f32	s5, s13, s2
	vldr.32	s26, [sp, #24]
	vldr.32	s2, [sp, #520]
	vmla.f32	s26, s13, s2
	vstr.32	s26, [sp, #20]
	vldr.32	s2, [sp, #524]
	vmla.f32	s6, s13, s2
	vldr.32	s2, [sp, #512]
	vmla.f32	s7, s11, s2
	vmla.f32	s8, s15, s2
	vldr.32	s2, [sp, #516]
	vldr.32	s26, [sp, #28]
	vmla.f32	s9, s11, s2
	vmla.f32	s10, s15, s2
	vldr.32	s2, [sp, #520]
	vmla.f32	s26, s11, s2
	vldr.32	s2, [sp, #524]
	vldr.32	s13, [sp, #44]
	vmla.f32	s12, s11, s2
	vldr.32	s2, [sp, #520]
	vmla.f32	s13, s15, s2
	vldr.32	s2, [sp, #524]
	vstr.32	s11, [sp, #276]
	vmla.f32	s14, s15, s2
	vldr.32	s11, [sp, #160]
	vldr.32	s2, [sp, #412]
	vmla.f32	s25, s11, s2
	vldr.32	s2, [sp, #428]
	vstr.32	s27, [sp, #136]
	vmla.f32	s24, s11, s2
	vldr.32	s27, [sp, #412]
	vldr.32	s11, [sp, #164]
	vmla.f32	s23, s11, s27
	vmla.f32	s22, s11, s2
	vldr.32	s27, [sp, #412]
	vldr.32	s11, [sp, #168]
	vmla.f32	s21, s11, s27
	vldr.32	s11, [sp, #172]
	vmla.f32	s20, s11, s27
	vldr.32	s11, [sp, #168]
	vmla.f32	s19, s11, s2
	vldr.32	s11, [sp, #172]
	vstr.32	s15, [sp, #292]
	vmla.f32	s18, s11, s2
	vldr.32	s15, [sp, #36]
	vstr.32	s17, [sp, #280]
	vstr.32	s16, [sp, #296]
	vldr.32	s2, [sp, #16]
	vstr.32	s0, [sp, #284]
	vstr.32	s1, [sp, #300]
	vstr.32	s31, [sp, #120]
	vstr.32	s30, [sp, #124]
	vstr.32	s29, [sp, #128]
	vstr.32	s28, [sp, #132]
	vldr.32	s11, [sp, #528]
	vmov.f32	s4, s5
	vmla.f32	s2, s15, s11
	vldr.32	s11, [sp, #532]
	vldr.32	s5, [sp, #20]
	vmla.f32	s4, s15, s11
	vldr.32	s11, [sp, #536]
	vmla.f32	s5, s15, s11
	vldr.32	s11, [sp, #540]
	vmla.f32	s6, s15, s11
	vldr.32	s11, [sp, #528]
	vmla.f32	s7, s17, s11
	vmla.f32	s8, s16, s11
	vldr.32	s11, [sp, #532]
	vmla.f32	s9, s17, s11
	vmla.f32	s10, s16, s11
	vmov.f32	s11, s26
	vldr.32	s26, [sp, #536]
	vmla.f32	s11, s17, s26
	vldr.32	s26, [sp, #540]
	vmla.f32	s12, s17, s26
	vldr.32	s17, [sp, #536]
	vldr.32	s15, [sp, #32]
	vmla.f32	s13, s16, s17
	vmla.f32	s14, s16, s26
	vldr.32	s16, [sp, #544]
	vmla.f32	s2, s15, s16
	vldr.32	s16, [sp, #548]
	vmla.f32	s4, s15, s16
	vldr.32	s16, [sp, #552]
	vmla.f32	s5, s15, s16
	vldr.32	s16, [sp, #556]
	vmla.f32	s6, s15, s16
	vldr.32	s15, [sp, #544]
	vmla.f32	s7, s0, s15
	vmla.f32	s8, s1, s15
	vldr.32	s15, [sp, #548]
	vmla.f32	s9, s0, s15
	vmla.f32	s10, s1, s15
	vldr.32	s15, [sp, #552]
	add	r3, sp, #112
	vld4.32	{d24, d26, d28, d30}, [r3:64]
	vmla.f32	s11, s0, s15
	vstr.32	s25, [sp, #144]
	vstr.32	s24, [sp, #160]
	vstr.32	s23, [sp, #148]
	vstr.32	s22, [sp, #164]
	vstr.32	s21, [sp, #152]
	vstr.32	s20, [sp, #156]
	vstr.32	s19, [sp, #168]
	vstr.32	s18, [sp, #172]
	vldr.32	s15, [sp, #552]
	add	r3, sp, #144
	vld4.32	{d25, d27, d29, d31}, [r3:64]
	vmla.f32	s12, s0, s16
	vmla.f32	s13, s1, s15
	vmla.f32	s14, s1, s16
	vstr.32	s2, [fp, #16]
	vstr.32	s4, [fp, #20]
	vstr.32	s5, [fp, #24]
	vstr.32	s6, [fp, #28]
	vldr	d22, [sp, #176]
	vldr	d23, [sp, #184]
	vldr	d20, [sp, #192]
	vldr	d21, [sp, #200]
	vldr	d18, [sp, #208]
	vldr	d19, [sp, #216]
	vldr	d16, [sp, #224]
	vldr	d17, [sp, #232]
	ldr	r3, [sp, #80]
	vstr.32	s7, [fp, #32]
	vstr.32	s8, [fp, #48]
	vstr.32	s9, [fp, #36]
	vstr.32	s10, [fp, #52]
	vstr.32	s11, [fp, #40]
	vstr.32	s12, [fp, #44]
	vstr.32	s13, [fp, #56]
	vstr.32	s14, [fp, #60]
	vst1.32	{d24-d25}, [r3]
	ldr	r3, [sp, #84]
	add	r7, r7, #20
	vst1.32	{d26-d27}, [r3]
	ldr	r3, [sp, #88]
	cmp	r7, #80
	vst1.32	{d28-d29}, [r3]
	ldr	r3, [sp, #92]
	add	r4, r4, #16
	vst1.32	{d30-d31}, [r3]
	ldr	r3, [sp, #104]
	vst1.32	{q11}, [r10]
	vst1.32	{q10}, [r3]
	ldr	r3, [sp, #100]
	ldr	r2, [sp, #68]
	vst1.32	{q9}, [r3]
	ldr	r3, [sp, #96]
	ldr	r0, [sp, #72]
	vst1.32	{q8}, [r3]
	bne	.L7
	ldr	r3, [sp, #76]
	add	r0, r0, #20
	add	r3, r3, #20
	str	r3, [sp, #76]
	cmp	r3, #76
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r3, #20
	str	r3, [sp, #8]
	bne	.L8
	mov	r9, r2
	b	.L6
.L2:
	ldr	r3, [r4]	@ float
	str	r3, [fp]	@ float
	ldr	r3, [r4, #4]	@ float
	str	r3, [fp, #4]	@ float
	ldr	r3, [r4, #8]	@ float
	str	r3, [fp, #8]	@ float
	ldr	r3, [r4, #12]	@ float
	str	r3, [fp, #12]	@ float
	ldr	r3, [r4, #16]	@ float
	str	r3, [fp, #16]	@ float
	ldr	r3, [r4, #20]	@ float
	str	r3, [fp, #20]	@ float
	ldr	r3, [r4, #24]	@ float
	str	r3, [fp, #24]	@ float
	ldr	r3, [r4, #28]	@ float
	str	r3, [fp, #28]	@ float
	ldr	r3, [r4, #32]	@ float
	str	r3, [fp, #32]	@ float
	ldr	r3, [r4, #36]	@ float
	str	r3, [fp, #36]	@ float
	ldr	r3, [r4, #40]	@ float
	str	r3, [fp, #40]	@ float
	ldr	r3, [r4, #44]	@ float
	str	r3, [fp, #44]	@ float
	ldr	r3, [r4, #48]	@ float
	str	r3, [fp, #48]	@ float
	ldr	r3, [r4, #52]	@ float
	str	r3, [fp, #52]	@ float
	ldr	r3, [r4, #56]	@ float
	str	r3, [fp, #56]	@ float
	ldr	r3, [r4, #60]	@ float
	str	r3, [fp, #60]	@ float
	b	.L3
.L4:
	ldr	r3, [r9]	@ float
	str	r3, [r10]	@ float
	ldr	r3, [r9, #4]	@ float
	str	r3, [r10, #4]	@ float
	ldr	r3, [r9, #8]	@ float
	str	r3, [r10, #8]	@ float
	ldr	r3, [r9, #12]	@ float
	str	r3, [r10, #12]	@ float
	ldr	r3, [r9, #16]	@ float
	str	r3, [r10, #16]	@ float
	ldr	r3, [r9, #20]	@ float
	str	r3, [r10, #20]	@ float
	ldr	r3, [r9, #24]	@ float
	str	r3, [r10, #24]	@ float
	ldr	r3, [r9, #28]	@ float
	str	r3, [r10, #28]	@ float
	ldr	r3, [r9, #32]	@ float
	str	r3, [r10, #32]	@ float
	ldr	r3, [r9, #36]	@ float
	str	r3, [r10, #36]	@ float
	ldr	r3, [r9, #40]	@ float
	str	r3, [r10, #40]	@ float
	ldr	r3, [r9, #44]	@ float
	str	r3, [r10, #44]	@ float
	ldr	r3, [r9, #48]	@ float
	str	r3, [r10, #48]	@ float
	ldr	r3, [r9, #52]	@ float
	str	r3, [r10, #52]	@ float
	ldr	r3, [r9, #56]	@ float
	str	r3, [r10, #56]	@ float
	ldr	r3, [r9, #60]	@ float
	str	r3, [r10, #60]	@ float
	b	.L5
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
