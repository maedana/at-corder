#$tree = {
#  1 => {
#    2 => {
#      5 => {
#        8 => 10,
#      },
#      9
#    },
#    3 => 6,
#    4 => {
#      7 => {
#        11 => {
#          12,
#          13,
#          14,
#          15
#        }
#      }
#    }
#  }
#}
$eh = {1=>[2, 5, 7], 2=>[3, 4], 5=>[4, 6], 6=>[4]}

def dfs(v, goal, visited)
  visited = [v]
  stack = [v]
  while stack.size > 0 do
    v = stack.pop
    return stack
    if children = $eh[v]
      children.each do |child|
        if visited.include?(child)
          raise 'visited'
        else
          visited << child
          stack << child
        end
      end
    else
      stack.pop
    end
  end
#  visited << v
#  if children = $eh[v]
#    children.each do |child|
#      return true if child == v
#      dfs(child, goal, visited)
#    end
#  else
#    'no'
#  end
end

require 'pp'
pp dfs(1, 2, [])
