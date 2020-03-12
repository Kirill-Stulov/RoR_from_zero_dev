# .upto and .downto
=begin
If we know the range of numbers we’d like to include, we can use .upto and .downto. 
This is a much more Rubyist solution than trying to use a for loop that stops when a counter variable hits a certain value.
We might use .upto to print out a specific range of values:
=end

95.upto(100) { |num| print num, " " }
# Prints 95 96 97 98 99 100

# and we can use .downto to do the same thing with descending values.

# another example
"L".upto("P") {|letter| puts letter}