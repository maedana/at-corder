def f(s, t)
  valid_caracters = %w(a t c o d e r)
  valid = s.size.times.all? do |i|
    (s[i] == t[i]) ||
      s[i] == '@' && valid_caracters.include?(t[i]) ||
      valid_caracters.include?(s[i]) && t[i] == '@'
  end
  valid ? 'You can win' : 'You will lose'
end

s = STDIN.gets
t = STDIN.gets
puts f(s, t)
