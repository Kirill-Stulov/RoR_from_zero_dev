# Lambda Syntax
# https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas/exercises/lambda-syntax
# Lambdas are defined using the following syntax:

lambda { |param| block }

# Lambdas are useful in the same situations in which you’d use a proc. 
# We’ll cover the differences between lambdas and procs in the next exercise; in the meantime, let’s get a little practice in with the lambda syntax.

#<=== Example ===========================>
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda { |string| string.to_sym  }
symbols = strings.collect(&symbolize)
print symbols

# We have an array of strings, but we want an array of symbols.
# On line 12, created a new variable called symbolize. 
# In symbolize, store a lambda that takes one parameter and calls .to_sym on that parameter.
# We then use symbolize with the .collect method to convert the items in strings to symbols!


#<=== Another example ===================>
# https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas/exercises/now-you-try-1
# Lambda checks to see if each element in an array is a symbol. 
# We can do this checking with the .is_a? method, which returns true if an object is the type of object named and false otherwise:

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
symbol_filter = lambda {|word| word.is_a? Symbol}
symbols = my_array.select(&symbol_filter)
puts symbols

# Created a lambda, symbol_filter, that takes one parameter and checks to see if that parameter .is_a? Symbol.
# Created a new variable called symbols, and store the result of calling my_array.select and passing it your lambda.
# puts symbols at the end of the file in order to see the final contents of the array.

# The word Symbol has to be capitalized when you’re doing an .is_a? check!
# Meanwhile you may see difference in .collect and .select methods


#<=== Another example ===================>
# Creating Lambda
# https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas/exercises/creating-a-lambda
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda{ |key, value| value < "M" }
a_to_m = crew.select(&first_half)
puts a_to_m
# ==> {:lt_cdr=>"Data", :chief_engineer=>"LaForge", :doctor=>"Crusher"}

=begin
 Create a lambda called first_half that checks if a hash value is less than (that is, earlier in the alphabet than) “M”.
 Make sure to use a capital “M,” since we’ll be checking capitalized names! 
 Because it will be checking a hash, your lambda should include |key, value| instead of just |value|.
 Created a variable called a_to_m and set it equal to calling .select on crew, and pass in your first_half lambda 
 to filter for the names that are before “M” in the alphabet. 
 Remember to pass &first_half to convert your lambda to a block!
 puts a_to_m at the end of the file in order to see the final contents of the array.
=end