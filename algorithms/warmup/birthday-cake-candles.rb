#!/bin/ruby

def birthdayCakeCandles(n, ar)
    high = ar[0]
    ar.each do |val|
        if high < val
            high = val
        end
    end
    count = 0
    ar.each do |val|
        if high == val
            count += 1
        end
    end
    return count
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = birthdayCakeCandles(n, ar)
puts result;
