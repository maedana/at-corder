def f(c)
  require 'pp'
  c.split.each_slice(4).to_a.reverse.map do |line|
    line.reverse.join(' ')
  end.join("\n") << "\n"
end

if $PROGRAM_NAME == __FILE__
  line1 = STDIN.gets
  line2 = STDIN.gets
  line3 = STDIN.gets
  line4 = STDIN.gets
  puts f("#{line1}\n#{line2}\n#{line3}\n#{line4}")
end
