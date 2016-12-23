class Problem10 < Problem
  def solve
    Eratosthenes.new(2_000_000_u64).calculate_primes.sum
  end
end
