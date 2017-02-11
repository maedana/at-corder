def f(m)
  ret =
    case m
    when 0..99 then 0
    when 100..5000 then m * 10
    when 6000..30_000 then m + 50_000
    when 35_000..70_000 then (m - 30_000) / 5 + 80_000
    when 70_001..Float::INFINITY then 89_000
    else
      0
    end
  format('%02d', (ret / 1000))
end

m = gets
puts f(m.to_i)
