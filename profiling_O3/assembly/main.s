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
	.fpu neon
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:.LANCHOR0
	push	{r4, r5, lr}
	movt	ip, #:upper16:.LANCHOR0
	sub	sp, sp, #260
	mov	lr, ip
	mov	r4, sp
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	add	r5, sp, #64
	add	lr, ip, #64
	stm	r4, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	add	r4, sp, #128
	add	lr, ip, #64
	stm	r5, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	add	ip, ip, #64
	add	lr, sp, #192
	stm	r4, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	mov	r0, sp
	bl	SVD_matrix_int_to_fix
	mov	r0, sp
	add	r3, sp, #128
	add	r2, sp, #192
	add	r1, sp, #64
	bl	SVD_decompose
	mov	r0, #0
	add	sp, sp, #260
	@ sp needed
	pop	{r4, r5, pc}
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	31
	.word	77
	.word	-11
	.word	26
	.word	-42
	.word	14
	.word	79
	.word	-53
	.word	-68
	.word	-10
	.word	45
	.word	90
	.word	34
	.word	16
	.word	38
	.word	-19
.LC1:
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
