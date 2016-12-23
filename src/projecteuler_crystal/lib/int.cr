# Monkey patching int
abstract struct Int
  # Is the number prime?
  def prime?
    return false if self == 1
    return true if self == 2
    return false if even?
    half = self / 2
    (3..half).select(&.odd?).each { |i| return false if self.divisible_by?(i) }
    true
  end

  # Return an array of factors for the number.
  def factors
    half = self / 2
    (2..half).select { |f| divisible_by?(f) }
  end

  # Reverse an integer (does not use String).
  def reverse
    num = self
    rev = 0
    while num > 0
      factor = num % 10
      num = (num - factor) / 10
      rev = rev * 10 + factor
    end
    rev
  end

  def collatz
    num = self
    nums = [num]
    until num == 1
      num = num.even? ? num/2 : num*3+1
      nums << num
    end
    nums
  end
end
