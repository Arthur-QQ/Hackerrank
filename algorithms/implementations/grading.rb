#!/bin/ruby

def solve(grades)
    res = []
    grades.each do |grade|
        if grade < 38
            res.push(grade)
        else
            if grade % 5 >= 3
                res.push(5*(grade / 5 + 1))
            else
                res.push(grade)
            end
        end
    end
    return res
end

n = gets.strip.to_i
grades = Array.new(n)
for grades_i in (0..n-1)
    grades[grades_i] = gets.strip.to_i
end
result = solve(grades)
print result.join("\n")
