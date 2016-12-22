# Implements the Sieve of Eratothenes. Finds all sums under a given number.
#
# ```
# Eratosthenes.new(10).calculate_primes # => [2, 3, 5, 7]
# ```
class Eratosthenes
  def initialize(@max : UInt64)
    @possible_primes = {} of UInt64 => Bool
    (1_u64..@max).each { |i| @possible_primes[i] = true }
  end

  def mark_multiples(prime)
    multiplier = 2
    multiple = prime * multiplier
    while multiple <= @max
      @possible_primes[multiple] = false
      multiple = prime * (multiplier += 1)
    end
  end

  def calculate_primes
    (1_u64..(@max / 2)).each do |i|
      next unless @possible_primes[i] # Skip it if we already marked it
      if i.prime?
        mark_multiples(i)
      else
        @possible_primes[i] = false
      end
    end
    @possible_primes.keys.select { |p| @possible_primes[p] }
  end
end
