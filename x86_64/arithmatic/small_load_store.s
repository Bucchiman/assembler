# FileName:      small_load_store
# Author:        8ucchiman
# CreatedDate:   2023-10-06 14:09:05
# LastModified:  2023-02-25 18:37:47 +0900
# Reference:     8ucchiman.jp
# Description:   gcc -static -no-pie -Tbss=0x800000 small-load-store.s


    .globl main

main:
    mov $0xff, %rax
    mov %al, 0x800000   # 0xff=0b11111111 8bit(=1byte)
    movsxb 0x800000, %r8

    ret
