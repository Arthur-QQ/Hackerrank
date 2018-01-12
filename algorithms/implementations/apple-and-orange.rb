#!/bin/ruby

def appleAndOrange(s, t, a, b, apples, oranges)
    oc = 0
    ac = 0
    apples.each do |apple|
        x = apple + a
        if x <= t and x >= s
            ac += 1
        end
    end
    oranges.each do |orange|
        x = orange + b
        if x <= t and x >= s
            oc += 1
        end
    end
    return [ac, oc]
end

s, t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a, b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m, n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apples = gets.strip
apples = apples.split(' ').map(&:to_i)
oranges = gets.strip
oranges = oranges.split(' ').map(&:to_i)
result = appleAndOrange(s, t, a, b, apples, oranges)
print result.join("\n")
