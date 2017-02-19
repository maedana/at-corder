def count_r(r)
  rl = r / 2
  rr = r - rl - 1
  (0..rl).to_a.inject(:+) + (0..rr).to_a.inject(:+)
end

def count_g(g)
  gl = g / 2
  gr = g - gl - 1
  (0..gl).to_a.inject(:+) + (0..gr).to_a.inject(:+)
end

def count_b(b)
  bl = b / 2
  br = b - bl - 1
  (0..bl).to_a.inject(:+) + (0..br).to_a.inject(:+)
end

def f(r, g, b)
  count_r(r) + count_g(g) + count_b(b)
end

if $PROGRAM_NAME == __FILE__
  r, g, b = STDIN.gets.split.map(&:to_i)
  puts f(r, g, b)
end
