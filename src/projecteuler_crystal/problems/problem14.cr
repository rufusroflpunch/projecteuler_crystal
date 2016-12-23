class Problem14 < Problem
  def solve
    biggest = {1_64, 1_u64}
    (13_u64..999_999_u64).each do |i|
      collatz = i.collatz.size
      biggest = {i, collatz} if collatz > biggest[1]
    end
    biggest[0]
  end
end
