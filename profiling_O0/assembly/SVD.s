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
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_decompose, %function
SVD_decompose:
	@ args = 0, pretend = 0, frame = 6592
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #6592
	sub	sp, sp, #4
	sub	ip, fp, #4096
	sub	ip, ip, #12
	str	r0, [ip, #-2484]
	sub	r0, fp, #4096
	sub	r0, r0, #12
	str	r1, [r0, #-2488]
	sub	r1, fp, #4096
	sub	r1, r1, #12
	str	r2, [r1, #-2492]
	sub	r2, fp, #4096
	sub	r2, r2, #12
	str	r3, [r2, #-2496]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1760
	sub	r3, r3, #12
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1824
	sub	r3, r3, #12
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1888
	sub	r3, r3, #12
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-2484]
	str	r3, [fp, #-176]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-2492]
	str	r3, [fp, #-180]
	mov	r3, #0
	str	r3, [fp, #-184]
	b	.L2
.L4:
	ldr	r3, [fp, #-184]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-176]
	add	r3, r2, r3
	str	r3, [fp, #-188]
	ldr	r3, [fp, #-188]
	vld1.32	{d16-d17}, [r3]
	vstr	d16, [fp, #-204]
	vstr	d17, [fp, #-196]
	ldr	r3, [fp, #-184]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-180]
	add	r3, r2, r3
	str	r3, [fp, #-208]
	vldr	d16, [fp, #-204]
	vldr	d17, [fp, #-196]
	vstr	d16, [fp, #-228]
	vstr	d17, [fp, #-220]
	ldr	r3, [fp, #-208]
	vldr	d16, [fp, #-228]
	vldr	d17, [fp, #-220]
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [fp, #-184]
	add	r3, r3, #1
	str	r3, [fp, #-184]
.L2:
	ldr	r3, [fp, #-184]
	cmp	r3, #3
	ble	.L4
	movw	r3, #:lower16:I
	movt	r3, #:upper16:I
	str	r3, [fp, #-120]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-2488]
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L5
.L7:
	ldr	r3, [fp, #-128]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-120]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-132]
	vld1.32	{d16-d17}, [r3]
	vstr	d16, [fp, #-148]
	vstr	d17, [fp, #-140]
	ldr	r3, [fp, #-128]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-124]
	add	r3, r2, r3
	str	r3, [fp, #-152]
	vldr	d16, [fp, #-148]
	vldr	d17, [fp, #-140]
	vstr	d16, [fp, #-172]
	vstr	d17, [fp, #-164]
	ldr	r3, [fp, #-152]
	vldr	d16, [fp, #-172]
	vldr	d17, [fp, #-164]
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
.L5:
	ldr	r3, [fp, #-128]
	cmp	r3, #3
	ble	.L7
	movw	r3, #:lower16:I
	movt	r3, #:upper16:I
	str	r3, [fp, #-64]
	sub	r3, fp, #5760
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L8
.L10:
	ldr	r3, [fp, #-72]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-76]
	vld1.32	{d16-d17}, [r3]
	vstr	d16, [fp, #-92]
	vstr	d17, [fp, #-84]
	ldr	r3, [fp, #-72]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	str	r3, [fp, #-96]
	vldr	d16, [fp, #-92]
	vldr	d17, [fp, #-84]
	vstr	d16, [fp, #-116]
	vstr	d17, [fp, #-108]
	ldr	r3, [fp, #-96]
	vldr	d16, [fp, #-116]
	vldr	d17, [fp, #-108]
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L8:
	ldr	r3, [fp, #-72]
	cmp	r3, #3
	ble	.L10
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
	b	.L11
.L275:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L12
.L267:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L13
.L266:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	movw	r3, #:lower16:I
	movt	r3, #:upper16:I
	str	r3, [r2, #-1580]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #5824
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1584]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1588]
	b	.L14
.L16:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1588]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1580]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1592]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1592]
	vld1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1588]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1584]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1612]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #1632
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1600
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vst1.64	{d16-d17}, [r2:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1612]
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #1632
	vld1.64	{d16-d17}, [r2:64]
	vst1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1588]
	add	r3, r3, #1
	str	r3, [r2, #-1588]
.L14:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1588]
	cmp	r3, #3
	ble	.L16
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	movw	r3, #:lower16:I
	movt	r3, #:upper16:I
	str	r3, [r2, #-1524]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #5888
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1528]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1532]
	b	.L17
.L19:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1532]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1524]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1536]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1536]
	vld1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1552
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1532]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1528]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1556]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1568
	sub	r3, r3, #8
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #1552
	vld1.64	{d16-d17}, [r2:64]
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r2, [r3, #-1556]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1568
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vst1.32	{d16-d17}, [r2]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1532]
	add	r3, r3, #1
	str	r3, [r2, #-1532]
.L17:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1532]
	cmp	r3, #3
	ble	.L19
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	movw	r3, #:lower16:I
	movt	r3, #:upper16:I
	str	r3, [r2, #-1468]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #5952
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1472]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1476]
	b	.L20
.L22:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1476]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1468]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1480]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1480]
	vld1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1488
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1476]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1472]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1500]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #1520
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1488
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vst1.64	{d16-d17}, [r2:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1500]
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #1520
	vld1.64	{d16-d17}, [r2:64]
	vst1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1476]
	add	r3, r3, #1
	str	r3, [r2, #-1476]
.L20:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1476]
	cmp	r3, #3
	ble	.L22
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	movw	r3, #:lower16:I
	movt	r3, #:upper16:I
	str	r3, [r2, #-1412]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #6016
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1416]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1420]
	b	.L23
.L25:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1420]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1412]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1424]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1424]
	vld1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1440
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1420]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1416]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1444]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1456
	sub	r3, r3, #8
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #1440
	vld1.64	{d16-d17}, [r2:64]
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r2, [r3, #-1444]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1456
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vst1.32	{d16-d17}, [r2]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1420]
	add	r3, r3, #1
	str	r3, [r2, #-1420]
.L23:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1420]
	cmp	r3, #3
	ble	.L25
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	movw	r3, #:lower16:I
	movt	r3, #:upper16:I
	str	r3, [r2, #-1356]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #6080
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1360]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1364]
	b	.L26
.L28:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1364]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1356]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1368]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1368]
	vld1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1376
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1364]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1360]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1388]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #1408
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1376
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vst1.64	{d16-d17}, [r2:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1388]
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #1408
	vld1.64	{d16-d17}, [r2:64]
	vst1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1364]
	add	r3, r3, #1
	str	r3, [r2, #-1364]
.L26:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1364]
	cmp	r3, #3
	ble	.L28
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	movw	r3, #:lower16:I
	movt	r3, #:upper16:I
	str	r3, [r2, #-1300]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #6144
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1304]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1308]
	b	.L29
.L31:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1308]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1300]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1312]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1312]
	vld1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1328
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1308]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1304]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1332]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1344
	sub	r3, r3, #8
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #1328
	vld1.64	{d16-d17}, [r2:64]
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r2, [r3, #-1332]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1344
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vst1.32	{d16-d17}, [r2]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1308]
	add	r3, r3, #1
	str	r3, [r2, #-1308]
.L29:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1308]
	cmp	r3, #3
	ble	.L31
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	movw	r3, #:lower16:I
	movt	r3, #:upper16:I
	str	r3, [r2, #-1244]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #6208
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1248]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1252]
	b	.L32
.L34:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1252]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1244]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1256]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1256]
	vld1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1264
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1252]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1248]
	add	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-1276]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #1296
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1264
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vst1.64	{d16-d17}, [r2:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1276]
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #1296
	vld1.64	{d16-d17}, [r2:64]
	vst1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1252]
	add	r3, r3, #1
	str	r3, [r2, #-1252]
.L32:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1252]
	cmp	r3, #3
	ble	.L34
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-32]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-36]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-40]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
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
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #1952
	sub	r2, r2, #12
	ldr	r1, [fp, #-16]
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r2, r3
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-60]
	bl	SVD_sin
	vmov.f32	s15, s0
	vneg.f32	s15, s15
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1952
	sub	r3, r3, #12
	ldr	r2, [fp, #-16]
	lsl	r1, r2, #2
	ldr	r2, [fp, #-20]
	add	r2, r1, r2
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-60]
	bl	SVD_sin
	vmov.f32	s15, s0
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1952
	sub	r3, r3, #12
	ldr	r2, [fp, #-20]
	lsl	r1, r2, #2
	ldr	r2, [fp, #-16]
	add	r2, r1, r2
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-60]
	bl	SVD_cos
	vmov.f32	s15, s0
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #1952
	sub	r2, r2, #12
	ldr	r1, [fp, #-20]
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r2, r3
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_cos
	vmov.f32	s15, s0
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #2016
	sub	r2, r2, #12
	ldr	r1, [fp, #-16]
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r2, r3
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_sin
	vmov.f32	s15, s0
	vneg.f32	s15, s15
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2016
	sub	r3, r3, #12
	ldr	r2, [fp, #-16]
	lsl	r1, r2, #2
	ldr	r2, [fp, #-20]
	add	r2, r1, r2
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_sin
	vmov.f32	s15, s0
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2016
	sub	r3, r3, #12
	ldr	r2, [fp, #-20]
	lsl	r1, r2, #2
	ldr	r2, [fp, #-16]
	add	r2, r1, r2
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_cos
	vmov.f32	s15, s0
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #2016
	sub	r2, r2, #12
	ldr	r1, [fp, #-20]
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r2, r3
	vstr.32	s15, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #6016
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1204]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #6144
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1208]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1204]
	sub	r2, fp, #4096
	sub	r2, r2, #12
	str	r3, [r2, #-1212]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1212]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1216]
	b	.L36
.L37:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1216]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1208]
	add	r3, r2, r3
	mov	r1, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #2224
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1216]
	lsl	r3, r3, #4
	add	r3, r2, r3
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r1, [r3, #-1220]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1232
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r2, [r3, #-1220]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1232
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vst1.32	{d16-d17}, [r2]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1216]
	add	r3, r3, #1
	str	r3, [r2, #-1216]
.L36:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1216]
	cmp	r3, #3
	ble	.L37
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #6080
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1168]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #6208
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [r2, #-1172]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1168]
	sub	r2, fp, #4096
	sub	r2, r2, #12
	str	r3, [r2, #-1176]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1176]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1180]
	b	.L39
.L40:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1180]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1172]
	add	r3, r2, r3
	mov	r1, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #2224
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1180]
	lsl	r3, r3, #4
	add	r3, r2, r3
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r1, [r3, #-1184]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1200
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1184]
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #1200
	vld1.64	{d16-d17}, [r2:64]
	vst1.32	{d16-d17}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1180]
	add	r3, r3, #1
	str	r3, [r2, #-1180]
.L39:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1180]
	cmp	r3, #3
	ble	.L40
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-2488]
	str	r3, [fp, #-4052]
	sub	r3, fp, #6144
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-4056]
	sub	r3, fp, #5824
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-4060]
	ldr	r3, [fp, #-4052]
	str	r3, [fp, #-4064]
	ldr	r3, [fp, #-4064]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vstmia	r3, {d16-d23}
	ldr	r3, [fp, #-4056]
	str	r3, [fp, #-4068]
	ldr	r3, [fp, #-4068]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vstmia	r3, {d16-d23}
	sub	r3, fp, #12
	sub	r3, r3, #4048
	sub	r3, r3, #12
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #4048
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #4080
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #4080
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #4080
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #4080
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-24]
	vstr	d19, [r3, #-16]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-40]
	vstr	d19, [r3, #-32]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-56]
	vstr	d17, [r3, #-48]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-24]
	vldr	d17, [r3, #-16]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-40]
	vldr	d19, [r3, #-32]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-56]
	vldr	d21, [r3, #-48]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-72]
	vstr	d17, [r3, #-64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-72]
	vldr	d17, [r3, #-64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-76]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-76]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-96]
	vstr	d19, [r3, #-88]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-112]
	vstr	d19, [r3, #-104]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-128]
	vstr	d17, [r3, #-120]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-96]
	vldr	d17, [r3, #-88]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-112]
	vldr	d19, [r3, #-104]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-128]
	vldr	d21, [r3, #-120]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-144]
	vstr	d17, [r3, #-136]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-144]
	vldr	d17, [r3, #-136]
	vmov.32	r2, d17[0]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-148]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-148]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-168]
	vstr	d19, [r3, #-160]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-184]
	vstr	d19, [r3, #-176]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-200]
	vstr	d17, [r3, #-192]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-168]
	vldr	d17, [r3, #-160]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-184]
	vldr	d19, [r3, #-176]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-200]
	vldr	d21, [r3, #-192]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-216]
	vstr	d17, [r3, #-208]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-216]
	vldr	d17, [r3, #-208]
	vmov.32	r2, d17[1]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-220]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-220]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-240]
	vstr	d19, [r3, #-232]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-256]
	vstr	d19, [r3, #-248]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-272]
	vstr	d17, [r3, #-264]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-240]
	vldr	d17, [r3, #-232]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-256]
	vldr	d19, [r3, #-248]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-272]
	vldr	d21, [r3, #-264]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-276]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-276]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-296]
	vstr	d17, [r3, #-288]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-296]
	vldr	d17, [r3, #-288]
	vmov.32	r2, d16[0]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-300]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-300]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-320]
	vstr	d19, [r3, #-312]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-336]
	vstr	d19, [r3, #-328]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-352]
	vstr	d17, [r3, #-344]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-320]
	vldr	d17, [r3, #-312]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-336]
	vldr	d19, [r3, #-328]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-352]
	vldr	d21, [r3, #-344]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-368]
	vstr	d17, [r3, #-360]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-368]
	vldr	d17, [r3, #-360]
	vmov.32	r2, d16[1]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-372]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-372]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-392]
	vstr	d19, [r3, #-384]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-408]
	vstr	d19, [r3, #-400]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-424]
	vstr	d17, [r3, #-416]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-392]
	vldr	d17, [r3, #-384]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-408]
	vldr	d19, [r3, #-400]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-424]
	vldr	d21, [r3, #-416]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-440]
	vstr	d17, [r3, #-432]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-440]
	vldr	d17, [r3, #-432]
	vmov.32	r2, d17[0]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-444]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-444]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-464]
	vstr	d19, [r3, #-456]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-480]
	vstr	d19, [r3, #-472]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-496]
	vstr	d17, [r3, #-488]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-464]
	vldr	d17, [r3, #-456]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-480]
	vldr	d19, [r3, #-472]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-496]
	vldr	d21, [r3, #-488]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-512]
	vstr	d17, [r3, #-504]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-512]
	vldr	d17, [r3, #-504]
	vmov.32	r2, d17[1]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-516]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-516]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-536]
	vstr	d19, [r3, #-528]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-552]
	vstr	d19, [r3, #-544]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-568]
	vstr	d17, [r3, #-560]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-536]
	vldr	d17, [r3, #-528]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-552]
	vldr	d19, [r3, #-544]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-568]
	vldr	d21, [r3, #-560]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-572]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-572]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-592]
	vstr	d17, [r3, #-584]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-592]
	vldr	d17, [r3, #-584]
	vmov.32	r2, d16[0]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-596]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-596]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-616]
	vstr	d19, [r3, #-608]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-632]
	vstr	d19, [r3, #-624]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-648]
	vstr	d17, [r3, #-640]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-616]
	vldr	d17, [r3, #-608]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-632]
	vldr	d19, [r3, #-624]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-648]
	vldr	d21, [r3, #-640]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-664]
	vstr	d17, [r3, #-656]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-664]
	vldr	d17, [r3, #-656]
	vmov.32	r2, d16[1]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-668]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-668]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-688]
	vstr	d19, [r3, #-680]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-704]
	vstr	d19, [r3, #-696]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-720]
	vstr	d17, [r3, #-712]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-688]
	vldr	d17, [r3, #-680]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-704]
	vldr	d19, [r3, #-696]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-720]
	vldr	d21, [r3, #-712]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-736]
	vstr	d17, [r3, #-728]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-736]
	vldr	d17, [r3, #-728]
	vmov.32	r2, d17[0]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-740]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-740]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-760]
	vstr	d19, [r3, #-752]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-776]
	vstr	d19, [r3, #-768]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-792]
	vstr	d17, [r3, #-784]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-760]
	vldr	d17, [r3, #-752]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-776]
	vldr	d19, [r3, #-768]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-792]
	vldr	d21, [r3, #-784]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-808]
	vstr	d17, [r3, #-800]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-808]
	vldr	d17, [r3, #-800]
	vmov.32	r2, d17[1]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-812]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-812]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-832]
	vstr	d19, [r3, #-824]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-848]
	vstr	d19, [r3, #-840]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-864]
	vstr	d17, [r3, #-856]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-832]
	vldr	d17, [r3, #-824]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-848]
	vldr	d19, [r3, #-840]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-864]
	vldr	d21, [r3, #-856]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-868]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-868]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-888]
	vstr	d17, [r3, #-880]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-888]
	vldr	d17, [r3, #-880]
	vmov.32	r2, d16[0]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-892]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-892]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-912]
	vstr	d19, [r3, #-904]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-928]
	vstr	d19, [r3, #-920]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-944]
	vstr	d17, [r3, #-936]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-912]
	vldr	d17, [r3, #-904]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-928]
	vldr	d19, [r3, #-920]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-944]
	vldr	d21, [r3, #-936]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-960]
	vstr	d17, [r3, #-952]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-960]
	vldr	d17, [r3, #-952]
	vmov.32	r2, d16[1]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	str	r2, [r3, #-964]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-964]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d18, [r3, #-984]
	vstr	d19, [r3, #-976]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vstr	d18, [r3, #-1000]
	vstr	d19, [r3, #-992]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-1016]
	vstr	d17, [r3, #-1008]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d16, [r3, #-984]
	vldr	d17, [r3, #-976]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d18, [r3, #-1000]
	vldr	d19, [r3, #-992]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vldr	d20, [r3, #-1016]
	vldr	d21, [r3, #-1008]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1024
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1024
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1056
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1072
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1088
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1056
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1072
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1088
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1104
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1104
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1104
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1104
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	vstr	d16, [r3, #-8]
	vstr	d17, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1120
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1136
	sub	r3, r3, #8
	sub	r2, fp, #4096
	sub	r2, r2, #12
	vldr	d18, [r2, #-8]
	vldr	d19, [r2]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1120
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	ldr	r3, [fp, #-4060]
	sub	r2, fp, #4096
	sub	r2, r2, #12
	str	r3, [r2, #-1164]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2288
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #2352
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #2288
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1164]
	vst4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vst4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #6080
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-2828]
	sub	r3, fp, #5760
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-2832]
	sub	r3, fp, #5952
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-2836]
	ldr	r3, [fp, #-2828]
	str	r3, [fp, #-2840]
	ldr	r3, [fp, #-2840]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vstmia	r3, {d16-d23}
	ldr	r3, [fp, #-2832]
	str	r3, [fp, #-2844]
	ldr	r3, [fp, #-2844]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vstmia	r3, {d16-d23}
	sub	r3, fp, #12
	sub	r3, r3, #2832
	sub	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2832
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2848
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2848
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #2848
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2848
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2896
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2912
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2928
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2896
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2912
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2928
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2944
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2944
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #2944
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2944
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #2960
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2976
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2992
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2960
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2976
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2992
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3008
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3008
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #3008
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3008
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #3040
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3056
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3072
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3040
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3056
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3072
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3088
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3088
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #3088
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3088
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #3104
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3120
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3136
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3104
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3120
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3136
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3136
	sub	r3, r3, #12
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3136
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #3168
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3168
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #3168
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3168
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3184
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3200
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3216
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3184
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3200
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3216
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #3232
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3232
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #3232
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3232
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #3264
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3280
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3296
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3264
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3280
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3296
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #3312
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3312
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #3312
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3312
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #3328
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3344
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3360
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3328
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3344
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3360
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #3376
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3376
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #3376
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3376
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #3408
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3424
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3440
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3408
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3424
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3440
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #3440
	sub	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3440
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #3456
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3456
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #3456
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3456
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3488
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3504
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3520
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3488
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3504
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3520
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #3536
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3536
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #3536
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3536
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #3552
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3568
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3584
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3552
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3568
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3584
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #3600
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3600
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #3600
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3600
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #3632
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3648
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3664
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3632
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3648
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3664
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #3680
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3680
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #3680
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3680
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #3696
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3712
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3728
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3696
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3712
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3728
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #3728
	sub	r3, r3, #12
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3728
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #3760
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3760
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #3760
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3760
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3776
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3792
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3808
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3776
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3792
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3808
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #3824
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3824
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #3824
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3824
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #3856
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3872
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3888
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3856
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3872
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3888
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #3904
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3904
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #3904
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3904
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #3920
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3936
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3952
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3920
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3936
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3952
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #3968
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #3968
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #3968
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #3968
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #2880
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #4000
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #4016
	sub	r2, fp, #12
	sub	r2, r2, #2880
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #4032
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #4000
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #4016
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #4032
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	ldr	r3, [fp, #-2836]
	str	r3, [fp, #-4048]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2288
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #2352
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #2288
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	ldr	r3, [fp, #-4048]
	vst4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vst4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #6016
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-1604]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-2492]
	str	r3, [fp, #-1608]
	sub	r3, fp, #5888
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1604]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1616]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vstmia	r3, {d16-d23}
	ldr	r3, [fp, #-1608]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1620]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vstmia	r3, {d16-d23}
	sub	r3, fp, #12
	sub	r3, r3, #1600
	sub	r3, r3, #12
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1600
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1632
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1632
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #1632
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1632
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1680
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1648
	sub	r2, r2, #8
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1696
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1664
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1680
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1696
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1712
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1712
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #1712
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1712
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #1744
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r2, r3, #1760
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	vst1.64	{d18-d19}, [r2:64]
	sub	r3, fp, #12
	sub	r3, r3, #1776
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1744
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1760
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1776
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1792
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1792
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #1792
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1792
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #1808
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1824
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1648
	sub	r2, r2, #8
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1840
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1808
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1824
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1840
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1856
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1856
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #1856
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1856
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #1888
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r2, r3, #1904
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	vst1.64	{d18-d19}, [r2:64]
	sub	r3, fp, #12
	sub	r3, r3, #1920
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1888
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1904
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1920
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1920
	sub	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1920
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #1936
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1936
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #1936
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1936
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1968
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r2, r3, #1984
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	vst1.64	{d18-d19}, [r2:64]
	sub	r3, fp, #12
	sub	r3, r3, #2000
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1968
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1984
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2000
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #2016
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2016
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #2016
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2016
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #2032
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2048
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1648
	sub	r2, r2, #8
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2064
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2032
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2048
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2064
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #2080
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2080
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #2080
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2080
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #2112
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r2, r3, #2128
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	vst1.64	{d18-d19}, [r2:64]
	sub	r3, fp, #12
	sub	r3, r3, #2144
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2112
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2128
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2144
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #2160
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2160
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #2160
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2160
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #2176
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2192
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1648
	sub	r2, r2, #8
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2208
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2176
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2192
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2208
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #2208
	sub	r3, r3, #12
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2208
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #2240
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2240
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #2240
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2240
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2256
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2272
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1648
	sub	r2, r2, #8
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2288
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2256
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2272
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2288
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #2304
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2304
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #2304
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2304
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #2336
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r2, r3, #2352
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	vst1.64	{d18-d19}, [r2:64]
	sub	r3, fp, #12
	sub	r3, r3, #2368
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2336
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2368
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #2384
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2384
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #2384
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2384
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #2400
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2416
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1648
	sub	r2, r2, #8
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2432
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2400
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2416
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2432
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #2448
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2448
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #2448
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2448
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #2480
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r2, r3, #2496
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	vst1.64	{d18-d19}, [r2:64]
	sub	r3, fp, #12
	sub	r3, r3, #2512
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2496
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2512
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #2512
	sub	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2512
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #2528
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2528
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #2528
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2528
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2560
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r2, r3, #2576
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	vst1.64	{d18-d19}, [r2:64]
	sub	r3, fp, #12
	sub	r3, r3, #2592
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2560
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2576
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2592
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #2608
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2608
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #2608
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2608
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #2624
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2640
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1648
	sub	r2, r2, #8
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2656
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2624
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2640
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2656
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #2672
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2672
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #2672
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2672
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #2704
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r2, r3, #2720
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	vst1.64	{d18-d19}, [r2:64]
	sub	r3, fp, #12
	sub	r3, r3, #2736
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2704
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2720
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2736
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #2752
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2752
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #2752
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #2752
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #12
	sub	r3, r3, #1648
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2784
	sub	r3, r3, #8
	sub	r2, fp, #12
	sub	r2, r2, #1648
	sub	r2, r2, #8
	vld1.64	{d18-d19}, [r2:64]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2800
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2768
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2784
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #2800
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	ldr	r3, [fp, #-1612]
	str	r3, [fp, #-2824]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2288
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #2352
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #2288
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	ldr	r3, [fp, #-2824]
	vst4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vst4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #5888
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-384]
	sub	r3, fp, #6208
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-388]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-2492]
	str	r3, [fp, #-392]
	ldr	r3, [fp, #-384]
	str	r3, [fp, #-396]
	ldr	r3, [fp, #-396]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vstmia	r3, {d16-d23}
	ldr	r3, [fp, #-388]
	str	r3, [fp, #-400]
	ldr	r3, [fp, #-400]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vstmia	r3, {d16-d23}
	mov	r3, #0
	str	r3, [fp, #-404]	@ float
	ldr	r3, [fp, #-404]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	vstr	d16, [fp, #-420]
	vstr	d17, [fp, #-412]
	vldr	d16, [fp, #-420]
	vldr	d17, [fp, #-412]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-424]	@ float
	ldr	r3, [fp, #-424]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	vstr	d18, [fp, #-460]
	vstr	d19, [fp, #-452]
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vstr	d18, [fp, #-476]
	vstr	d19, [fp, #-468]
	vstr	d16, [fp, #-492]
	vstr	d17, [fp, #-484]
	vldr	d16, [fp, #-460]
	vldr	d17, [fp, #-452]
	vldr	d18, [fp, #-476]
	vldr	d19, [fp, #-468]
	vldr	d20, [fp, #-492]
	vldr	d21, [fp, #-484]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	vstr	d16, [fp, #-508]
	vstr	d17, [fp, #-500]
	vldr	d16, [fp, #-508]
	vldr	d17, [fp, #-500]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-512]	@ float
	ldr	r3, [fp, #-512]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d18, [fp, #-532]
	vstr	d19, [fp, #-524]
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vstr	d18, [fp, #-548]
	vstr	d19, [fp, #-540]
	vstr	d16, [fp, #-564]
	vstr	d17, [fp, #-556]
	vldr	d16, [fp, #-532]
	vldr	d17, [fp, #-524]
	vldr	d18, [fp, #-548]
	vldr	d19, [fp, #-540]
	vldr	d20, [fp, #-564]
	vldr	d21, [fp, #-556]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	vstr	d16, [fp, #-580]
	vstr	d17, [fp, #-572]
	vldr	d16, [fp, #-580]
	vldr	d17, [fp, #-572]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-584]	@ float
	ldr	r3, [fp, #-584]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d18, [fp, #-604]
	vstr	d19, [fp, #-596]
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vstr	d18, [fp, #-620]
	vstr	d19, [fp, #-612]
	vstr	d16, [fp, #-636]
	vstr	d17, [fp, #-628]
	vldr	d16, [fp, #-604]
	vldr	d17, [fp, #-596]
	vldr	d18, [fp, #-620]
	vldr	d19, [fp, #-612]
	vldr	d20, [fp, #-636]
	vldr	d21, [fp, #-628]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vld1.64	{d16-d17}, [r3:64]
	vstr	d16, [fp, #-652]
	vstr	d17, [fp, #-644]
	vldr	d16, [fp, #-652]
	vldr	d17, [fp, #-644]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-656]	@ float
	ldr	r3, [fp, #-656]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d18, [fp, #-676]
	vstr	d19, [fp, #-668]
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vstr	d18, [fp, #-692]
	vstr	d19, [fp, #-684]
	vstr	d16, [fp, #-708]
	vstr	d17, [fp, #-700]
	vldr	d16, [fp, #-676]
	vldr	d17, [fp, #-668]
	vldr	d18, [fp, #-692]
	vldr	d19, [fp, #-684]
	vldr	d20, [fp, #-708]
	vldr	d21, [fp, #-700]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vst1.64	{d16-d17}, [r3:64]
	mov	r3, #0
	str	r3, [fp, #-712]	@ float
	ldr	r3, [fp, #-712]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-732]
	vstr	d17, [fp, #-724]
	vldr	d16, [fp, #-732]
	vldr	d17, [fp, #-724]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-736]	@ float
	ldr	r3, [fp, #-736]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	vstr	d18, [fp, #-756]
	vstr	d19, [fp, #-748]
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vstr	d18, [fp, #-772]
	vstr	d19, [fp, #-764]
	vstr	d16, [fp, #-788]
	vstr	d17, [fp, #-780]
	vldr	d16, [fp, #-756]
	vldr	d17, [fp, #-748]
	vldr	d18, [fp, #-772]
	vldr	d19, [fp, #-764]
	vldr	d20, [fp, #-788]
	vldr	d21, [fp, #-780]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-804]
	vstr	d17, [fp, #-796]
	vldr	d16, [fp, #-804]
	vldr	d17, [fp, #-796]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-808]	@ float
	ldr	r3, [fp, #-808]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d18, [fp, #-828]
	vstr	d19, [fp, #-820]
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vstr	d18, [fp, #-844]
	vstr	d19, [fp, #-836]
	vstr	d16, [fp, #-860]
	vstr	d17, [fp, #-852]
	vldr	d16, [fp, #-828]
	vldr	d17, [fp, #-820]
	vldr	d18, [fp, #-844]
	vldr	d19, [fp, #-836]
	vldr	d20, [fp, #-860]
	vldr	d21, [fp, #-852]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-876]
	vstr	d17, [fp, #-868]
	vldr	d16, [fp, #-876]
	vldr	d17, [fp, #-868]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-880]	@ float
	ldr	r3, [fp, #-880]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d18, [fp, #-900]
	vstr	d19, [fp, #-892]
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vstr	d18, [fp, #-916]
	vstr	d19, [fp, #-908]
	vstr	d16, [fp, #-932]
	vstr	d17, [fp, #-924]
	vldr	d16, [fp, #-900]
	vldr	d17, [fp, #-892]
	vldr	d18, [fp, #-916]
	vldr	d19, [fp, #-908]
	vldr	d20, [fp, #-932]
	vldr	d21, [fp, #-924]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-948]
	vstr	d17, [fp, #-940]
	vldr	d16, [fp, #-948]
	vldr	d17, [fp, #-940]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-952]	@ float
	ldr	r3, [fp, #-952]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d18, [fp, #-972]
	vstr	d19, [fp, #-964]
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vstr	d18, [fp, #-988]
	vstr	d19, [fp, #-980]
	vstr	d16, [fp, #-1004]
	vstr	d17, [fp, #-996]
	vldr	d16, [fp, #-972]
	vldr	d17, [fp, #-964]
	vldr	d18, [fp, #-988]
	vldr	d19, [fp, #-980]
	vldr	d20, [fp, #-1004]
	vldr	d21, [fp, #-996]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	mov	r3, #0
	str	r3, [fp, #-1008]	@ float
	ldr	r3, [fp, #-1008]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #1024
	sub	r3, r3, #4
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #1024
	sub	r3, r3, #4
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r3, d16[0]
	sub	r2, fp, #1024
	sub	r2, r2, #8
	str	r3, [r2]	@ float
	sub	r3, fp, #1024
	sub	r3, r3, #8
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1040
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1056
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1072
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1040
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1056
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1072
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #1088
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1088
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #1088
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1088
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #1104
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1120
	sub	r3, r3, #8
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1104
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1120
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #1152
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1152
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #1184
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1200
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1184
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1200
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1216
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #1232
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1232
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #1232
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1232
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #1248
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1264
	sub	r3, r3, #8
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1280
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1248
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1264
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1280
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #1280
	sub	r3, r3, #12
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1280
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #1312
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1312
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #12
	sub	r3, r3, #1312
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1312
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1328
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1344
	sub	r3, r3, #8
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1360
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1328
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1344
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1360
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #1376
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1376
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #12
	sub	r3, r3, #1376
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1376
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #12
	sub	r3, r3, #1408
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1424
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1440
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1408
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1424
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1440
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #1456
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1456
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #12
	sub	r3, r3, #1456
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1456
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	sub	r3, fp, #12
	sub	r3, r3, #1472
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1488
	sub	r3, r3, #8
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1504
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1472
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1488
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1504
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2416
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #1520
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1520
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[1]
	sub	r3, fp, #12
	sub	r3, r3, #1520
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #12
	sub	r3, r3, #1520
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2480
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	sub	r3, fp, #12
	sub	r3, r3, #1552
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1568
	vldr	d18, [fp, #-444]
	vldr	d19, [fp, #-436]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1584
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1552
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1568
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #12
	sub	r3, r3, #1584
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2352
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	ldr	r3, [fp, #-392]
	str	r3, [fp, #-1600]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2288
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #2352
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	sub	r2, fp, #4096
	sub	r2, r2, #12
	sub	r2, r2, #2288
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	ldr	r3, [fp, #-1600]
	vst4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vst4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #5952
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-328]
	sub	r3, fp, #5760
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-332]
	mov	r3, #0
	str	r3, [fp, #-336]
	b	.L257
.L259:
	ldr	r3, [fp, #-336]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-328]
	add	r3, r2, r3
	str	r3, [fp, #-340]
	ldr	r3, [fp, #-340]
	vld1.32	{d16-d17}, [r3]
	vstr	d16, [fp, #-356]
	vstr	d17, [fp, #-348]
	ldr	r3, [fp, #-336]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-332]
	add	r3, r2, r3
	str	r3, [fp, #-360]
	vldr	d16, [fp, #-356]
	vldr	d17, [fp, #-348]
	vstr	d16, [fp, #-380]
	vstr	d17, [fp, #-372]
	ldr	r3, [fp, #-360]
	vldr	d16, [fp, #-380]
	vldr	d17, [fp, #-372]
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [fp, #-336]
	add	r3, r3, #1
	str	r3, [fp, #-336]
.L257:
	ldr	r3, [fp, #-336]
	cmp	r3, #3
	ble	.L259
	sub	r3, fp, #5760
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-288]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-2496]
	str	r3, [fp, #-292]
	ldr	r3, [fp, #-288]
	str	r3, [fp, #-296]
	ldr	r3, [fp, #-296]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r3, r3, #2224
	vstmia	r3, {d16-d23}
	mov	r3, #0
	str	r3, [fp, #-300]
	b	.L261
.L262:
	ldr	r3, [fp, #-300]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-292]
	add	r3, r2, r3
	mov	r1, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	sub	r2, r3, #2224
	ldr	r3, [fp, #-300]
	lsl	r3, r3, #4
	add	r3, r2, r3
	vld1.64	{d16-d17}, [r3:64]
	str	r1, [fp, #-304]
	vstr	d16, [fp, #-324]
	vstr	d17, [fp, #-316]
	ldr	r3, [fp, #-304]
	vldr	d16, [fp, #-324]
	vldr	d17, [fp, #-316]
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [fp, #-300]
	add	r3, r3, #1
	str	r3, [fp, #-300]
.L261:
	ldr	r3, [fp, #-300]
	cmp	r3, #3
	ble	.L262
	sub	r3, fp, #5824
	sub	r3, r3, #12
	sub	r3, r3, #44
	str	r3, [fp, #-232]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-2488]
	str	r3, [fp, #-236]
	mov	r3, #0
	str	r3, [fp, #-240]
	b	.L263
.L265:
	ldr	r3, [fp, #-240]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-232]
	add	r3, r2, r3
	str	r3, [fp, #-244]
	ldr	r3, [fp, #-244]
	vld1.32	{d16-d17}, [r3]
	vstr	d16, [fp, #-260]
	vstr	d17, [fp, #-252]
	ldr	r3, [fp, #-240]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-236]
	add	r3, r2, r3
	str	r3, [fp, #-264]
	vldr	d16, [fp, #-260]
	vldr	d17, [fp, #-252]
	vstr	d16, [fp, #-284]
	vstr	d17, [fp, #-276]
	ldr	r3, [fp, #-264]
	vldr	d16, [fp, #-284]
	vldr	d17, [fp, #-276]
	vst1.32	{d16-d17}, [r3]
	ldr	r3, [fp, #-240]
	add	r3, r3, #1
	str	r3, [fp, #-240]
.L263:
	ldr	r3, [fp, #-240]
	cmp	r3, #3
	ble	.L265
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L13:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	ble	.L266
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L12:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L267
.L11:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-2492]
	str	r3, [r2, #-1636]
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1640]
	b	.L268
.L274:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-1644]
	b	.L269
.L273:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r2, [r2, #-1640]
	ldr	r3, [r3, #-1644]
	cmp	r2, r3
	beq	.L270
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1640]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-1636]
	add	r2, r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1644]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmov.f32	s0, s15
	bl	SVD_abs
	vmov.f32	s14, s0
	vldr.32	s15, .L284
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	blt	.L270
	mov	r3, #0
	b	.L272
.L270:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1644]
	add	r3, r3, #1
	str	r3, [r2, #-1644]
.L269:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1644]
	cmp	r3, #3
	ble	.L273
	sub	r3, fp, #4096
	sub	r3, r3, #12
	mov	r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1640]
	add	r3, r3, #1
	str	r3, [r2, #-1640]
.L268:
	sub	r3, fp, #4096
	sub	r3, r3, #12
	ldr	r3, [r3, #-1640]
	cmp	r3, #3
	ble	.L274
	mov	r3, #1
.L272:
	cmp	r3, #0
	beq	.L275
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L276
.L281:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L277
.L280:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
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
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vldr.32	s14, .L284
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L278
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	sub	r2, fp, #4096
	sub	r2, r2, #12
	ldr	r2, [r2, #-2492]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]	@ float
.L278:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L277:
	ldr	r3, [fp, #-28]
	cmp	r3, #3
	ble	.L280
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L276:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	ble	.L281
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L285:
	.align	2
.L284:
	.word	953267991
	.size	SVD_decompose, .-SVD_decompose
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
