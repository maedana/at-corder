def f(c)
  init_points = [[2, 7], [4, 2], [6, 1]]
  remain_points = 8.times.flat_map { |i| 8.times.map { |j| [i, j]} }
  board = Array.new(8).map { Array.new(8, '.') }
  8.times.each do
    x, y = (init_points.shift || remain_points.first)
    if x && y
      board[x][y] = 'Q'
      remain_points.delete_if { |p| p.first == x }
      remain_points.delete_if { |p| p.last == y }
      remain_points.delete_if do |p|
        (x - p.first).abs == (y - p.last).abs
      end
    else
      raise 'No Answer'
    end
  end
  board.map do |points|
    points.join('')
  end.join("\n")
end
