	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_sample1                        ; -- Begin function sample1
	.p2align	2
_sample1:                               ; @sample1
	.cfi_startproc
; %bb.0:
	mov	w0, #5                          ; 整数の場合は、w0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
