require "./projecteuler_crystal/problem"
require "./projecteuler_crystal/common" # Make sure we load common first
require "./projecteuler_crystal/*"

module ProjecteulerCrystal
  begin
    problem = ARGV.shift? || Problem.last
    puts Problem.solve(problem)
  rescue e : KeyError
    abort "Problem not found."
  end
end
