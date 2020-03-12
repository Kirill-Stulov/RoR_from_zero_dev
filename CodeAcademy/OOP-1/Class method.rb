# Class method
# See it here => https://www.codecademy.com/courses/learn-ruby/lessons/virtual-computer/exercises/who-are-the-users
# Because @@users is a class variable, we’ll use a class method to grab it. 
# Most of the methods you’ve seen so far are instance methods—they work on a particular instance/object, such as “matz” or “blixy”. A class method belongs to the class itself, and for that reason, it’s prefixed with the class name.

class Machine
  def Machine.hello
    puts "Hello from the machine!"
  end
end

# There’s a shortcut for this, which we’ll learn in a later lesson.