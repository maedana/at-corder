# 解説を参照済
def candidates(n, answers)
  _candidates = [ %w(S S), %w(S W), %w(W W), %w(W S) ]
  _candidates.each do |animals|
    (1..(n - 2)).each do |i|
      if animals[i - 1] == 'S' && animals[i] == 'S'
        if answers[i] == 'o'
          animals.push 'S'
        else
          animals.push 'W'
        end
      end
      if animals[i - 1] == 'W' && animals[i] == 'S'
        if answers[i] == 'o'
          animals.push 'W'
        else
          animals.push 'S'
        end
      end
      if animals[i - 1] == 'S' && animals[i] == 'W'
        if answers[i] == 'o'
          animals.push 'W'
        else
          animals.push 'S'
        end
      end
      if animals[i - 1] == 'W' && animals[i] == 'W'
        if answers[i] == 'o'
          animals.push 'S'
        else
          animals.push 'W'
        end
      end
    end
  end
end

def f(n, s)
  answers = s.split('')
  _candidates = candidates(n, answers)

  _candidates.each do |candidate|
    if (candidate[0] == 'S' && answers[0] == 'o') ||
       (candidate[0] == 'W' && answers[0] == 'x')
      next unless (candidate[1] == candidate[n - 1])
    else
      next unless (candidate[1] != candidate[n - 1])
    end
    if (candidate[n - 1] == 'S' && answers[n - 1] == 'o') ||
       (candidate[n - 1] == 'W' && answers[n - 1] == 'x')
      next unless (candidate[0] == candidate[n - 2])
    else
      next unless (candidate[0] != candidate[n - 2])
    end
    # solve
    return candidate.join
  end
  -1
end

#n = STDIN.gets.to_i
#s = STDIN.gets
#puts f(n, s)
