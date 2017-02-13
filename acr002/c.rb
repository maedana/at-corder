def f(xa, ya, xb, yb, xc, yc)
  xb2 = xb - xa # a
  yb2 = yb - ya # b
  xc2 = xc - xa # c
  yc2 = yc - ya # d
  (((xb2 * yc2) - (yb2 * xc2)) / 2.0).abs
end

xa, ya, xb, yb, xc, yc = STDIN.gets.chomp.split(' ').map(&:to_i)
puts f(xa, ya, xb, yb, xc, yc)
