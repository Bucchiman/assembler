	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_sample1b                       ; -- Begin function sample1b
	.p2align	2
_sample1b:                              ; @sample1b
	.cfi_startproc
; %bb.0:
	fmov	d0, #5.00000000             ; doubleの場合は、d0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
