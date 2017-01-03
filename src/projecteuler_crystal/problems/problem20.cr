class Problem20 < Problem
  include Factorial

  def solve
    fac(BigInt.new(100u64)).to_s.split("").map(&.to_u64).sum
  end
end
