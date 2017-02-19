def f(n)
  cards = (1..6).to_a
  (n % 30).times do |i|
    cards[(i % 5)], cards[(i % 5) + 1] = cards[(i % 5) + 1], cards[(i % 5)]
    puts i if cards.join('') == '123456'
  end
  cards.join('')
end

if $PROGRAM_NAME == __FILE__
  n = STDIN.gets.to_i
  puts f(n)
end
