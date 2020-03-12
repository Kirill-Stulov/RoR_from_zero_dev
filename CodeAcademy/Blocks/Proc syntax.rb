# Proc syntax

# Procs are easy to define! You just call Proc.new and pass in the block you want to save. 
# Here’s how we’d create a proc called cube that cubes a number (raises it to the third power):

cube = Proc.new { |x| x ** 3 }

# We can then pass the proc to a method that would otherwise take a block, and we don’t have to rewrite the block over and over!

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]

[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]

# (The .collect! and .map! methods do the exact same thing.)

# The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). 
# We’ll do this any time we pass a proc to a method that expects a block.


# Another example
# The .floor method rounds a float (a number with a decimal) down to the nearest integer. 
# Write a proc called round_down that will do this rounding (we’ve added the code to pass it to floats.collect).

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new { |x| x.floor }

ints = floats.collect(&round_down)
print ints
# ==> [1, 3, 0, 7, 11, 482]

#### Another example ####
# https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas/exercises/passing-your-proc-to-a-method
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new{ |num| num < 100 }
youngsters = ages.select(&under_100)
puts youngsters

=begin
Created a proc called under_100 that checks if a number it’s passed is less than 100.
Now we’ll be using the ages array.
Create a variable called youngsters and set it equal to calling .select on ages, 
and pass in your under_100 proc to filter for the ages that are less than one hundred. 
Remember to pass &under_100 to convert your proc to a block!

puts youngsters at the end of the file in order to see the final contents of the array.
=end