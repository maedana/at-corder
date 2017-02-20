def move_count(pos, marble_count, r, g, b)
  if marble_count >= g + b
    (400 - pos).abs
  elsif marble_count >= b
    (500 - pos).abs
  else
    (600 - pos).abs
  end
end

def f(r, g, b)
  box_count = 1000
  marble_count = r + g + b

  # dp[現在の位置][残りマーブル数] = その状態にするのに必要なマーブルの最小移動数(*1)
  # *1は、1つ前の位置にマーブルを配置済みの時と、今回の位置に新たにマーブルを配置するときでより小さい方
  # 具体的にはdp[現在の位置][残りマーブル数] = min(dp[現在の一つ前の位置][残りマーブル数], dp[現在の一つ前の位置][残りマーブル数 + 1] + 今回配置するマーブルの移動距離)
  dp = Array.new(1000) { Array.new(1000, 10**9) } # 大きな数で初期化しておく
  # 一個もおいてないときの移動数はゼロ
  box_count.times { |i| dp[i][marble_count] = 0 }

  (1...box_count).to_a.each do |i|
    (0...marble_count).to_a.reverse.each do |j|
      dp[i][j] = [dp[i - 1][j], dp[i - 1][j + 1] + move_count(i, j, r, g, b)].min
    end
  end

  (1...box_count).to_a.map do |i|
    dp[i][0]
  end.min
end

if $PROGRAM_NAME == __FILE__
  r, g, b = STDIN.gets.split.map(&:to_i)
  puts f(r, g, b)
end
