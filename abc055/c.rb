def f(n, m)
  if 2 * n >= m
    m / 2
  else
    n + (m - n * 2) / 4
  end
end

n, m = STDIN.gets.split(' ').map(&:to_i)
puts f(n, m)
