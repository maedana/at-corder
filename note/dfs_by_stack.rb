#
# 深さ優先探索(depth-first search, DFS, バックトラック法ともいう)
# stack実装版
#
$tree = {
  1 => [2, 5, 7],
  2 => [3, 4],
  5 => [4, 6],
  6 => [4]
}

def dfs(v, goal)
  stack = []
  visited = []
  # スタックに最初の要素を入れる
  stack.push(v)
  until stack.empty?
    # スタックから要素を取り出す
    value = stack.pop
    # 要素に対して処理をする
    ## 既に訪問済みなので次へ
    next if visited.include?(value)
    puts "processed: #{value}..."
    ## 見つかった!!!
    return true if value == goal
    ## 訪問済にする
    visited.push(value)
    ## 要素の子どもをスタックに入れる
    ($tree[value] || []).each do |child|
      stack.push(child)
    end
  end
  false
end

puts "1から2を探せる: #{dfs(1, 2)}"
puts "5から1を探せない: #{dfs(5, 1)}"
puts "6から4を探せる: #{dfs(6, 4)}"
