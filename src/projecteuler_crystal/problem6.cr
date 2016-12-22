class Problem6 < Problem
  def solve
    ((1_u64..100_u64).sum ** 2) - (1_u64..100_u64).map(&.**(2)).sum
  end
end
