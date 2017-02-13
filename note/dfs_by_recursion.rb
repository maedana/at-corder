#
# 深さ優先探索(depth-first search, DFS, バックトラック法ともいう)
# 再帰実装版
#
$tree = {
  1 => [2, 5, 7],
  2 => [3, 4],
  5 => [4, 6],
  6 => [4]
}

def dfs(v, goal, visited = [])
  # 要素に対して処理をする
  ## 既に訪問済みなので失敗を返す
  return false if visited.include?(v)
  puts "processed: #{v}..."
  ## 訪問済にする
  visited.push(v)
  ## 見つかった!!!
  return true if v == goal
  ## 要素の子どもについて再帰的に処理をする
  ($tree[v] || []).reverse.each do |child|
    # 見つかったならそこで成功を返す
    return true if dfs(child, goal, visited)
  end
  # 最後まで見つからないなら失敗を返す
  false
end

puts "1から2を探せる: #{dfs(1, 2)}"
puts "1から7を探せる: #{dfs(1, 7)}"
puts "5から1を探せない: #{dfs(5, 1)}"
puts "6から4を探せる: #{dfs(6, 4)}"
