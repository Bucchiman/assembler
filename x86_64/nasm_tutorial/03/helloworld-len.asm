; FileName:     helloworld-len
; Author:       8ucchiman
; CreatedDate:  2023-02-25 18:25:13 +0900
; LastModified: 2023-02-25 18:37:47 +0900
; Reference:    8ucchiman.jp

; Hello World Program (Calculating string length)
; Compile with: nasm -f elf helloworld-len.asm
; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 helloworld-len.o -o helloworld-len
; Run with: ./helloworld-len


SECTION .data
msg db 'Hello, brave new world!', 0Ah     ; we can modify this now without having to update anywhere else in the program

SECTION .text
global _start


_start:
    mov ebx, msg                ; move the address of our message string in ebx
    mov eax, ebx                ; move the address in ebx into eax as well (Both now point to the same segment in memory)

nextchar:
    cmp byte [eax], 0           ; compare the byte pointed to by eax at this address against zero (Zero is an end of string delimiter)
    jz finished                 ; jump (if the zero flagged has been set) to the point in the code labeled 'finished'
    inc eax                     ; increment the address in eax by one byte (if the zero flagged has NOT been set)
    jmp nextchar                ; jump to the point in the code labeled 'nextchar'

finished:
    sub eax, ebx                ; subtract the address in EBX from the address in EAX
                                ; remember both registers started pointing to the same address (see line 22)
                                ; but EAX has been incremented one byte for each character in the message string
                                ; when you subtract one memory address from another of the same type
                                ; the result is number of segments between them - in this case the number of bytes

    mov edx, eax                ; eax now equals the number of bytes in our string
    mov ecx, msg                ; the reset of the code should be familiar now
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0
    mov eax, 1
    int 80h
