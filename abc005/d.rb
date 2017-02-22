def f(n, d, q, p)
  tako_powers = d.split("\n").map { |line| line.split(' ').map(&:to_i) }
  # やく数ごとの最大の美味しさの計算結果を格納しておく配列
  dp1 = Array.new(n * n + 1, 0)
  n.times do |i|
    n.times do |j|
      # 指定位置での合計の美味しさの計算結果を格納しておく配列
      dp2 = Array.new(n) { Array.new(n, 0) }
      (i...n).each do |k|
        (j...n).each do |l|
          total_power =
            if k == i
              if l == j
                tako_powers[k][l]
              else
                dp2[k][l - 1] + tako_powers[k][l]
              end
            else
              if l == j
                dp2[k - 1][l] + tako_powers[k][l]
              else
                dp2[k - 1][l] + dp2[k][l - 1] - dp2[k - 1][l - 1] + tako_powers[k][l]
              end
            end
          dp2[k][l] = total_power
          size = (i..k).size * (j..l).size
          dp1[size] = [dp1[size], total_power].max
        end
      end
    end
  end
  create_counts = p.split("\n").map(&:to_i)
  max_counts = create_counts.map do |create_count|
    dp1.slice(0..create_count).max
  end
  max_counts.join("\n")
end

if $PROGRAM_NAME == __FILE__
  n = STDIN.gets.to_i
  d = (1..n).map { STDIN.gets.chomp }.join("\n")
  q = STDIN.gets.to_i
  p = (1..q).map { STDIN.gets.chomp }.join("\n")
  puts f(n, d, q, p)
end
