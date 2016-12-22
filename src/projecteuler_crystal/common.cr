# A generator of Fibonacci numbers.
class Fibonacci
  include Enumerable(Int32)

  @last_num = 1
  @num = 1

  def initialize(@max : Int32)
  end

  def each
    while @num < @max
      yield @num
      temp_last = @last_num
      @last_num = @num
      @num = temp_last + @num
    end
  end
end

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
    half = self / 2_i64
    (2_i64..half).select { |f| self.divisible_by?(f) }
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
end
