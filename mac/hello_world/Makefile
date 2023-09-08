#
# FileName:     Makefile
# Author: 		8ucchiman
# CreatedDate:  2023-09-07 22:13:19
# LastModified: 2023-02-03 21:27:40 +0900
# Reference: 	https://qiita.com/chibi929/items/b8c5f36434d5d3fbfa4a
#               https://smist08.wordpress.com/2021/01/08/apple-m1-assembly-language-hello-world/
# Description:	---
#


HelloWorld: HelloWorld.o
	ld -macosx_version_min 11.0.0 -o HelloWorld HelloWorld.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 

HelloWorld.o: HelloWorld.s
	as -o HelloWorld.o HelloWorld.s
