def f(n, k, rn)
  rn.sort.slice((n - k)..n).inject(0) { |sum, r| (sum + r) / 2.0 }
end

n, k = STDIN.gets.split(' ').map(&:to_i)
rn = STDIN.gets.split(' ').map(&:to_i)
puts f(n, k, rn)
