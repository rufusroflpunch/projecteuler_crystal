class Problem9 < Problem
  def solve
    (1..1000).each do |a|
      (1..1000).each do |b|
        next if b < a
        (1..1000).each do |c|
          next if c < b || c < a
          if (a**2 + b**2 == c**2) && (a + b + c == 1000)
            return a * b * c
          end
        end
      end
    end
  end
end
