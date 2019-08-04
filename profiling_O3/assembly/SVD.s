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
	.fpu vfpv3-d16
	.type	SVD_decompose, %function
SVD_decompose:
	@ args = 0, pretend = 0, frame = 488
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r4, r0
	mov	r10, r2
	sub	sp, sp, #492
	mov	r9, r1
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #232
	mov	fp, r3
	bl	memset
	mov	r2, #64
	mov	r1, #0
	add	r0, sp, #296
	bl	memset
	ldr	r3, [r4]	@ float
	movw	r8, #:lower16:.LANCHOR0
	str	r3, [r10]	@ float
	ldr	r3, [r4, #4]	@ float
	movt	r8, #:upper16:.LANCHOR0
	str	r3, [r10, #4]	@ float
	ldr	r3, [r4, #8]	@ float
	vldr.32	s13, .L25
	str	r3, [r10, #8]	@ float
	ldr	r3, [r4, #12]	@ float
	str	r3, [r10, #12]	@ float
	ldr	r3, [r4, #16]	@ float
	str	r3, [r10, #16]	@ float
	ldr	r3, [r4, #20]	@ float
	str	r3, [r10, #20]	@ float
	ldr	r3, [r4, #24]	@ float
	str	r3, [r10, #24]	@ float
	ldr	r3, [r4, #28]	@ float
	str	r3, [r10, #28]	@ float
	ldr	r3, [r4, #32]	@ float
	str	r3, [r10, #32]	@ float
	ldr	r3, [r4, #36]	@ float
	str	r3, [r10, #36]	@ float
	ldr	r3, [r4, #40]	@ float
	str	r3, [r10, #40]	@ float
	ldr	r3, [r4, #44]	@ float
	str	r3, [r10, #44]	@ float
	ldr	r3, [r4, #48]	@ float
	str	r3, [r10, #48]	@ float
	ldr	r3, [r4, #52]	@ float
	str	r3, [r10, #52]	@ float
	ldr	r3, [r4, #56]	@ float
	str	r3, [r10, #56]	@ float
	ldr	r3, [r4, #60]	@ float
	str	r3, [r10, #60]	@ float
	ldr	r3, [r8]	@ float
	str	r3, [r9]	@ float
	ldr	r3, [r8, #4]	@ float
	str	r3, [r9, #4]	@ float
	ldr	r3, [r8, #8]	@ float
	str	r3, [r9, #8]	@ float
	ldr	r3, [r8, #12]	@ float
	str	r3, [r9, #12]	@ float
	ldr	r3, [r8, #16]	@ float
	str	r3, [r9, #16]	@ float
	ldr	r3, [r8, #20]	@ float
	str	r3, [r9, #20]	@ float
	ldr	r3, [r8, #24]	@ float
	str	r3, [r9, #24]	@ float
	ldr	r3, [r8, #28]	@ float
	str	r3, [r9, #28]	@ float
	ldr	r3, [r8, #32]	@ float
	str	r3, [r9, #32]	@ float
	ldr	r3, [r8, #36]	@ float
	str	r3, [r9, #36]	@ float
	ldr	r3, [r8, #40]	@ float
	str	r3, [r9, #40]	@ float
	ldr	r3, [r8, #44]	@ float
	str	r3, [r9, #44]	@ float
	ldr	r3, [r8, #48]	@ float
	str	r3, [r9, #48]	@ float
	ldr	r3, [r8, #52]	@ float
	str	r3, [r9, #52]	@ float
	ldr	r3, [r8, #56]	@ float
	str	r3, [r9, #56]	@ float
	ldr	r3, [r8, #60]	@ float
	str	r3, [r9, #60]	@ float
	vldr.32	s18, [r8]
	vldr.32	s15, [r8, #20]
	vstr.32	s15, [sp, #28]
	vldr.32	s15, [r8, #28]
	vstr.32	s15, [sp, #100]
	vldr.32	s15, [r8, #32]
	vstr.32	s15, [sp, #32]
	vldr.32	s15, [r8, #44]
	vldr.32	s19, [r8, #4]
	vldr.32	s20, [r8, #8]
	vldr.32	s21, [r8, #12]
	vldr.32	s22, [r8, #16]
	vldr.32	s23, [r8, #24]
	vldr.32	s24, [r8, #36]
	vldr.32	s25, [r8, #40]
	vstr.32	s15, [sp, #20]
	vldr.32	s26, [r8, #48]
	vldr.32	s27, [r8, #52]
	vldr.32	s17, [r8, #56]
	vldr.32	s16, [r8, #60]
.L2:
	mov	r7, r10
	mov	r6, #0
.L5:
	mov	r5, r7
	mov	r4, #0
.L7:
	cmp	r6, r4
	add	r4, r4, #1
	beq	.L10
	vldr.32	s0, [r5]
	vstr.32	s13, [sp]	@ int
	bl	SVD_abs
	vldr.32	s15, .L25+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vldr.32	s13, [sp]	@ int
	bge	.L24
.L10:
	cmp	r4, #4
	add	r5, r5, #4
	bne	.L7
	add	r6, r6, #1
	cmp	r6, #4
	add	r7, r7, #16
	bne	.L5
	vldr.32	s16, .L25+4
	mov	r7, #0
	add	r6, r10, #16
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
	cmp	r5, r6
	bne	.L14
	add	r6, r5, #16
	cmp	r6, r4
	bne	.L11
	add	sp, sp, #492
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L26:
	.align	2
.L25:
	.word	0
	.word	953267991
.L24:
	vldr.32	s15, [sp, #20]
	vstr.32	s15, [sp, #108]
	vldr.32	s15, [sp, #32]
	vstr.32	s15, [sp, #104]
	vldr.32	s15, [sp, #100]
	mov	r3, #16
	vstr.32	s15, [sp, #52]
	vldr.32	s15, [sp, #28]
	str	r3, [sp, #228]
	add	r2, sp, #428
	add	r3, sp, #364
	str	r3, [sp, #96]
	vstr.32	s16, [sp, #64]
	mov	r3, r8
	vstr.32	s17, [sp]
	vstr.32	s27, [sp, #4]
	vstr.32	s26, [sp, #8]
	vstr.32	s25, [sp, #16]
	vstr.32	s24, [sp, #12]
	vstr.32	s23, [sp, #24]
	vstr.32	s22, [sp, #60]
	vstr.32	s21, [sp, #56]
	vstr.32	s20, [sp, #36]
	vstr.32	s19, [sp, #40]
	vstr.32	s18, [sp, #44]
	vstr.32	s15, [sp, #112]
	mov	r8, r2
	add	r0, r10, #4
.L4:
	vldr.32	s15, [sp, #16]
	vstr.32	s15, [sp, #84]
	vldr.32	s15, [sp, #12]
	vstr.32	s15, [sp, #92]
	vldr.32	s15, [sp, #24]
	vstr.32	s15, [sp, #48]
	vldr.32	s15, [sp, #60]
	vstr.32	s15, [sp, #88]
	vldr.32	s15, [sp, #56]
	vstr.32	s15, [sp, #72]
	vldr.32	s15, [sp, #36]
	vstr.32	s15, [sp, #76]
	vldr.32	s15, [sp, #40]
	vstr.32	s15, [sp, #80]
	vldr.32	s15, [sp, #44]
	ldr	r2, [sp, #228]
	ldr	r5, [sp, #96]
	add	r7, r2, #4
	mov	r6, r8
	str	r8, [sp, #224]
	mov	r1, r0
	mov	r8, r7
	vstr.32	s15, [sp, #68]
	mov	r7, r5
	mov	r4, r3
	mov	r5, r2
.L3:
	vldr.32	s2, [r4, #8]
	vldr.32	s3, [r4, #12]
	vldr.32	s4, [r4, #16]
	vldr.32	s5, [r4, #20]
	vldr.32	s6, [r4, #24]
	vldr.32	s7, [r4, #28]
	vldr.32	s8, [r4, #32]
	vldr.32	s9, [r4, #36]
	vldr.32	s10, [r4, #40]
	vldr.32	s11, [r4, #44]
	vldr.32	s12, [r4, #48]
	vldr.32	s14, [r4, #52]
	vldr.32	s15, [r4, #56]
	vldr.32	s16, [r4, #4]
	ldr	r2, [r4, #60]	@ float
	ldr	ip, [r4]	@ float
	vstr.32	s13, [sp, #116]	@ int
	add	lr, r10, r5
	vstr.32	s2, [sp, #368]
	vstr.32	s3, [sp, #372]
	vstr.32	s4, [sp, #376]
	vstr.32	s5, [sp, #380]
	vstr.32	s6, [sp, #384]
	vstr.32	s7, [sp, #388]
	vstr.32	s8, [sp, #392]
	vstr.32	s9, [sp, #396]
	vstr.32	s10, [sp, #400]
	vstr.32	s11, [sp, #404]
	vstr.32	s12, [sp, #408]
	vstr.32	s14, [sp, #412]
	vstr.32	s15, [sp, #416]
	str	ip, [sp, #360]	@ float
	vstr.32	s16, [sp, #364]
	str	r2, [sp, #420]	@ float
	str	ip, [sp, #424]	@ float
	add	ip, r10, r8
	vldmia.32	r1!, {s0}
	vldr.32	s18, [lr]
	vldr.32	s19, [ip]
	vldr.32	s1, [r0, #-4]
	vsub.f32	s17, s18, s0
	vadd.f32	s0, s18, s0
	vadd.f32	s18, s19, s1
	vsub.f32	s1, s19, s1
	str	r1, [sp, #220]
	str	r0, [sp, #216]
	vstr.32	s2, [sp, #432]
	vstr.32	s3, [sp, #436]
	vstr.32	s4, [sp, #440]
	vstr.32	s5, [sp, #444]
	vstr.32	s6, [sp, #448]
	vstr.32	s7, [sp, #452]
	vstr.32	s8, [sp, #456]
	vstr.32	s9, [sp, #460]
	vstr.32	s10, [sp, #464]
	vstr.32	s11, [sp, #468]
	vstr.32	s12, [sp, #472]
	vstr.32	s14, [sp, #476]
	str	r2, [sp, #484]	@ float
	vstr.32	s15, [sp, #480]
	vstr.32	s16, [sp, #428]
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
	ldr	r3, [sp, #96]
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s17
	bl	SVD_sin
	vneg.f32	s15, s0
	vmov.f32	s0, s17
	vstmia.32	r7!, {s15}
	bl	SVD_sin
	add	r3, sp, #360
	add	r2, r3, r5
	vstr.32	s0, [r2]
	vmov.f32	s0, s17
	bl	SVD_cos
	vsub.f32	s16, s16, s17
	add	r3, sp, #360
	add	r2, r3, r8
	vstr.32	s0, [r2]
	vmov.f32	s0, s16
	bl	SVD_cos
	ldr	r3, [sp, #224]
	vstr.32	s0, [r3, #-4]
	vmov.f32	s0, s16
	bl	SVD_sin
	vneg.f32	s15, s0
	vmov.f32	s0, s16
	vstmia.32	r6!, {s15}
	bl	SVD_sin
	add	r3, sp, #424
	add	r2, r3, r5
	vstr.32	s0, [r2]
	vmov.f32	s0, s16
	bl	SVD_cos
	vldr.32	s13, [sp, #116]	@ int
	vldr.32	s15, [sp, #408]
	vldr.32	s4, [r9, #32]
	vmov.f32	s31, s13
	add	r3, sp, #424
	add	r2, r3, r8
	vldr.32	s6, [sp, #360]
	vldr.32	s7, [sp, #376]
	vldr.32	s8, [sp, #392]
	vldr.32	s11, [sp, #412]
	vldr.32	s2, [r9]
	vldr.32	s1, [r9, #36]
	vstr.32	s0, [r2]
	vmla.f32	s31, s15, s4
	vmov.f32	s24, s13
	vmov.f32	s17, s13
	vmov.f32	s16, s13
	vmov.f32	s0, s13
	vldr.32	s9, [sp, #364]
	vldr.32	s10, [sp, #380]
	vldr.32	s12, [sp, #396]
	vldr.32	s27, [r9, #4]
	vmla.f32	s24, s7, s2
	vmla.f32	s17, s6, s4
	vmla.f32	s16, s7, s4
	vmla.f32	s0, s8, s4
	vmla.f32	s31, s11, s1
	vmov.f32	s23, s13
	vldr.32	s3, [r9, #16]
	vldr.32	s5, [r9, #48]
	vldr.32	s29, [r9, #8]
	vmla.f32	s23, s2, s8
	vmla.f32	s24, s27, s10
	vmla.f32	s17, s9, s1
	vmla.f32	s16, s10, s1
	vmla.f32	s0, s12, s1
	vmov.f32	s25, s13
	vmov.f32	s1, s31
	vmov.f32	s22, s13
	vldr.32	s31, [sp, #384]
	vmov.f32	s21, s13
	vmov.f32	s20, s13
	vmov.f32	s19, s13
	vmov.f32	s18, s13
	vmov.f32	s28, s13
	vmla.f32	s25, s6, s2
	vmla.f32	s22, s2, s15
	vmla.f32	s21, s6, s3
	vmla.f32	s20, s7, s3
	vmla.f32	s19, s8, s3
	vmla.f32	s18, s15, s3
	vmla.f32	s28, s5, s15
	vmla.f32	s23, s27, s12
	vmla.f32	s24, s29, s31
	vmov.f32	s2, s13
	vldr.32	s31, [sp, #400]
	vmov.f32	s3, s13
	vmov.f32	s4, s13
	vldr.32	s26, [r9, #20]
	vldr.32	s30, [r9, #52]
	vmla.f32	s2, s5, s6
	vmla.f32	s3, s5, s7
	vmla.f32	s4, s5, s8
	vmla.f32	s22, s27, s11
	vmla.f32	s23, s29, s31
	vmov.f32	s5, s28
	vldr.32	s31, [sp, #416]
	vldr.32	s28, [r9, #24]
	vmla.f32	s25, s9, s27
	vmla.f32	s20, s10, s26
	vmla.f32	s2, s30, s9
	vmla.f32	s3, s30, s10
	vmla.f32	s4, s30, s12
	vmla.f32	s5, s30, s11
	vmla.f32	s22, s29, s31
	vldr.32	s30, [sp, #368]
	vldr.32	s31, [sp, #384]
	vmla.f32	s21, s9, s26
	vmla.f32	s19, s12, s26
	vmla.f32	s25, s29, s30
	vmla.f32	s20, s31, s28
	vldr.32	s29, [sp, #368]
	vldr.32	s31, [sp, #400]
	vldr.32	s14, [sp, #440]
	vldr.32	s27, [r9, #40]
	vldr.32	s30, [r9, #12]
	vmla.f32	s18, s11, s26
	vmla.f32	s21, s29, s28
	vldr.32	s26, [r9, #56]
	vldr.32	s29, [r9, #28]
	vmla.f32	s19, s31, s28
	vldr.32	s31, [sp, #416]
	vmla.f32	s18, s31, s28
	vldr.32	s31, [sp, #384]
	vmla.f32	s16, s31, s27
	vldr.32	s31, [sp, #400]
	vmla.f32	s0, s31, s27
	vldr.32	s31, [sp, #416]
	vmla.f32	s1, s31, s27
	vldr.32	s31, [sp, #384]
	vldr.32	s28, [sp, #368]
	vmla.f32	s3, s26, s31
	vldr.32	s31, [sp, #400]
	vmla.f32	s17, s28, s27
	vmla.f32	s4, s26, s31
	vldr.32	s27, [sp, #368]
	vldr.32	s31, [sp, #416]
	vmla.f32	s2, s26, s27
	vmla.f32	s5, s26, s31
	vldr.32	s26, [sp, #372]
	vmla.f32	s25, s30, s26
	vldr.32	s26, [sp, #388]
	vmla.f32	s24, s30, s26
	vldr.32	s26, [sp, #404]
	vmla.f32	s23, s30, s26
	vldr.32	s26, [sp, #420]
	vmla.f32	s22, s30, s26
	vldr.32	s26, [sp, #372]
	vmla.f32	s21, s26, s29
	vldr.32	s26, [sp, #388]
	vmla.f32	s20, s26, s29
	vldr.32	s26, [sp, #404]
	vmla.f32	s19, s26, s29
	vldr.32	s26, [sp, #420]
	vldr.32	s28, [r9, #44]
	vmla.f32	s18, s26, s29
	vldr.32	s26, [sp, #372]
	vmla.f32	s17, s26, s28
	vldr.32	s26, [sp, #388]
	vmla.f32	s16, s26, s28
	vldr.32	s26, [sp, #404]
	vmla.f32	s0, s26, s28
	vldr.32	s26, [sp, #420]
	vldr.32	s27, [r9, #60]
	vmla.f32	s1, s26, s28
	vldr.32	s26, [sp, #372]
	vmla.f32	s2, s27, s26
	vldr.32	s26, [sp, #388]
	vmla.f32	s3, s27, s26
	vldr.32	s26, [sp, #404]
	vmla.f32	s4, s27, s26
	vldr.32	s26, [sp, #420]
	vstr.32	s25, [sp, #148]
	vmla.f32	s5, s27, s26
	vstr.32	s25, [sp, #232]
	vstr.32	s24, [sp, #144]
	vstr.32	s24, [sp, #236]
	vstr.32	s23, [sp, #116]
	vmov.f32	s26, s13
	vstr.32	s23, [sp, #240]
	vstr.32	s4, [sp, #136]
	vstr.32	s4, [sp, #288]
	vldr.32	s4, [r10]
	vmla.f32	s26, s4, s6
	vstr.32	s22, [sp, #120]
	vstr.32	s22, [sp, #244]
	vmov.f32	s22, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s4, s7
	vmov.f32	s25, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s4, s8
	vmov.f32	s24, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s4, s15
	vstr.32	s16, [sp, #180]
	vstr.32	s16, [sp, #268]
	vstr.32	s2, [sp, #128]
	vldr.32	s16, [r10, #4]
	vstr.32	s2, [sp, #280]
	vmov.f32	s2, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s16, s6
	vstr.32	s3, [sp, #132]
	vstr.32	s3, [sp, #284]
	vmov.f32	s3, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s16, s7
	vmov.f32	s4, s26
	vmov.f32	s26, s13
	vstr.32	s5, [sp, #140]
	vmla.f32	s26, s16, s8
	vstr.32	s5, [sp, #292]
	vldr.32	s5, [r10, #16]
	vmla.f32	s22, s5, s9
	vmla.f32	s25, s5, s10
	vmla.f32	s24, s5, s12
	vmla.f32	s2, s5, s11
	vmov.f32	s5, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s16, s15
	vstr.32	s21, [sp, #156]
	vstr.32	s21, [sp, #248]
	vstr.32	s20, [sp, #152]
	vstr.32	s20, [sp, #252]
	vstr.32	s19, [sp, #124]
	vstr.32	s19, [sp, #256]
	vstr.32	s18, [sp, #164]
	vstr.32	s18, [sp, #260]
	vstr.32	s17, [sp, #172]
	vldr.32	s18, [r10, #8]
	vstr.32	s17, [sp, #264]
	vstr.32	s0, [sp, #188]
	vstr.32	s0, [sp, #272]
	vstr.32	s1, [sp, #200]
	vldr.32	s0, [r10, #32]
	vstr.32	s1, [sp, #276]
	vmov.f32	s17, s26
	vldr.32	s1, [r10, #20]
	vldr.32	s26, [sp, #368]
	vmla.f32	s22, s0, s26
	vldr.32	s26, [sp, #384]
	vmla.f32	s25, s0, s26
	vldr.32	s26, [sp, #400]
	vmla.f32	s24, s0, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s18, s6
	vmov.f32	s23, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s18, s7
	vmov.f32	s21, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s18, s8
	vmov.f32	s19, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s18, s15
	vldr.32	s20, [r10, #48]
	vldr.32	s27, [sp, #372]
	vmov.f32	s18, s26
	vmov.f32	s26, s22
	vmla.f32	s26, s20, s27
	vldr.32	s16, [r10, #36]
	vmla.f32	s3, s1, s9
	vstr.32	s26, [sp, #296]
	vldr.32	s26, [sp, #368]
	vmla.f32	s17, s1, s11
	vmla.f32	s3, s16, s26
	vmla.f32	s4, s1, s10
	vmla.f32	s5, s1, s12
	vmov.f32	s26, s13
	vldr.32	s1, [r10, #12]
	vmla.f32	s26, s1, s6
	vmov.f32	s6, s25
	vmov.f32	s22, s26
	vldr.32	s26, [sp, #388]
	vmla.f32	s6, s20, s26
	vldr.32	s26, [sp, #404]
	vstr.32	s6, [sp, #312]
	vmov.f32	s6, s24
	vmla.f32	s2, s0, s31
	vmla.f32	s6, s20, s26
	vldr.32	s26, [sp, #420]
	vstr.32	s6, [sp, #328]
	vmov.f32	s6, s2
	vmla.f32	s6, s20, s26
	vmov.f32	s26, s13
	vmla.f32	s26, s1, s7
	vldr.32	s28, [sp, #424]
	vldr.32	s27, [sp, #44]
	vmov.f32	s20, s26
	vmov.f32	s26, s13
	vstr.32	s6, [sp, #344]
	vmla.f32	s26, s27, s28
	vldr.32	s6, [sp, #384]
	vldr.32	s27, [sp, #40]
	vmla.f32	s4, s16, s6
	vmov.f32	s25, s26
	vldr.32	s6, [sp, #400]
	vmov.f32	s7, s13
	vmov.f32	s26, s13
	vmla.f32	s5, s16, s6
	vmla.f32	s26, s27, s28
	vmla.f32	s7, s1, s15
	vmov.f32	s6, s17
	vmov.f32	s15, s7
	vmla.f32	s6, s16, s31
	vmov.f32	s24, s26
	vmov.f32	s7, s13
	vldr.32	s26, [sp, #36]
	vmov.f32	s31, s13
	vmla.f32	s7, s1, s8
	vmla.f32	s31, s26, s28
	vmov.f32	s1, s13
	vldr.32	s26, [sp, #56]
	vldr.32	s0, [r10, #24]
	vldr.32	s2, [r10, #52]
	vmla.f32	s1, s26, s28
	vldr.32	s27, [sp, #372]
	vmov.f32	s26, s3
	vldr.32	s8, [r10, #28]
	vldr.32	s16, [sp, #68]
	vmla.f32	s26, s2, s27
	vmla.f32	s23, s0, s9
	vmla.f32	s21, s0, s10
	vmla.f32	s19, s0, s12
	vmla.f32	s18, s0, s11
	vmov.f32	s0, s13
	vmla.f32	s22, s8, s9
	vmla.f32	s0, s16, s14
	vmov.f32	s17, s7
	vstr.32	s26, [sp, #300]
	vldr.32	s7, [r10, #40]
	vldr.32	s26, [sp, #368]
	vstr.32	s1, [sp, #160]
	vmla.f32	s23, s7, s26
	vstr.32	s0, [sp, #168]
	vmov.f32	s26, s4
	vstr.32	s22, [sp, #56]
	vldr.32	s9, [sp, #388]
	vmov.f32	s30, s5
	vmla.f32	s26, s2, s9
	vldr.32	s9, [sp, #404]
	vmla.f32	s30, s2, s9
	vldr.32	s9, [sp, #420]
	vmla.f32	s6, s2, s9
	vldr.32	s9, [sp, #384]
	vmla.f32	s20, s8, s10
	vmla.f32	s17, s8, s12
	vmla.f32	s21, s7, s9
	vldr.32	s10, [sp, #400]
	vldr.32	s9, [sp, #456]
	vmov.f32	s12, s13
	vmla.f32	s19, s7, s10
	vmla.f32	s12, s16, s9
	vldr.32	s10, [sp, #416]
	vstr.32	s6, [sp, #348]
	vmov.f32	s9, s13
	vldr.32	s6, [sp, #472]
	vmla.f32	s18, s7, s10
	vmla.f32	s9, s16, s6
	vldr.32	s10, [sp, #80]
	vmov.f32	s28, s13
	vmla.f32	s15, s8, s11
	vmla.f32	s28, s10, s14
	vmov.f32	s22, s9
	vmov.f32	s11, s13
	vmov.f32	s9, s10
	vldr.32	s10, [sp, #456]
	vmla.f32	s11, s9, s10
	vmov.f32	s10, s13
	vmla.f32	s10, s9, s6
	vldr.32	s8, [sp, #76]
	vldr.32	s9, [sp, #456]
	vstr.32	s10, [sp, #208]
	vmov.f32	s10, s13
	vmla.f32	s10, s8, s9
	vmov.f32	s9, s13
	vmov.f32	s27, s13
	vmla.f32	s9, s8, s6
	vldr.32	s7, [sp, #72]
	vmla.f32	s27, s8, s14
	vstr.32	s20, [sp, #44]
	vldr.32	s8, [sp, #456]
	vmov.f32	s20, s9
	vmov.f32	s9, s13
	vstr.32	s15, [sp, #36]
	vmla.f32	s9, s7, s8
	vmov.f32	s15, s13
	vmov.f32	s8, s13
	vmla.f32	s15, s7, s14
	vmla.f32	s8, s7, s6
	vstr.32	s26, [sp, #316]
	vldr.32	s6, [sp, #424]
	vldr.32	s26, [sp, #296]
	vmov.f32	s7, s13
	vmla.f32	s7, s6, s26
	vmov.f32	s6, s13
	vmla.f32	s6, s14, s26
	vstr.32	s17, [sp, #40]
	vldr.32	s26, [sp, #456]
	vldr.32	s17, [r10, #44]
	vstr.32	s15, [sp, #176]
	vstr.32	s12, [sp, #184]
	vldr.32	s15, [r10, #56]
	vstr.32	s11, [sp, #192]
	vstr.32	s10, [sp, #196]
	vstr.32	s9, [sp, #204]
	vstr.32	s8, [sp, #212]
	vstr.32	s7, [sp, #68]
	vmov.f32	s16, s6
	vldr.32	s29, [sp, #296]
	vmov.f32	s6, s13
	vmla.f32	s6, s26, s29
	vldr.32	s26, [sp, #472]
	vmov.f32	s0, s6
	vmov.f32	s6, s13
	vmla.f32	s6, s26, s29
	vldr.32	s29, [sp, #312]
	vldr.32	s26, [sp, #424]
	vmov.f32	s1, s6
	vmov.f32	s6, s13
	vmla.f32	s6, s26, s29
	vmov.f32	s2, s6
	vmov.f32	s6, s13
	vmla.f32	s6, s14, s29
	vldr.32	s26, [sp, #456]
	vmov.f32	s3, s6
	vmov.f32	s6, s13
	vmla.f32	s6, s26, s29
	vldr.32	s26, [sp, #472]
	vmov.f32	s4, s6
	vmov.f32	s6, s13
	vmla.f32	s6, s26, s29
	vldr.32	s26, [sp, #424]
	vldr.32	s29, [sp, #328]
	vmov.f32	s5, s6
	vmov.f32	s6, s13
	vmov.f32	s7, s13
	vmla.f32	s6, s26, s29
	vldr.32	s26, [sp, #344]
	vldr.32	s29, [sp, #424]
	vmov.f32	s8, s13
	vmla.f32	s7, s26, s29
	vldr.32	s26, [sp, #328]
	vmov.f32	s9, s13
	vmla.f32	s8, s14, s26
	vldr.32	s26, [sp, #344]
	vldr.32	s29, [sp, #328]
	vmla.f32	s9, s26, s14
	vldr.32	s26, [sp, #456]
	vmov.f32	s14, s13
	vmla.f32	s14, s26, s29
	vldr.32	s26, [sp, #344]
	vldr.32	s29, [sp, #456]
	vmov.f32	s10, s14
	vmov.f32	s14, s13
	vmla.f32	s14, s26, s29
	vldr.32	s26, [sp, #472]
	vldr.32	s29, [sp, #328]
	vstr.32	s14, [sp, #76]
	vmov.f32	s14, s13
	vmla.f32	s14, s26, s29
	vldr.32	s26, [sp, #344]
	vldr.32	s29, [sp, #472]
	vstr.32	s14, [sp, #72]
	vmov.f32	s14, s13
	vmla.f32	s14, s26, s29
	vldr.32	s26, [sp, #60]
	vldr.32	s29, [sp, #428]
	vmov.f32	s12, s29
	vmla.f32	s25, s29, s26
	vldr.32	s29, [sp, #28]
	vmla.f32	s24, s12, s29
	vldr.32	s29, [sp, #24]
	vmla.f32	s31, s12, s29
	vldr.32	s11, [sp, #100]
	vstr.32	s31, [sp, #60]
	vldr.32	s31, [sp, #160]
	vmla.f32	s31, s11, s12
	vldr.32	s12, [sp, #444]
	vstr.32	s31, [sp, #80]
	vldr.32	s31, [sp, #168]
	vmla.f32	s31, s12, s26
	vstr.32	s31, [sp, #100]
	vldr.32	s29, [sp, #28]
	vldr.32	s31, [sp, #176]
	vmla.f32	s28, s12, s29
	vmla.f32	s31, s11, s12
	vldr.32	s29, [sp, #24]
	vldr.32	s26, [sp, #88]
	vmla.f32	s27, s12, s29
	vstr.32	s31, [sp, #160]
	vldr.32	s12, [sp, #460]
	vldr.32	s31, [sp, #184]
	vmla.f32	s31, s12, s26
	vldr.32	s29, [sp, #112]
	vstr.32	s31, [sp, #88]
	vldr.32	s31, [sp, #192]
	vmla.f32	s31, s12, s29
	vmov.f32	s11, s12
	vstr.32	s31, [sp, #112]
	vldr.32	s12, [sp, #48]
	vldr.32	s31, [sp, #196]
	vmla.f32	s31, s11, s12
	vldr.32	s12, [sp, #52]
	vstr.32	s31, [sp, #168]
	vldr.32	s31, [sp, #204]
	vmla.f32	s31, s12, s11
	vldr.32	s12, [sp, #476]
	vstr.32	s31, [sp, #176]
	vldr.32	s31, [sp, #208]
	vmla.f32	s22, s12, s26
	vmla.f32	s31, s12, s29
	vldr.32	s26, [sp, #476]
	vldr.32	s12, [sp, #48]
	vstr.32	s31, [sp, #184]
	vmla.f32	s20, s26, s12
	vldr.32	s31, [sp, #212]
	vldr.32	s12, [sp, #52]
	vmla.f32	s31, s12, s26
	vldr.32	s11, [sp, #300]
	vldr.32	s12, [sp, #428]
	vstr.32	s31, [sp, #192]
	vldr.32	s31, [sp, #68]
	vmla.f32	s31, s12, s11
	vldr.32	s12, [sp, #372]
	vstr.32	s31, [sp, #52]
	vmla.f32	s23, s15, s12
	vldr.32	s31, [sp, #56]
	vldr.32	s12, [sp, #368]
	vmla.f32	s31, s17, s12
	vstr.32	s31, [sp, #48]
	vldr.32	s12, [sp, #388]
	vldr.32	s31, [sp, #44]
	vmla.f32	s21, s15, s12
	vldr.32	s12, [sp, #384]
	vmla.f32	s31, s17, s12
	vldr.32	s12, [sp, #404]
	vmla.f32	s19, s15, s12
	vldr.32	s12, [sp, #420]
	vmla.f32	s18, s15, s12
	vldr.32	s15, [sp, #36]
	vldr.32	s12, [sp, #416]
	vstr.32	s31, [sp, #28]
	vmla.f32	s15, s17, s12
	vldr.32	s31, [sp, #40]
	vldr.32	s12, [sp, #400]
	vmla.f32	s31, s17, s12
	vldr.32	s12, [sp, #444]
	vmla.f32	s16, s12, s11
	vldr.32	s12, [sp, #460]
	vmla.f32	s1, s26, s11
	vmla.f32	s0, s12, s11
	vldr.32	s26, [sp, #316]
	vldr.32	s12, [sp, #428]
	vmla.f32	s2, s12, s26
	vldr.32	s12, [sp, #444]
	vmla.f32	s3, s12, s26
	vldr.32	s12, [sp, #460]
	vmla.f32	s4, s12, s26
	vldr.32	s12, [sp, #476]
	vmla.f32	s5, s12, s26
	vldr.32	s26, [sp, #348]
	vldr.32	s12, [sp, #428]
	vmla.f32	s7, s26, s12
	vmla.f32	s6, s12, s30
	vldr.32	s12, [sp, #444]
	vmla.f32	s9, s26, s12
	vmla.f32	s8, s12, s30
	vldr.32	s12, [sp, #460]
	vldr.32	s11, [sp, #72]
	vmla.f32	s10, s12, s30
	vldr.32	s12, [sp, #476]
	vldr.32	s17, [sp, #76]
	vmla.f32	s11, s12, s30
	vldr.32	s12, [sp, #460]
	vmla.f32	s17, s26, s12
	vmov.f32	s12, s17
	vmov.f32	s17, s26
	vldr.32	s26, [sp, #476]
	vmla.f32	s14, s17, s26
	vldr.32	s29, [sp, #432]
	vldr.32	s26, [sp, #12]
	vstr.32	s14, [sp, #36]
	vldr.32	s14, [sp, #32]
	vldr.32	s17, [r10, #60]
	vmla.f32	s24, s29, s26
	vmla.f32	s25, s29, s14
	vstr.32	s31, [sp, #24]
	vldr.32	s14, [sp, #60]
	vldr.32	s26, [sp, #16]
	vmla.f32	s14, s26, s29
	vldr.32	s26, [sp, #20]
	vmov.f32	s31, s14
	vldr.32	s14, [sp, #80]
	vmla.f32	s14, s29, s26
	vldr.32	s29, [sp, #448]
	vldr.32	s26, [sp, #32]
	vstr.32	s14, [sp, #56]
	vldr.32	s14, [sp, #100]
	vmla.f32	s14, s29, s26
	vldr.32	s26, [sp, #12]
	vmla.f32	s28, s29, s26
	vldr.32	s26, [sp, #16]
	vstr.32	s14, [sp, #60]
	vmla.f32	s27, s26, s29
	vldr.32	s14, [sp, #160]
	vldr.32	s26, [sp, #20]
	vmla.f32	s14, s29, s26
	vldr.32	s29, [sp, #464]
	vldr.32	s26, [sp, #32]
	vstr.32	s14, [sp, #68]
	vldr.32	s14, [sp, #88]
	vmla.f32	s14, s29, s26
	vldr.32	s26, [sp, #12]
	vstr.32	s14, [sp, #32]
	vldr.32	s14, [sp, #112]
	vmla.f32	s14, s29, s26
	vldr.32	s26, [sp, #16]
	vstr.32	s14, [sp, #12]
	vldr.32	s14, [sp, #168]
	vmla.f32	s14, s26, s29
	vldr.32	s26, [sp, #20]
	vstr.32	s14, [sp, #16]
	vldr.32	s14, [sp, #176]
	vmla.f32	s14, s29, s26
	vldr.32	s26, [sp, #480]
	vldr.32	s29, [sp, #104]
	vmla.f32	s22, s26, s29
	vldr.32	s29, [sp, #92]
	vstr.32	s22, [sp, #72]
	vldr.32	s22, [sp, #184]
	vmla.f32	s22, s26, s29
	vstr.32	s14, [sp, #20]
	vstr.32	s22, [sp, #76]
	vldr.32	s26, [sp, #84]
	vldr.32	s29, [sp, #480]
	vmla.f32	s20, s26, s29
	vmov.f32	s26, s29
	vstr.32	s20, [sp, #80]
	vldr.32	s29, [sp, #108]
	vldr.32	s20, [sp, #192]
	vmla.f32	s20, s26, s29
	vldr.32	s26, [sp, #432]
	vstr.32	s20, [sp, #84]
	vldr.32	s20, [sp, #52]
	vldr.32	s22, [sp, #48]
	vmla.f32	s20, s26, s23
	vldr.32	s26, [sp, #372]
	vstr.32	s20, [sp, #52]
	vmla.f32	s22, s17, s26
	vldr.32	s20, [sp, #28]
	vldr.32	s26, [sp, #388]
	vmla.f32	s20, s17, s26
	vldr.32	s26, [sp, #420]
	vldr.32	s14, [sp, #24]
	vmla.f32	s15, s17, s26
	vldr.32	s26, [sp, #404]
	vmla.f32	s14, s17, s26
	vldr.32	s26, [sp, #448]
	vmla.f32	s16, s26, s23
	vldr.32	s26, [sp, #464]
	vmla.f32	s0, s26, s23
	vldr.32	s26, [sp, #480]
	vmla.f32	s1, s26, s23
	vldr.32	s26, [sp, #432]
	vmla.f32	s2, s26, s21
	vldr.32	s26, [sp, #448]
	vmla.f32	s3, s26, s21
	vldr.32	s26, [sp, #464]
	vmla.f32	s4, s26, s21
	vldr.32	s26, [sp, #480]
	vmla.f32	s5, s26, s21
	vldr.32	s26, [sp, #432]
	vmla.f32	s6, s26, s19
	vmla.f32	s7, s18, s26
	vldr.32	s26, [sp, #448]
	vmla.f32	s8, s26, s19
	vmla.f32	s9, s18, s26
	vldr.32	s26, [sp, #464]
	vmla.f32	s10, s26, s19
	vstr.32	s10, [sp, #48]
	vldr.32	s10, [sp, #480]
	vmov.f32	s17, s14
	vmla.f32	s11, s10, s19
	vldr.32	s14, [sp, #36]
	vldr.32	s10, [sp, #480]
	vmla.f32	s12, s18, s26
	vmla.f32	s14, s18, s10
	vldr.32	s26, [sp, #436]
	vldr.32	s10, [sp, #8]
	vmla.f32	s25, s26, s10
	vmov.f32	s10, s24
	vstr.32	s25, [sp, #44]
	vldr.32	s25, [sp, #4]
	vmla.f32	s10, s26, s25
	vldr.32	s29, [sp, #64]
	vldr.32	s25, [sp, #56]
	vstr.32	s10, [sp, #40]
	vldr.32	s10, [sp]
	vmla.f32	s25, s26, s29
	vmla.f32	s31, s26, s10
	vldr.32	s26, [sp, #452]
	vldr.32	s10, [sp, #4]
	vmla.f32	s28, s26, s10
	vstr.32	s28, [sp, #28]
	vldr.32	s28, [sp]
	vmla.f32	s27, s26, s28
	vldr.32	s24, [sp, #8]
	vstr.32	s31, [sp, #36]
	vstr.32	s27, [sp, #24]
	vldr.32	s31, [sp, #60]
	vldr.32	s27, [sp, #68]
	vmla.f32	s31, s26, s24
	vmla.f32	s27, s26, s29
	vldr.32	s28, [sp, #32]
	vldr.32	s26, [sp, #468]
	vldr.32	s10, [sp, #4]
	vmla.f32	s28, s26, s24
	vldr.32	s24, [sp, #12]
	vmla.f32	s24, s26, s10
	vldr.32	s10, [sp]
	vstr.32	s24, [sp, #12]
	vldr.32	s24, [sp, #16]
	vmla.f32	s24, s26, s10
	vstr.32	s24, [sp, #16]
	vldr.32	s24, [sp, #20]
	vmla.f32	s24, s26, s29
	vldr.32	s10, [sp, #8]
	vldr.32	s26, [sp, #484]
	vstr.32	s24, [sp, #20]
	vldr.32	s24, [sp, #72]
	vmla.f32	s24, s26, s10
	vstr.32	s25, [sp, #56]
	vstr.32	s31, [sp, #60]
	vstr.32	s27, [sp, #100]
	vstr.32	s28, [sp, #32]
	vstr.32	s24, [sp, #8]
	vldr.32	s24, [sp, #76]
	vldr.32	s10, [sp, #4]
	vmla.f32	s24, s26, s10
	vldr.32	s10, [sp]
	vstr.32	s24, [sp, #4]
	vldr.32	s24, [sp, #80]
	vmla.f32	s24, s26, s10
	vstr.32	s24, [sp]
	vldr.32	s24, [sp, #84]
	vmla.f32	s24, s26, s29
	vldr.32	s26, [sp, #436]
	vmov.f32	s29, s24
	vstr.32	s24, [sp, #64]
	vldr.32	s24, [sp, #52]
	vmla.f32	s24, s26, s22
	vldr.32	s26, [sp, #452]
	vmla.f32	s16, s26, s22
	vldr.32	s26, [sp, #468]
	vmla.f32	s0, s26, s22
	vldr.32	s26, [sp, #484]
	vmla.f32	s1, s26, s22
	vldr.32	s26, [sp, #436]
	vmla.f32	s2, s26, s20
	vldr.32	s26, [sp, #452]
	vmla.f32	s3, s26, s20
	vldr.32	s26, [sp, #468]
	vmla.f32	s4, s26, s20
	vldr.32	s26, [sp, #484]
	vmla.f32	s5, s26, s20
	vldr.32	s26, [sp, #436]
	vmla.f32	s6, s26, s17
	vmla.f32	s7, s15, s26
	vldr.32	s26, [sp, #452]
	vldr.32	s10, [sp, #48]
	vmla.f32	s9, s15, s26
	vmla.f32	s8, s26, s17
	vldr.32	s26, [sp, #468]
	vmla.f32	s10, s26, s17
	vldr.32	s26, [sp, #484]
	vmla.f32	s11, s26, s17
	vldr.32	s26, [sp, #468]
	vmla.f32	s12, s15, s26
	vldr.32	s26, [sp, #484]
	vstr.32	s23, [sp, #304]
	vmla.f32	s14, s15, s26
	vstr.32	s22, [sp, #308]
	vstr.32	s21, [sp, #320]
	vstr.32	s20, [sp, #324]
	vstr.32	s19, [sp, #336]
	vstr.32	s18, [sp, #352]
	vstr.32	s15, [sp, #356]
	vstr.32	s30, [sp, #332]
	vstr.32	s17, [sp, #340]
	vstr.32	s10, [r10, #40]
	vldr.32	s10, [sp, #36]
	vstr.32	s24, [r10]
	vstr.32	s16, [r10, #4]
	vstr.32	s0, [r10, #8]
	vstr.32	s1, [r10, #12]
	vstr.32	s2, [r10, #16]
	vstr.32	s3, [r10, #20]
	vstr.32	s4, [r10, #24]
	vstr.32	s5, [r10, #28]
	vstr.32	s9, [r10, #52]
	vstr.32	s11, [r10, #44]
	vstr.32	s12, [r10, #56]
	vstr.32	s14, [r10, #60]
	vstr.32	s6, [r10, #32]
	vstr.32	s7, [r10, #48]
	vstr.32	s8, [r10, #36]
	vldr.32	s17, [sp, #44]
	vldr.32	s18, [sp, #40]
	vldr.32	s9, [sp, #24]
	vstr.32	s10, [sp, #76]
	vstr.32	s10, [fp, #32]
	vldr.32	s10, [sp, #28]
	vstr.32	s17, [sp, #68]
	vstr.32	s18, [sp, #80]
	vstr.32	s17, [fp]
	vstr.32	s18, [fp, #16]
	vstr.32	s25, [fp, #48]
	vstr.32	s31, [fp, #4]
	vstr.32	s10, [fp, #20]
	vstr.32	s9, [fp, #36]
	vstr.32	s27, [fp, #52]
	vstr.32	s28, [fp, #8]
	vldr.32	s11, [sp, #8]
	vldr.32	s24, [sp, #4]
	vstr.32	s11, [fp, #12]
	vstr.32	s24, [fp, #28]
	vldr.32	s15, [sp, #12]
	vldr.32	s14, [sp, #16]
	vldr.32	s12, [sp, #20]
	vldr.32	s11, [sp]
	vstr.32	s25, [sp, #72]
	vldr.32	s24, [sp, #144]
	vldr.32	s25, [sp, #148]
	vldr.32	s23, [sp, #116]
	vldr.32	s22, [sp, #120]
	vldr.32	s21, [sp, #156]
	vldr.32	s20, [sp, #152]
	vldr.32	s19, [sp, #124]
	vldr.32	s18, [sp, #164]
	vstr.32	s15, [fp, #24]
	vstr.32	s14, [fp, #40]
	vstr.32	s12, [fp, #56]
	vstr.32	s11, [fp, #44]
	vstr.32	s29, [fp, #60]
	vstr.32	s31, [sp, #88]
	vstr.32	s25, [r9]
	vstr.32	s24, [r9, #4]
	vstr.32	s10, [sp, #112]
	vstr.32	s23, [r9, #8]
	vstr.32	s22, [r9, #12]
	vstr.32	s21, [r9, #16]
	vstr.32	s20, [r9, #20]
	vstr.32	s19, [r9, #24]
	vstr.32	s18, [r9, #28]
	vldr.32	s17, [sp, #172]
	ldrd	r0, [sp, #216]
	vldr.32	s16, [sp, #180]
	vldr.32	s0, [sp, #188]
	vldr.32	s1, [sp, #200]
	vldr.32	s2, [sp, #128]
	vldr.32	s3, [sp, #132]
	vldr.32	s4, [sp, #136]
	vldr.32	s5, [sp, #140]
	add	r8, r8, #20
	cmp	r8, #80
	add	r5, r5, #16
	vstr.32	s17, [r9, #32]
	vstr.32	s16, [r9, #36]
	vstr.32	s0, [r9, #40]
	vstr.32	s1, [r9, #44]
	vstr.32	s2, [r9, #48]
	vstr.32	s3, [r9, #52]
	vstr.32	s4, [r9, #56]
	vstr.32	s5, [r9, #60]
	vstr.32	s9, [sp, #48]
	vstr.32	s27, [sp, #52]
	vstr.32	s28, [sp, #104]
	vstr.32	s15, [sp, #92]
	vstr.32	s14, [sp, #84]
	vstr.32	s12, [sp, #108]
	bne	.L3
	ldr	r2, [sp, #228]
	ldr	r8, [sp, #224]
	add	r2, r2, #20
	str	r2, [sp, #228]
	cmp	r2, #76
	ldr	r2, [sp, #96]
	mov	r3, r4
	add	r2, r2, #20
	add	r0, r0, #20
	str	r2, [sp, #96]
	add	r8, r8, #20
	vldr.32	s18, [sp, #44]
	vldr.32	s19, [sp, #40]
	vldr.32	s20, [sp, #36]
	vldr.32	s21, [sp, #56]
	vmov.f32	s22, s31
	vmov.f32	s23, s9
	vmov.f32	s24, s15
	vmov.f32	s25, s14
	vldr.32	s26, [sp, #8]
	vldr.32	s27, [sp, #4]
	vmov.f32	s17, s11
	vmov.f32	s16, s29
	bne	.L4
	mov	r8, r4
	b	.L2
	.size	SVD_decompose, .-SVD_decompose
	.data
	.align	2
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
