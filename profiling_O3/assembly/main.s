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
	.file	"main.c"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
	add	r0, r3, #192
	push	{r4, lr}
	add	r2, r3, #64
	add	r1, r3, #128
	bl	SVD_decompose
	mov	r0, #0
	pop	{r4, pc}
	.size	main, .-main
	.global	Sout
	.global	Vout
	.global	Uout
	.global	Min
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	Vout, %object
	.size	Vout, 64
Vout:
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
	.type	Sout, %object
	.size	Sout, 64
Sout:
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
	.type	Uout, %object
	.size	Uout, 64
Uout:
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
	.type	Min, %object
	.size	Min, 64
Min:
	.word	1106771968
	.word	1117388800
	.word	-1053818880
	.word	1104150528
	.word	-1037565952
	.word	1096810496
	.word	1117650944
	.word	-1034682368
	.word	-1031274496
	.word	-1054867456
	.word	1110704128
	.word	1119092736
	.word	1107820544
	.word	1098907648
	.word	1108869120
	.word	-1047003136
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
