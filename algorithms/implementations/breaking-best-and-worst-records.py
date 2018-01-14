#!/bin/python3

import sys

def breakingRecords(score):
    mec = 0
    mac = 0
    maior = score[0]
    menor = score[0]
    for el in score:
        if el < menor:
            mec += 1
            menor = el
        if el > maior:
            mac += 1
            maior = el
    return mac, mec

if __name__ == "__main__":
    n = int(input().strip())
    score = list(map(int, input().strip().split(' ')))
    result = breakingRecords(score)
    print (" ".join(map(str, result)))
