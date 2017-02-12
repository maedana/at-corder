def f(a, b)
  current_diff = (b - a)
  is_up = current_diff > 0
  abs_current_diff = current_diff.abs
  count = 0
  while(abs_current_diff != 0) do
    temp =
      case abs_current_diff
      when 1..3 then 1
      when 4..7 then 5
      when 8..40 then 10
      end
    is_up ? b -= temp : b += temp
    current_diff = (b - a)
    is_up = current_diff > 0
    abs_current_diff = current_diff.abs
    count += 1
  end
  count
end

a, b = STDIN.gets.split(' ')
puts f(a.to_i, b.to_i)
