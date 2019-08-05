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
	.type	SVD_matrix_mul, %function
SVD_matrix_mul:
	@ args = 0, pretend = 0, frame = 1552
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #1552
	sub	sp, sp, #4
	str	r0, [fp, #-1544]
	str	r1, [fp, #-1548]
	str	r2, [fp, #-1552]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1216]
	ldr	r3, [fp, #-1216]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1472
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #1472
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vstmia	r3, {d16-d23}
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1212]
	ldr	r3, [fp, #-1212]
	vld4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vld4.32	{d17, d19, d21, d23}, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1472
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #1472
	vldmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #1200
	sub	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #4
	sub	r3, r3, #1200
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1200
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1200
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[0]
	sub	r3, fp, #4
	sub	r3, r3, #1168
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #4
	sub	r3, r3, #1168
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1168
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1152
	sub	r3, r3, #8
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1168
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1120
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1120
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d16[1]
	sub	r3, fp, #4
	sub	r3, r3, #1104
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	sub	r3, fp, #4
	sub	r3, r3, #1104
	sub	r3, r3, #4
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	sub	r3, fp, #4
	sub	r3, r3, #1072
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vst1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1104
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1072
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1104
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1056
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1056
	vld1.64	{d16-d17}, [r3:64]
	vmov.32	r2, d17[0]
	sub	r3, fp, #4
	sub	r3, r3, #1024
	sub	r3, r3, #12
	str	r2, [r3]	@ float
	sub	r3, fp, #4
	sub	r3, r3, #1024
	sub	r3, r3, #12
	ldr	r3, [r3]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d18, [fp, #-1004]
	vstr	d19, [fp, #-996]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-1020]
	vstr	d19, [fp, #-1012]
	sub	r3, fp, #4
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vst1.64	{d16-d17}, [r3:64]
	vldr	d16, [fp, #-1004]
	vldr	d17, [fp, #-996]
	vldr	d18, [fp, #-1020]
	vldr	d19, [fp, #-1012]
	sub	r3, fp, #4
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vld1.64	{d20-d21}, [r3:64]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vld1.64	{d16-d17}, [r3:64]
	vstr	d16, [fp, #-988]
	vstr	d17, [fp, #-980]
	vldr	d16, [fp, #-988]
	vldr	d17, [fp, #-980]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-968]	@ float
	ldr	r3, [fp, #-968]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vld1.64	{d18-d19}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d18, [fp, #-932]
	vstr	d19, [fp, #-924]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-948]
	vstr	d19, [fp, #-940]
	vstr	d16, [fp, #-964]
	vstr	d17, [fp, #-956]
	vldr	d16, [fp, #-932]
	vldr	d17, [fp, #-924]
	vldr	d18, [fp, #-948]
	vldr	d19, [fp, #-940]
	vldr	d20, [fp, #-964]
	vldr	d21, [fp, #-956]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vst1.64	{d16-d17}, [r3:64]
	mov	r3, #0
	str	r3, [fp, #-912]	@ float
	ldr	r3, [fp, #-912]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-908]
	vstr	d17, [fp, #-900]
	vldr	d16, [fp, #-908]
	vldr	d17, [fp, #-900]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-888]	@ float
	ldr	r3, [fp, #-888]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vld1.64	{d16-d17}, [r3:64]
	vstr	d18, [fp, #-852]
	vstr	d19, [fp, #-844]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-868]
	vstr	d19, [fp, #-860]
	vstr	d16, [fp, #-884]
	vstr	d17, [fp, #-876]
	vldr	d16, [fp, #-852]
	vldr	d17, [fp, #-844]
	vldr	d18, [fp, #-868]
	vldr	d19, [fp, #-860]
	vldr	d20, [fp, #-884]
	vldr	d21, [fp, #-876]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-836]
	vstr	d17, [fp, #-828]
	vldr	d16, [fp, #-836]
	vldr	d17, [fp, #-828]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-816]	@ float
	ldr	r3, [fp, #-816]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d18, [fp, #-780]
	vstr	d19, [fp, #-772]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-796]
	vstr	d19, [fp, #-788]
	vstr	d16, [fp, #-812]
	vstr	d17, [fp, #-804]
	vldr	d16, [fp, #-780]
	vldr	d17, [fp, #-772]
	vldr	d18, [fp, #-796]
	vldr	d19, [fp, #-788]
	vldr	d20, [fp, #-812]
	vldr	d21, [fp, #-804]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-764]
	vstr	d17, [fp, #-756]
	vldr	d16, [fp, #-764]
	vldr	d17, [fp, #-756]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-744]	@ float
	ldr	r3, [fp, #-744]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d18, [fp, #-708]
	vstr	d19, [fp, #-700]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-724]
	vstr	d19, [fp, #-716]
	vstr	d16, [fp, #-740]
	vstr	d17, [fp, #-732]
	vldr	d16, [fp, #-708]
	vldr	d17, [fp, #-700]
	vldr	d18, [fp, #-724]
	vldr	d19, [fp, #-716]
	vldr	d20, [fp, #-740]
	vldr	d21, [fp, #-732]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d16, [fp, #-692]
	vstr	d17, [fp, #-684]
	vldr	d16, [fp, #-692]
	vldr	d17, [fp, #-684]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-672]	@ float
	ldr	r3, [fp, #-672]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #16]
	vldr	d19, [r3, #24]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d18, [fp, #-636]
	vstr	d19, [fp, #-628]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-652]
	vstr	d19, [fp, #-644]
	vstr	d16, [fp, #-668]
	vstr	d17, [fp, #-660]
	vldr	d16, [fp, #-636]
	vldr	d17, [fp, #-628]
	vldr	d18, [fp, #-652]
	vldr	d19, [fp, #-644]
	vldr	d20, [fp, #-668]
	vldr	d21, [fp, #-660]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #16]
	vstr	d17, [r3, #24]
	mov	r3, #0
	str	r3, [fp, #-616]	@ float
	ldr	r3, [fp, #-616]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-612]
	vstr	d17, [fp, #-604]
	vldr	d16, [fp, #-612]
	vldr	d17, [fp, #-604]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-592]	@ float
	ldr	r3, [fp, #-592]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vld1.64	{d16-d17}, [r3:64]
	vstr	d18, [fp, #-556]
	vstr	d19, [fp, #-548]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-572]
	vstr	d19, [fp, #-564]
	vstr	d16, [fp, #-588]
	vstr	d17, [fp, #-580]
	vldr	d16, [fp, #-556]
	vldr	d17, [fp, #-548]
	vldr	d18, [fp, #-572]
	vldr	d19, [fp, #-564]
	vldr	d20, [fp, #-588]
	vldr	d21, [fp, #-580]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-540]
	vstr	d17, [fp, #-532]
	vldr	d16, [fp, #-540]
	vldr	d17, [fp, #-532]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-520]	@ float
	ldr	r3, [fp, #-520]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d18, [fp, #-484]
	vstr	d19, [fp, #-476]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-500]
	vstr	d19, [fp, #-492]
	vstr	d16, [fp, #-516]
	vstr	d17, [fp, #-508]
	vldr	d16, [fp, #-484]
	vldr	d17, [fp, #-476]
	vldr	d18, [fp, #-500]
	vldr	d19, [fp, #-492]
	vldr	d20, [fp, #-516]
	vldr	d21, [fp, #-508]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-468]
	vstr	d17, [fp, #-460]
	vldr	d16, [fp, #-468]
	vldr	d17, [fp, #-460]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-448]	@ float
	ldr	r3, [fp, #-448]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d18, [fp, #-412]
	vstr	d19, [fp, #-404]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-428]
	vstr	d19, [fp, #-420]
	vstr	d16, [fp, #-444]
	vstr	d17, [fp, #-436]
	vldr	d16, [fp, #-412]
	vldr	d17, [fp, #-404]
	vldr	d18, [fp, #-428]
	vldr	d19, [fp, #-420]
	vldr	d20, [fp, #-444]
	vldr	d21, [fp, #-436]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d16, [fp, #-396]
	vstr	d17, [fp, #-388]
	vldr	d16, [fp, #-396]
	vldr	d17, [fp, #-388]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-376]	@ float
	ldr	r3, [fp, #-376]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #32]
	vldr	d19, [r3, #40]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d18, [fp, #-340]
	vstr	d19, [fp, #-332]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-356]
	vstr	d19, [fp, #-348]
	vstr	d16, [fp, #-372]
	vstr	d17, [fp, #-364]
	vldr	d16, [fp, #-340]
	vldr	d17, [fp, #-332]
	vldr	d18, [fp, #-356]
	vldr	d19, [fp, #-348]
	vldr	d20, [fp, #-372]
	vldr	d21, [fp, #-364]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #32]
	vstr	d17, [r3, #40]
	mov	r3, #0
	str	r3, [fp, #-320]	@ float
	ldr	r3, [fp, #-320]	@ float
	vdup.32	q8, r3
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-316]
	vstr	d17, [fp, #-308]
	vldr	d16, [fp, #-316]
	vldr	d17, [fp, #-308]
	vmov.32	r3, d16[0]
	str	r3, [fp, #-296]	@ float
	ldr	r3, [fp, #-296]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vld1.64	{d16-d17}, [r3:64]
	vstr	d18, [fp, #-260]
	vstr	d19, [fp, #-252]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-276]
	vstr	d19, [fp, #-268]
	vstr	d16, [fp, #-292]
	vstr	d17, [fp, #-284]
	vldr	d16, [fp, #-260]
	vldr	d17, [fp, #-252]
	vldr	d18, [fp, #-276]
	vldr	d19, [fp, #-268]
	vldr	d20, [fp, #-292]
	vldr	d21, [fp, #-284]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-244]
	vstr	d17, [fp, #-236]
	vldr	d16, [fp, #-244]
	vldr	d17, [fp, #-236]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-224]	@ float
	ldr	r3, [fp, #-224]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #16]
	vldr	d17, [r3, #24]
	vstr	d18, [fp, #-188]
	vstr	d19, [fp, #-180]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-204]
	vstr	d19, [fp, #-196]
	vstr	d16, [fp, #-220]
	vstr	d17, [fp, #-212]
	vldr	d16, [fp, #-188]
	vldr	d17, [fp, #-180]
	vldr	d18, [fp, #-204]
	vldr	d19, [fp, #-196]
	vldr	d20, [fp, #-220]
	vldr	d21, [fp, #-212]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-172]
	vstr	d17, [fp, #-164]
	vldr	d16, [fp, #-172]
	vldr	d17, [fp, #-164]
	vmov.32	r3, d17[0]
	str	r3, [fp, #-152]	@ float
	ldr	r3, [fp, #-152]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #32]
	vldr	d17, [r3, #40]
	vstr	d18, [fp, #-116]
	vstr	d19, [fp, #-108]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-132]
	vstr	d19, [fp, #-124]
	vstr	d16, [fp, #-148]
	vstr	d17, [fp, #-140]
	vldr	d16, [fp, #-116]
	vldr	d17, [fp, #-108]
	vldr	d18, [fp, #-132]
	vldr	d19, [fp, #-124]
	vldr	d20, [fp, #-148]
	vldr	d21, [fp, #-140]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	sub	r3, fp, #4
	sub	r3, r3, #1344
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d16, [fp, #-100]
	vstr	d17, [fp, #-92]
	vldr	d16, [fp, #-100]
	vldr	d17, [fp, #-92]
	vmov.32	r3, d17[1]
	str	r3, [fp, #-80]	@ float
	ldr	r3, [fp, #-80]	@ float
	vdup.32	q8, r3
	vstr	d16, [fp, #-20]
	vstr	d17, [fp, #-12]
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vldr	d18, [r3, #48]
	vldr	d19, [r3, #56]
	sub	r3, fp, #4
	sub	r3, r3, #1280
	vldr	d16, [r3, #48]
	vldr	d17, [r3, #56]
	vstr	d18, [fp, #-44]
	vstr	d19, [fp, #-36]
	vldr	d18, [fp, #-20]
	vldr	d19, [fp, #-12]
	vstr	d18, [fp, #-60]
	vstr	d19, [fp, #-52]
	vstr	d16, [fp, #-76]
	vstr	d17, [fp, #-68]
	vldr	d16, [fp, #-44]
	vldr	d17, [fp, #-36]
	vldr	d18, [fp, #-60]
	vldr	d19, [fp, #-52]
	vldr	d20, [fp, #-76]
	vldr	d21, [fp, #-68]
	vmla.f32	q8, q9, q10
	sub	r3, fp, #4
	sub	r3, r3, #1408
	vstr	d16, [r3, #48]
	vstr	d17, [r3, #56]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-24]
	sub	r3, fp, #4
	sub	r3, r3, #1536
	sub	r2, fp, #4
	sub	r2, r2, #1408
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #1472
	sub	r2, fp, #4
	sub	r2, r2, #1536
	vldmia	r2, {d16-d23}
	vstmia	r3, {d16-d23}
	sub	r3, fp, #4
	sub	r3, r3, #1472
	vldmia	r3, {d16-d23}
	ldr	r3, [fp, #-24]
	vst4.32	{d16, d18, d20, d22}, [r3]
	add	r3, r3, #32
	vst4.32	{d17, d19, d21, d23}, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
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
	b	.L58
.L59:
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
.L58:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L59
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
	b	.L61
.L63:
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
.L61:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L63
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
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L65
.L71:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L66
.L70:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	beq	.L67
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmov.f32	s0, s15
	bl	SVD_abs
	vmov.f32	s14, s0
	vldr.32	s15, .L73
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	blt	.L67
	mov	r3, #0
	b	.L69
.L67:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L66:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L70
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L65:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L71
	mov	r3, #1
.L69:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L74:
	.align	2
.L73:
	.word	953267991
	.size	SVD_matrix_isDiagonal, .-SVD_matrix_isDiagonal
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
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_decompose, %function
SVD_decompose:
	@ args = 0, pretend = 0, frame = 576
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #580
	str	r0, [fp, #-576]
	str	r1, [fp, #-580]
	str	r2, [fp, #-584]
	str	r3, [fp, #-588]
	sub	r3, fp, #188
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #252
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #316
	mov	r2, #64
	mov	r1, #0
	mov	r0, r3
	bl	memset
	ldr	r1, [fp, #-584]
	ldr	r0, [fp, #-576]
	bl	SVD_matrix_copy
	ldr	r1, [fp, #-580]
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #124
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
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
	b	.L76
.L81:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L77
.L80:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L78
.L79:
	sub	r3, fp, #188
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #252
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #316
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #380
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #444
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #508
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	sub	r3, fp, #572
	mov	r1, r3
	movw	r0, #:lower16:I
	movt	r0, #:upper16:I
	bl	SVD_matrix_copy
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-32]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-36]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-40]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
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
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #368
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-60]
	bl	SVD_sin
	vmov.f32	s15, s0
	vneg.f32	s15, s15
	ldr	r3, [fp, #-16]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #368
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-60]
	bl	SVD_sin
	vmov.f32	s15, s0
	ldr	r3, [fp, #-20]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #368
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-60]
	bl	SVD_cos
	vmov.f32	s15, s0
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #368
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_cos
	vmov.f32	s15, s0
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #432
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_sin
	vmov.f32	s15, s0
	vneg.f32	s15, s15
	ldr	r3, [fp, #-16]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #432
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_sin
	vmov.f32	s15, s0
	ldr	r3, [fp, #-20]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #432
	vstr.32	s15, [r3]
	vldr.32	s0, [fp, #-56]
	bl	SVD_cos
	vmov.f32	s15, s0
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #432
	vstr.32	s15, [r3]
	sub	r2, fp, #508
	sub	r3, fp, #380
	mov	r1, r2
	mov	r0, r3
	bl	SVD_matrix_trans
	sub	r2, fp, #572
	sub	r3, fp, #444
	mov	r1, r2
	mov	r0, r3
	bl	SVD_matrix_trans
	sub	r2, fp, #188
	sub	r3, fp, #508
	mov	r1, r3
	ldr	r0, [fp, #-580]
	bl	SVD_matrix_mul
	sub	r2, fp, #316
	sub	r1, fp, #124
	sub	r3, fp, #444
	mov	r0, r3
	bl	SVD_matrix_mul
	sub	r2, fp, #252
	sub	r3, fp, #380
	ldr	r1, [fp, #-584]
	mov	r0, r3
	bl	SVD_matrix_mul
	sub	r1, fp, #572
	sub	r3, fp, #252
	ldr	r2, [fp, #-584]
	mov	r0, r3
	bl	SVD_matrix_mul
	sub	r2, fp, #124
	sub	r3, fp, #316
	mov	r1, r2
	mov	r0, r3
	bl	SVD_matrix_copy
	sub	r3, fp, #124
	ldr	r1, [fp, #-588]
	mov	r0, r3
	bl	SVD_matrix_trans
	sub	r3, fp, #188
	ldr	r1, [fp, #-580]
	mov	r0, r3
	bl	SVD_matrix_copy
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L78:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	ble	.L79
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L77:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L80
.L76:
	ldr	r0, [fp, #-584]
	bl	SVD_matrix_isDiagonal
	mov	r3, r0
	cmp	r3, #0
	beq	.L81
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L82
.L87:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L83
.L86:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
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
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vldr.32	s14, .L89
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L84
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-584]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]	@ float
.L84:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L83:
	ldr	r3, [fp, #-28]
	cmp	r3, #3
	ble	.L86
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L82:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	ble	.L87
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L90:
	.align	2
.L89:
	.word	953267991
	.size	SVD_decompose, .-SVD_decompose
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
