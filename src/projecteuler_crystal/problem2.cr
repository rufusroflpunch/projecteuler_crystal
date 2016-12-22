class Problem2 < Problem
  def solve
    count = 0
    fib = Fibonacci.new(4_000_000)
    fib.select(&.even?).sum
  end
end
