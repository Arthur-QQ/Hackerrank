#!/bin/ruby

def kangaroo(x1, v1, x2, v2)
    pulo = 0
    if v2 >= v1
        return 'NO'
    end
    while x1 < x2
        x1 += v1
        x2 += v2
        pulo += 1
    end
    if x1 == x2
        return 'YES'
    else
        return 'NO'
    end
end

x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i
result = kangaroo(x1, v1, x2, v2)
puts result;
