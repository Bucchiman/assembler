#
# FileName:     Makefile
# Author: 		8ucchiman
# CreatedDate:  2023-09-11 16:29:25
# LastModified: 2023-02-03 21:27:40 +0900
# Reference: 	https://qiita.com/chibi929/items/b8c5f36434d5d3fbfa4a
# Description:	---
#



# https://nao-bamboo.hatenablog.com/entry/2015/09/11/175832
PROGNAME := helloworld-len
INDIR := include
SRCDIR := .
LIBDIR := lib
OUTDIR := .
TARGET := $(OUTDIR)/$(PROGNAME)
SRCS := $(wildcard $(SRCDIR)/*.asm) $(wildcard $(SRCDIR)/$(LIBDIR)/*.asm)
OBJS := $(addprefix $(OUTDIR)/,$(patsubst %.asm,%.o,$(SRCS)))

CC = nasm
CFLAGS = -f elf

.PHONY: all clean
all: $(TARGET)

$(TARGET): $(OBJS)
	ld -m elf_i386 $^ -o $@

$(OUTDIR)/%.o:%.asm
	$(CC) $(CFLAGS) $^

clean:
	rm -rf $(OBJS) $(TARGET)

