def f(n)
  n * 2
end

if $PROGRAM_NAME == __FILE__
  n = STDIN.gets.to_i
  puts f(n)
end
