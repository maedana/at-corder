def f(w)
  w.gsub('a', '').gsub('i', '').gsub('u', '').gsub('e', '').gsub('o', '')
end

w = STDIN.gets.chomp
puts f(w)
