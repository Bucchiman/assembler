/*
 * FileName:     file
 * Author:       8ucchiman
 * CreatedDate:  2023-09-09 16:51:57
 * LastModified: 2023-02-25 18:37:47 +0900
 * Reference:    8ucchiman.jp
 */


#include <stdio.h>
extern int sum (int, int, int, int, int, int, int, int, int);

void foo () {
    int ret = 0;
    ret = sum(10, 20, 30, 40, 50, 60, 70, 80, 90);
    printf("%d\n", ret);
}
