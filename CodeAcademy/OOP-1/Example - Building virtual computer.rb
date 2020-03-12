# Example - Building virtual computer
# complete prog is here https://www.codecademy.com/courses/learn-ruby/lessons/virtual-computer/exercises/what-youll-be-building-6

# 1. All right! Let’s go ahead and set up our class.
#    Instructions
#    Create a class called Computer and give it an initialize method that takes no parameters. The body of initialize should be empty.
class Computer
  def initialize
  end
end

# 2. Well done! Now let’s spice up our initialize method by passing it some parameters and setting some instance variables.
#    Instructions
#    Update initialize to take two parameters, username and password. In the body of initialize, 
#    set the instance variables @username and @password (respectively) to these parameters.

#    In your initialize method, you’ll also want to create a @files instance variable and set this to an empty hash. 
#    This is so we can keep track of our files later!
class Computer
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
  end
end

# 3. Let’s go ahead and toss in a class variable. We’ll use the variable @@users to keep track of all the users on our computer.
#    Instructions
#    Add a class variable called @@users to your Computer class. Set it equal to an empty hash.

#    In your initialize method, set @@users[username] = password so that your @@users hash keeps usernames 
#    as keys with each username’s password as the associated value.
class Computer
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
end

# 4. Excellent! Our class is coming together, but it’s a bit boring. Let’s add another method, create. We’ll want to do a few things in it:
#    Instructions
#    Inside your Computer class, define a method called create with a single parameter, filename.
#    Inside create, declare a variable called time and set it equal to the current time (using Time.now).

#    Next, inside create, add a new key/value pair to the @files hash. Use the filename key to store the value time.

#    For the final step in create, please puts a message telling the user that a new file was created. 
#    Feel free to put in any information you like; the one we used in exercise 1 printed the filename, the username, and the time.
class Computer
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file: #{filename}, created by user: #{@username} on #{time}"
  end
end




# 5. Perfect! Now that we think of it, though, we could have a whole bunch of users creating files every which where, 
#    and we don’t have a way of getting to our @@users class variable! We’ll need to create a method to reach it.

#    Because @@users is a class variable, we’ll use a class method to grab it. 
#    Most of the methods you’ve seen so far are instance methods—they work on a particular instance/object, 
#    such as “matz” or “blixy”. A class method belongs to the class itself, and for that reason, it’s prefixed with the class name.

class Machine
  def Machine.hello
    puts "Hello from the machine!"
  end
end

#   There’s a shortcut for this, which we’ll learn in a later lesson.
#   Instructions
#   Add a new class method to your Computer class called Computer.get_users. It should have no parameters.

#   Your new Computer.get_users method should return the @@users class variable.
class Computer
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file: #{filename}, created by user: #{@username} on #{time}"
  end
  
  def Computer.get_users
    return @@users
  end
end




# 6. Excellent! Last step: let’s create an instance of our Computer class.
#    You’ve done this before, but here’s a refresher.

class Person
  def initialize(name)
    @name = name
  end
end

emma = Person.new("emma")

#  In the example above, we first define a Person class with an initialize method.
#  Then, we create a new instance of Person and store it in a new variable called emma.

#  Instructions
#  After your class, create a new instance of Computer and store it in a new variable called my_computer. 
#  Feel free to use whatever username and password you like for your arguments!

class Computer
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file: #{filename}, created by user: #{@username} on #{time}"
  end
  
  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("roman", "stargaze")


#  7. Great work! You’ve got your very own Computer class that generates virtual computer instances.

#  Feel free to play around with your class. What if you add a method that updates files? Or deletes them? What if you want to add additional parameters to initialize or create?
#  Instructions

#  When you’ve got your Computer working just the way you want, click Run to finish this project!

# <=== EXAMPLE of RESULT =========================================================================================>
