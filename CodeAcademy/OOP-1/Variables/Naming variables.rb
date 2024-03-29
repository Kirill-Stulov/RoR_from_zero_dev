# Naming variables
# https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-i/exercises/naming-your-variables?action=resume_content_item
=begin
  Recall that instance variables begin with an @. This isn’t just a Ruby convention—it’s part of the syntax! 
  Always start your instance variables with @.
  Class variables are like instance variables, but instead of belonging to an instance of a class, 
  they belong to the class itself. Class variables always start with two @s, like so: @@files.
  Global variables can be declared in two ways. The first is one that’s already familiar to you: you just define the variable 
  outside of any method or class, and voilà! It’s global. If you want to make a variable global from inside a method or class, just start it with a $, like so: $matz.
  
  We’ll go through instance and class variables in more detail in a moment. First, let’s do a quick review of local and global scope.

=end

class MyClass
  $my_variable = "Hello!"
end

puts $my_variable.self
# ==> Hello!