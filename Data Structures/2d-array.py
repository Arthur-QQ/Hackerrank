#!/bin/python3

import sys


arr = []
for arr_i in range(6):
   arr_t = [int(arr_temp) for arr_temp in input().strip().split(' ')]
   arr.append(arr_t)

hgs = -9 * 8

for i in range(1, 5):
    for j in range(1, 5):
        chgs = arr[i][j] + arr[i-1][j-1] + arr[i-1][j] + arr[i-1][j+1]
        chgs += arr[i+1][j-1] + arr[i+1][j] + arr[i+1][j+1]
        if chgs > hgs:
            hgs = chgs
print(hgs)
