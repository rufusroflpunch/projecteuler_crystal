class PyramidPath
  @pyramid : Array(Array(UInt64))
  def initialize(pyramid)
    @pyramid = pyramid.clone
  end

  # Trace backward starting from the second to last row, adding the maximum of the next row.
  # At the end, the top number in the pyramid should be the maximum sum.
  def best_path_sum
    current_row = @pyramid.size - 2
    while current_row >= 0
      @pyramid[current_row] = @pyramid[current_row].map_with_index do |n, i|
        next_row = current_row + 1
        n + max(@pyramid[next_row][i], @pyramid[next_row][i+1])
      end
      current_row -= 1
    end
    @pyramid[0][0]
  end

  private def max(a, b)
    a > b ? a : b
  end
end
