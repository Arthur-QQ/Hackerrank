def sum_terms(n)
  return (1..n).to_a.reduce(0) {|sum, val| sum + val ** 2 + 1}
end
