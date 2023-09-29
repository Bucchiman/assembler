<!--
 FileName:      readme
 Author:        8ucchiman
 CreatedDate:   2023-09-29 10:24:49
 LastModified:  2023-01-25 10:56:12 +0900
 Reference:     https://asmtutor.com/#lesson2
 Description:   ---
-->


# 01の改善
- Load EBX with 0 to pass zero to the function meaning 'zero errors'.
- Load EAX with 1 to call sys_exit.
- Then request an interrupt on libc using INT 80h.

# Reference
- [What is "int 80h" in Linux?](https://stackoverflow.com/questions/63404365/what-is-int-80h-in-linux)

