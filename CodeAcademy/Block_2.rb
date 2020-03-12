# Block

# A Ruby block is just a bit of code that can be executed. Block syntax uses either do..end or curly braces ({}), like so:

[1, 2, 3].each do |num|
  puts num
end
# ==> Prints 1, 2, 3 on separate lines

[1, 2, 3].each { |num| puts num }
# ==> Prints 1, 2, 3 on separate lines

# Blocks can be combined with methods like .each and .times to execute an instruction for each element in a collection (like a hash or array).

# Another example
5.times {puts "I'm a block!" }