if __name__ == '__main__':
    s = input()
    booleans = [False for _ in range(5)]
    for char in s:
        if char.isalnum():
            booleans[0] = True
        if char.isalpha():
            booleans[1] = True
        if char in [str(i) for i in range(10)]:
            booleans[2] = True
        if char.islower():
            booleans[3] = True
        if char.isupper():
            booleans[4] = True
    print('\n'.join([str(i) for i in booleans]))
