# 解説を参照済
def candidates(n, answers)
  _candidates = []
  %w(S W).repeated_permutation(2) do |first, last|
    animals = Array.new(n)
    animals[0] = first
    animals[-1] = last
    (0...(n - 1)).each do |i|
      animals[i + 1] =
        if animals[i] == animals[i - 1]
          if answers[i] == 'o'
            'S'
          else
            'W'
          end
        else
          if answers[i] == 'o'
            'W'
          else
            'S'
          end
        end
    end
    _candidates.push(animals)
  end
  _candidates
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
    return candidate.join
  end
  -1
end

n = STDIN.gets.to_i
s = STDIN.gets
puts f(n, s)
