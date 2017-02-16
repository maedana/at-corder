def f(r, c, x, y, d, l)
  # 配置のパターン数
  pattern_count = (1..(x * y)).to_a.combination([d, l].max).size
  # 配置パターンをおける枠の数
  area_count = (r - x + 1) * (c - y + 1)
  (pattern_count * area_count) % 1000000007
end

r, c = STDIN.gets.split(' ').map(&:to_i)
x, y = STDIN.gets.split(' ').map(&:to_i)
d, l = STDIN.gets.split(' ').map(&:to_i)
puts f(r, c, x, y, d, l)
