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
	.file	"main.c"
	.text
	.global	Min
	.data
	.align	2
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
	.global	Uout
	.align	2
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
	.global	Vout
	.align	2
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
	.global	Sout
	.align	2
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
	.text
	.align	2
	.global	main
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	movw	r3, #:lower16:Vout
	movt	r3, #:upper16:Vout
	movw	r2, #:lower16:Sout
	movt	r2, #:upper16:Sout
	movw	r1, #:lower16:Uout
	movt	r1, #:upper16:Uout
	movw	r0, #:lower16:Min
	movt	r0, #:upper16:Min
	bl	SVD_decompose
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
