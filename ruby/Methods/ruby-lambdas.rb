# Write a lambda which takes an integer and square it
square      = ->(integer) {integer**2}

# Write a lambda which takes an integer and increment it by 1
plus_one    = ->(integer) {integer+1} 

# Write a lambda which takes an integer and multiply it by 2
into_2      = ->(integer) {integer * 2}

# Write a lambda which takes two integers and adds them
adder       = ->(integer1, integer2) {integer1 + integer2}

# Write a lambda which takes a hash and returns an array of hash values
values_only = ->(da_hash) {da_hash.values}


input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e
