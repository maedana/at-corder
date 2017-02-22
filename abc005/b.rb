def f(n, times)
  times.min
end

if $PROGRAM_NAME == __FILE__
  n = STDIN.gets.to_i
  times = (0...n).map { |_i| STDIN.gets.to_i }
  puts f(n, times)
end
