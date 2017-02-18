def f(n)
  ret = 1
  n.times do |i|
    ret *= (i + 1)
    ret %= (10**9 + 7)
  end
  ret
end

n = STDIN.gets.to_i
puts f(n)
