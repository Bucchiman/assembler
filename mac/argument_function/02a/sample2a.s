	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_sum                            ; -- Begin function sum
	.p2align	2
_sum:                                   ; @sum
	.cfi_startproc
; %bb.0:
	ldr	w8, [sp]
	add	w9, w1, w0
	add	w9, w9, w2
	add	w9, w9, w3
	add	w9, w9, w4
	add	w9, w9, w5
	add	w9, w9, w6
	add	w9, w9, w7
	add	w0, w9, w8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
