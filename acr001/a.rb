def f(n, c)
  answers = c.split('').map(&:to_i)
  a1 = a2 = a3 = a4 = 0
  answers.each do |a|
    case a
    when 1 then a1 += 1
    when 2 then a2 += 1
    when 3 then a3 += 1
    when 4 then a4 += 1
    end
  end
  max = [a1, a2, a3, a4].max
  min = [a1, a2, a3, a4].min
  [max, min]
end

n = STDIN.gets
c = STDIN.gets
max, min = f(n, c)
puts "#{max} #{min}"
