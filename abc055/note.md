### D問題
かしこいなと思った回答例
http://abc055.contest.atcoder.jp/submissions/1118903

```
def solve()
    n = gets.to_i
    answers = gets.chomp.chars.map{|token| token == "o"}
    animals = Array.new(n)
 
    [true, false].repeated_permutation(2) do |head, tail|
        animals[0] = head
        animals[-1] = tail
 
        (0...n).each{|i| animals[i + 1] = (animals[i] == answers[i]) ? animals[i - 1] : !animals[i - 1]}
        return animals[0...-1].map{|animal| animal ? "S" : "W"}.join if animals[0] == animals[-1] && animals[-2] == tail
    end
 
    "-1"
end
 
puts solve()
```

- repeated_permutationは重複を許した順列を作るメソッド
- array[-1]のようにマイナスを渡すと最後からの添字に出来るこの場合は最後の要素
- (0...n) は (0..(n -1)) と ほぼ同じ。つまり配列を最後まで回す書き方
- つまり、`(0...n).each{|i| animals[i + 1] = (animals[i] == answers[i]) ? animals[i - 1] : !animals[i - 1]}`だけで回答候補を作っている。なるほど...
- (0...-1) は (0..(n -2)) と ほぼ同じ。つまり一個前まで回してる
