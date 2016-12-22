require "./projecteuler_crystal/lib/*" # Make sure we load common first
require "./projecteuler_crystal/problems/*"

module ProjecteulerCrystal
  begin
    problem = ARGV.shift? || Problem.last
    puts "Solving problem " + problem
    puts Problem.solve(problem)
  rescue e : KeyError
    abort "Problem not found."
  end
end
