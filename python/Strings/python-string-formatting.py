def print_formatted(number):
    l = len(bin(number)) - 2
    for i in range(1, number+1):
        n = str(i)
        _bin = bin(i)[2:]
        _oct = oct(i)[2:]
        _hex = hex(i)[2:]
        print(n.rjust(l, ' ') , _oct.rjust(l, ' ') , _hex.rjust(l, ' ').upper() , _bin.rjust(l, ' '))
