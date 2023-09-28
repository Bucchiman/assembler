;
;
; https://tanakamura.github.io/pllp/docs/asm_language.html
;
;

        .global main
main:                   ; label(C言語の関数にかなり近い)
        add $1, %rax
        ret
