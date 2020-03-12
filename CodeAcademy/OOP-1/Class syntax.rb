# Class syntax
# https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-i/exercises/class-syntax?action=resume_content_item
# A basic class consists only of the class keyword and the name of the class. Check it out:

    class NewClass
      # Class magic here
    end

# Our NewClass has the ability to create new Ruby objects of class NewClass (just like "Hello!" is a String and 4 is a Fixnum). 
# By convention, class names start with a capital letter and use CamelCase instead of relying_on_underscores.


# <=== Example ==========>
# Created a class called Person
# we started our class definition off with a method called initialize. 
# You can think of initialize as the function that “boots up” each object the class creates.

class Person
  def initialize(name)
    @name = name
  end
end

# Defined an initialize method for your Person class. 