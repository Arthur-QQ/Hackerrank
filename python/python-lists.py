N = int(input())
the_list = []
for i in range(N):
    c = input().split()
    if c[0] == 'insert':
        i = int(c[1])
        e = int(c[2])
        the_list.insert(i, e)
    elif c[0] == 'append':
        the_list.append(int(c[1]))
    elif c[0] == 'remove':
        the_list.remove(int(c[1]))
    elif c[0] == 'sort':
        the_list.sort()
    elif c[0] == 'pop':
        the_list.pop()
    elif c[0] == 'reverse':
        the_list.reverse()
    elif c[0] == 'print':
        print(the_list)
