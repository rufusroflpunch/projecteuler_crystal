class Problem10 < Problem
  def solve
    # (1..2_000_000).select(&.prime?).sum
    Eratosthenes.new(2_000_000_u64).calculate_primes.sum
  end
end
