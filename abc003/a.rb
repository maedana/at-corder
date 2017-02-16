def f(n)
  (1..n).to_a.inject(0) { |sum, i| sum + (10000 * i) } / n
end

n = STDIN.gets.to_i
puts f(n)
