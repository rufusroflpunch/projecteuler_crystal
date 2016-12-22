class Problem7 < Problem
  def solve
    prime_count = 0
    (UInt64::MIN..UInt64::MAX).each do |i|
      if i.prime?
        prime_count += 1
        return i if prime_count == 10001
      end
    end
  end
end
