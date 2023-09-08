/*
 * FileName:     sample2a
 * Author:       8ucchiman
 * CreatedDate:  2023-09-07 12:27:07
 * LastModified: 2023-02-26 13:30:39 +0900
 * Reference:    http://nw.tsuda.ac.jp/lec/arm64/mac_m1/
 * Description:  ---
 */


#include <stdio.h>
#define MACRO


int sum(int x1, int x2, int x3, int x4, int x5, int x6, int x7, int x8, int x9) {
    int ret = 0;
    ret = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9;
    return ret;
}
