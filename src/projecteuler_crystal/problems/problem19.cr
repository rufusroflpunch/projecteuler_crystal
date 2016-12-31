class Problem19 < Problem
  def solve
    century_begin = Time.new(1901, 1, 1)
    century_end = Time.new(2000, 12, 31)
    one_day = Time::Span.new(1, 0, 0, 0)
    sunday_count = 0

    until century_begin > century_end
      sunday_count += 1 if century_begin.day == 1 && century_begin.sunday?
      century_begin += one_day
    end

    sunday_count
  end
end
