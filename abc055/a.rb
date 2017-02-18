def f(n)
  x = n * 800
  y = (n / 15) * 200
  x - y
end

n = STDIN.gets.to_i
puts f(n)
