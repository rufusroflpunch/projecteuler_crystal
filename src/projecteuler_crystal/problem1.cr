class Problem1 < Problem
  def solve
    (1..999).select { |i| i.divisible_by?(3) || i.divisible_by?(5) }.sum
  end
end
