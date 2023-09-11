#
# FileName:     Makefile
# Author: 		8ucchiman
# CreatedDate:  2023-09-11 14:05:44
# LastModified: 2023-02-03 21:27:40 +0900
# Reference: 	https://qiita.com/chibi929/items/b8c5f36434d5d3fbfa4a
# 				https://asmtutor.com/#lesson1
# Description:	---
#




# https://nao-bamboo.hatenablog.com/entry/2015/09/11/175832
PROGNAME := helloworld
INDIR := include
SRCDIR := .
LIBDIR := lib
OUTDIR := .
TARGET := $(OUTDIR)/$(PROGNAME)
SRCS := $(wildcard $(SRCDIR)/*.asm)
OBJS := $(addprefix $(OUTDIR)/,$(patsubst %.asm,%.o,$(SRCS)))

CC = nasm
CFLAGS = -f elf

.PHONY: all clean
all: $(TARGET)

$(TARGET): $(OBJS)
	ld -m elf_i386 $^ -o $@

$(OUTDIR)/%.o:%.asm
	$(CC) $(CFLAGS) $<

clean:
	echo $(OBJS)
	rm -rf $(OBJS) $(TARGET)

