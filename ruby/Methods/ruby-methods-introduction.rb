# Your code here
def prime? (x)
    return x > 1 && (x == 2 || ! (2..(x**0.5).to_i+1).to_a.any? {|val| x % val == 0})
end
