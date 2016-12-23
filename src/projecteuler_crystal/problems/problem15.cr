class Problem15 < Problem
  def solve
    descend(0, 0, 20, 20)
  end

  # Recursively descend a grid. Start at x and y, end at max_x and max_y.
  def descend(x, y, max_x, max_y) : UInt64
    return 1_u64 if x == max_x && y == max_y
    right = x < max_x ? descend(x + 1, y, max_x, max_y) : 0_u64
    down = y < max_y ? descend(x, y + 1, max_x, max_y) : 0_u64
    right + down
  end
end
