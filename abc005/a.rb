def f(x, y)
  y / x
end

if $PROGRAM_NAME == __FILE__
  x, y = STDIN.gets.split(' ').map(&:to_i)
  puts f(x, y)
end
