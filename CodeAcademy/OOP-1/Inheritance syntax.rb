# Inheritance syntax
# https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-i/exercises/inheritance-syntax
# In Ruby, inheritance works like this:

class DerivedClass < BaseClass
  # Some stuff!
end

# The derived class is the new class you’re making and the base class is the class from which that new class inherits. 
# You can read “<“ as “inherits from.”

# <=== Example =======================================>
# We’ve created an Application class below. Create your own class, MyApp, that inherits from Application. 
# No need to put anything inside your class definition just yet!

class Application
  def initialize(name)
    @name = name
  end
end

# Add your code below!
class MyApp < Application
end
