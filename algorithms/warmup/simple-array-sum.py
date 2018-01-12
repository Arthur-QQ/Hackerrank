#!/bin/python3

import sys

def simpleArraySum(n, ar):
    s = 0
    for i in ar:
        s += i
    return s

n = int(input().strip())
ar = list(map(int, input().strip().split(' ')))
result = simpleArraySum(n, ar)
print(result)
