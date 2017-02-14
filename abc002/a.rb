def f(x, y)
  [x, y].max
end

x, y = STDIN.gets.chomp.split(' ').map(&:to_i)
puts f(x, y)
