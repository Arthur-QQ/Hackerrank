def print_rangoli(size):
    # your code goes here
    cp = 96 + size
    lines = []
    for i in range(size - 1):
        cs = 96 + size - i
        l = [chr(j) for j in range(cs, cp+1)]
        l = l[::-1][:-1] + l
        lines.append('-'.join(l).center(4 * size - 3, '-'))
        print(lines[-1])
    cs = 97
    l = [chr(j) for j in range(cs, cp+1)]
    l = l[::-1][:-1] + l
    print('-'.join(l).center(4 * size - 3, '-'))
    print('\n'.join(lines[::-1]))
