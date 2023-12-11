.intel_syntax noprefix  ; #1
.globl main             ; #2

main:                   ; #3
    ; #4: prologue
    push rbp
    mov rbp, rsp

    mov rax, 0

    ; #5: epilogue
    pop rbp
    ret
