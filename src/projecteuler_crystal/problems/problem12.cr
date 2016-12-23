class Problem12 < Problem
  def solve
    top_num = 1_64
    loop do
      sum = (0_u64..top_num).sum
      factor_size = sum.factors.size
      return sum if factor_size > 500
      puts "Triangle number: #{sum}. Factors: #{factor_size}"
      top_num += 1
    end
  end
end
