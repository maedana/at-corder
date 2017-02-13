#
# 幅優先探索(bredth-first search, BFS)
#
$tree = {
  1 => [2, 5, 7],
  2 => [3, 4],
  5 => [4, 6],
  6 => [4]
}

def bfs(v, goal)
  queue = []
  visited = []
  # キューに最初の要素を入れる
  queue.push(v)
  until queue.empty?
    # キューから要素を取り出す
    value = queue.shift
    # 要素に対して処理をする
    ## 既に訪問済みなので次へ
    next if visited.include?(value)
    puts "processed: #{value}..."
    ## 訪問済にする
    visited.push(value)
    # 見つかった!!!
    return true if value == goal
    # 要素の子どもをキューに入れる
    ($tree[value] || []).each do |child|
      queue.push(child)
    end
  end
  # 最後まで見つからないなら失敗を返す
  false
end

puts "1から2を探せる: #{bfs(1, 2)}"
puts "1から7を探せる: #{bfs(1, 7)}"
puts "5から1を探せない: #{bfs(5, 1)}"
puts "6から4を探せる: #{bfs(6, 4)}"
