def cumulative_sum(n)
  (0..n).to_a.inject(:+)
end

def count_lr(n)
  nl = n / 2
  nr = n - nl - 1
  cumulative_sum(nl) + cumulative_sum(nr)
end

def f(r, g, b)
  if (over_count = g - 199) && over_count > 0
    count = count_lr(g)
    r_move = over_count / 2
    count += (r_move * r) + cumulative_sum(r - 1)
    b_move = over_count - r_move
    count += (b_move * b) + cumulative_sum(b - 1)
  else
    count_lr(r) + count_lr(g) + count_lr(b)
  end
end

if $PROGRAM_NAME == __FILE__
  r, g, b = STDIN.gets.split.map(&:to_i)
  puts f(r, g, b)
end
