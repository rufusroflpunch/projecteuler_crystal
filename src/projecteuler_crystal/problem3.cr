class Problem3 < Problem
  def solve
    600851475143.factors.select(&.prime?).last
  end
end
