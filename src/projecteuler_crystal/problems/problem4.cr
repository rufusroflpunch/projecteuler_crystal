class Problem4 < Problem
  def solve
    palindrome = 0
    (100..999).each do |x|
      (100..999).each do |y|
        z = x * y
        palindrome = z if z > palindrome && z == z.reverse
      end
    end
    palindrome
  end
end
