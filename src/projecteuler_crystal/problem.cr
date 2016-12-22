class Problem
  @@problems = {} of String => Problem.class
  macro inherited
    number = "{{@type.name.id}}".gsub(/Problem/, "")
    Problem.register(number, {{@type.name.id}})
  end

  def self.register(number, klass)
    @@problems[number] = klass
  end

  def self.solve(number)
    @@problems[number].new.solve
  end

  def self.last
    @@problems.keys.last
  end

  def solve
  end
end
