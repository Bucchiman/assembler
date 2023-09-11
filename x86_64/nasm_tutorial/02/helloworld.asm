; FileName:     helloworld
; Author:       8ucchiman
; CreatedDate:  2023-02-25 18:25:13 +0900
; LastModified: 2023-02-25 18:37:47 +0900
; Reference:    8ucchiman.jp



; Hello World Program - asmtutor.com
; Compile with: nasm -f elf helloworld.asm
; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 helloworld.o -o helloworld
; Run with: ./helloworld
 
SECTION .data
; msg     db      'Hello World!', 0Ah
msg     db      'Hello, brave new world!', 0Ah
 
SECTION .text
global  _start
 
_start:
 
    mov     edx, 13     ; 'Hello World!\0'の文字数(13 bytes)をedxに代入
    mov     ecx, msg    ; ecxにmsgを代入
    mov     ebx, 1
    mov     eax, 4
    int     80h
 
    mov     ebx, 0      ; return 0 status on exit - 'No Errors'
    mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
    int     80h
