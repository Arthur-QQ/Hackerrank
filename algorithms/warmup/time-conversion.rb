#!/bin/ruby

def timeConversion(s)
    s << s[2][2..3]
    s[2] = s[2][0..1]
    h, m, sec, opt = s
    h = h.to_i % 12
    if opt == 'PM'
        h += 12
    end
    h = h.to_s
    return "#{'0' * (2 - h.length)}#{h}:#{m}:#{sec}"
end

s = gets.strip.split(':')
result = timeConversion(s)
puts result
