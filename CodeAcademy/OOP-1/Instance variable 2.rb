# Instance variable 2
=begin
  Global variables can be changed from anywhere in your program, and they are generally not a very good idea. 
  It’s much better to create variables with limited scope that can only be changed from a few places!

  For example, instance variables belong to a particular object (or “instance”). 
  Let’s get in some practice with instance variables! We’ve added our Person class from before (Instance variable file)
=end

# Example
# name, age and profession parameters set up in the initialize method, set these equal to instance variables in the body of the method. 

class Person
	def initialize(name, age, profession)
		@name = name
		@age = age
		@profession profession
	end
end 