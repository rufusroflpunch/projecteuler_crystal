class Problem17 < Problem
  NUMBERS = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
  }

  def solve
    (1..1000).map { |i| integer_words(i) }.join.gsub(/-|\s/, "").size
  end

  def integer_words(number : Int)
    return NUMBERS[number] if NUMBERS.has_key?(number)
    return "one thousand" if number == 1000
    hundreds = number > 99 ? number / 100 : 0
    number -= (hundreds * 100)
    tens = (number > 9 ? number / 10 : 0) * 10
    number -= tens
    ones = number

    String.build do |s|
      s << "#{NUMBERS[hundreds]} hundred" if hundreds > 0
      s << " and " if hundreds > 0 && tens > 0
      if tens == 10
        s << NUMBERS[tens + ones]
      else
        s << NUMBERS[tens] if tens > 0
        s << "-" if tens > 0 && ones > 0
        s << " and " if tens == 0 && ones > 0
        s << NUMBERS[ones] if ones > 0
      end
    end
  end
end
