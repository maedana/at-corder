class Takoyaki
  attr_reader :start_sec, :expired_sec

  def initialize(created_sec, remain_time)
    @created_sec = created_sec
    @expired_sec = @created_sec + remain_time
  end

  def can_buy?(visited_sec)
    @created_sec <= visited_sec && visited_sec <= @expired_sec
  end
end

def f(t, n, a, m, b)
  created_secs = a.split(' ').map(&:to_i)
  takoyakis = created_secs.map do |created_sec|
    Takoyaki.new(created_sec, t)
  end

  visited_secs = b.split(' ').map(&:to_i)
  valid = visited_secs.all? do |visited_sec|
    ret = false
    while takoyakis.size.positive?
      takoyaki = takoyakis.shift
      if takoyaki.can_buy?(visited_sec)
        ret = true
        break
      end
    end
    ret
  end

  valid ? 'yes' : 'no'
end

if $PROGRAM_NAME == __FILE__
  t = STDIN.gets.to_i
  n = STDIN.gets.to_i
  a = STDIN.gets
  m = STDIN.gets.to_i
  b = STDIN.gets
  puts f(t, n, a, m, b)
end
