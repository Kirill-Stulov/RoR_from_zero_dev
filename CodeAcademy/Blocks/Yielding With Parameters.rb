# Yielding With Parameters
# You can also pass parameters to yield!

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

#==> In the method! Let's yield.
#==> My name is Kim.
#==> In between the yields!
#==> My name is Eric.
#==> Block complete! Back in the method.

=begin

    1. The yield_name method is defined with one parameter, name.
    2. On line 12, we call the yield_name method and supply the argument "Eric" for the name parameter. Since yield_name has a yield statement, we will also need to supply a block.
    3. Inside the method, on line 5, we first puts an introductory statement.
    4. Then we yield to the block and pass in "Kim".
    5. In the block, n is now equal to "Kim" and we puts out “My name is Kim.”
    6. Back in the method, we puts out that we are in between the yields.
    7. Then we yield to the block again. This time, we pass in "Eric" which we stored in the name parameter.
    8. In the block, n is now equal to "Eric" and we puts out “My name is Eric.”
    9. Finally, we puts out a closing statement.

=end