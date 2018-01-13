def factorial
    yield #hHhHAHHAHAHHA
end

n = gets.to_i
factorial do 
    puts (1..n).to_a.reduce :*
end
