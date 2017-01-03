module Factorial
  def fac(num)
    num.downto(1).reduce { |x,y| x * y }
  end
end
