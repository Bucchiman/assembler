; FileName:     helloworld-len
; Author:       8ucchiman
; CreatedDate:  2023-09-11 16:32:06
; LastModified: 2023-02-25 18:37:47 +0900
; Reference:    https://asmtutor.com/#lesson4

; Hello World Program (Subroutines)
; Compile with: nasm -f elf helloworld-len.asm
; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 helloworld-len.o -o helloworld-len
; Run with: ./helloworld-len


SECTION .data
msg db 'Hello, brave new world!', 0Ah

SECTION .text
global _start

_start:
    mov eax, msg            ; move the address of our message string into eax
    call strlen             ; call our function to calculate the length of the string

    mov edx, eax            ; our function leaves the result in eax
    mov ecx, msg            ; this is all the same as before
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0
    mov eax, 1
    int 80h


strlen:                     ; this is our first function declaration
    push ebx                ; push the value in ebx onto the stack to preserve it while we use ebx in this function 
    mov ebx, eax            ; move the address in eax into ebx (Both point to the same segment in memory)


nextchar:                   ; this is the same as lesson03
    cmp byte [eax], 0
    jz finished
    inc eax
    jmp nextchar


finished:
    sub eax, ebx
    pop ebx                 ; pop the value on the stack back into ebx
    ret                     ; return to where the function was called
