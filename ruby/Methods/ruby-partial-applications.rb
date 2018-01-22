combination = -> (ene) do
    -> (erre) do
        (ene - erre + 1..ene).reduce(:*) / (1..erre).reduce(:*)
    end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
