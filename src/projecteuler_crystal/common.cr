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
