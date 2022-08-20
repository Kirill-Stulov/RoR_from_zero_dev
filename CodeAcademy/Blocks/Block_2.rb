# Block

# A Ruby block is just a bit of code that can be executed. Block syntax uses either do..end or curly braces ({}), like so:

[1, 2, 3].each do |num|   # num - в вертикальных скобках это переменная блока
  puts num
end
# ==> Prints 1, 2, 3 on separate lines

[1, 2, 3].each { |num| puts num }
# ==> Prints 1, 2, 3 on separate lines

# Blocks can be combined with methods like .each and .times to execute an instruction for each element in a collection (like a hash or array).

#<=== Another example ========================================>
5.times {puts "I'm a block!" }

#<=== Another example =========================================>
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select{ |obj| obj.is_a? Integer }
puts ints
# ==> [42, 3, 19]

# The odds_n_ends array is full of all sorts of objects, but we only want the integers (numbers without decimal bits).
# Created a new variable, ints, and stored the result of calling odds_n_ends.select method with a block that checks if the element .is_a? Integer.
# puts ints at the end of the file in order to see the final contents of the array.
