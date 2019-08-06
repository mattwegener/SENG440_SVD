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
	.file	"SVD_matrix.c"
	.text
	.align	2
	.global	SVD_matrix_int_to_fix
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_int_to_fix, %function
SVD_matrix_int_to_fix:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L5:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L3
.L4:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	lsl	r1, r2, #8
	ldr	r2, [fp, #-12]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L4
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L5
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_int_to_fix, .-SVD_matrix_int_to_fix
	.align	2
	.global	SVD_matrix_fix_to_int
	.syntax unified
	.arm
	.fpu neon
	.type	SVD_matrix_fix_to_int, %function
SVD_matrix_fix_to_int:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L7
.L10:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L8
.L9:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, lsl #2]
	add	r2, r3, #128
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	asr	r1, r2, #8
	ldr	r2, [fp, #-12]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L8:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L9
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L7:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L10
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SVD_matrix_fix_to_int, .-SVD_matrix_fix_to_int
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
