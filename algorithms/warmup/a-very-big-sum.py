#!/bin/python3

import sys

def aVeryBigSum(n, ar):
    # Complete this function
    s = 0
    for i in ar:
        s += i
    return s
n = int(input().strip())
ar = list(map(int, input().strip().split(' ')))
result = aVeryBigSum(n, ar)
print(result)
