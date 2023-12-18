#
# FileName:     Makefile
# Author: 		8ucchiman
# CreatedDate:  2023-09-11 14:05:44
# LastModified: 2023-02-03 21:27:40 +0900
# Reference: 	https://qiita.com/chibi929/items/b8c5f36434d5d3fbfa4a
# 				https://asmtutor.com/#lesson2
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

.PHONY: all clean debug
all: $(TARGET)

$(TARGET): $(OBJS)
	ld -m elf_i386 $^ -o $@

$(OUTDIR)/%.o:%.asm
	$(CC) $(CFLAGS) $<

debug:
	# https://www.reddit.com/r/asm/comments/swglu9/how_to_debug_nasm_with_gdb_some_debug_info/
	nasm -f elf64 -g -F dwarf -o $(PROGNAME).o $(PROGNAME).asm
	ld -o $(PROGNAME) $(PROGNAME).o
	gdb $(PROGNAME)


clean:
	echo $(OBJS)
	rm -rf $(OBJS) $(TARGET)

