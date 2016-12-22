class Problem5 < Problem
  def divisible?(num)
    (1_u64..20_u64).each do |i|
      return false unless num.divisible_by?(i)
    end
    true
  end

  def solve
    count = 21_u64
    loop do
      return count if divisible?(count)
      count += 1
    end
  end
end
