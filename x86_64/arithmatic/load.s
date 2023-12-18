    .globl main

main:
    mov $99, %rax
    mov %rax, 0             # address0で識別される領域に、raxの値(99)を保存
    mov 0, %r8              # address0で識別される領域から、値を取り出し、その値をr8に格納する
    ret
