# Enter your code here. Read input from STDIN. Print output to STDOUT
is_palimdrome = ->(num) {num.to_s == num.to_s.reverse}

def is_prime(num)
    for i in (2..Math.sqrt(num).ceil)
        if i != num
            if num % i == 0
                return false
            end
        end
    end
    return true
end

n = gets.to_i
til_now = 0
current = 2
saida = Array.new
until til_now == n
    if  is_palimdrome.call(current) && is_prime(current)
        til_now += 1
        saida << current
    end
    current += 1
end
puts saida.to_s
