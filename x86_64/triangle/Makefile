#
# FileName:     Makefile
# Author: 		8ucchiman
# CreatedDate:  2023-09-06 12:48:15
# LastModified: 2023-02-03 21:27:40 +0900
# Reference: 	https://qiita.com/chibi929/items/b8c5f36434d5d3fbfa4a
# Description:	---
#


.PHONY: clean

a.out: triangle.o
	ld triangle.o

triangle.o: triangle.asm
	nasm -fmacho64 triangle.asm

clean:
	rm triangle.o a.out

