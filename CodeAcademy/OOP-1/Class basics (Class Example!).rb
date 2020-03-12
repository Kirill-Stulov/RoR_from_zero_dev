# Class basics and more
# https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-i/exercises/class-basics?action=resume_content_item

# 1. Create a class called Message and give it an initialize method. The initialize method should take two parameters, 
#    from and to, and set them to the instance variables @from and @to (respectively). Don’t worry about creating an instance of your class just yet.

class Message
  def initialize(from, to)
    @from = from
    @to = to
  end
end

# 2. Perfect! Now let’s class things up a bit with a class variable.
#    Instructions
#    Give your Message class a @@messages_sent class variable and set it equal to 0. 
#    In the body of your initialize method, increment this value by 1 so that each time a new Message object is created, 
#    @@messages_sent will increase by 1. Don’t create any instances of your class just yet!

class Message
  @@messages_sent = 0
  
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

# 3. Perfect! Let’s go ahead and create an instance of our Message class.
#    Link: https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-i/exercises/forge-an-object-in-the-fires-of-mount-ruby?action=resume_content_item
#    Instructions
#    After your class, create a variable called my_message.
#    Create an instance of your Message class using Message.new with whatever from and to arguments you want! Store the result in my_message.

class Message
  @@messages_sent = 0
  
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

my_message = Message.new("Uzbekistan", "California")

# 4. Perfect! Now let’s get in a little practice with inheritance.
#    Instructions
#    Create a second class, Email, that inherits from Message. Give it its own initialize method that takes just one parameter, 
#    subject, and has one instance variable, @subject, set equal to subject.

class Message
  @@messages_sent = 0
  
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end
my_message = Message.new("Uzbekistan", "California")

class Email < Message
 def initialize(subject)
   @subject = subject
 end
end

# 5. You’re a champion! Our last topic: Ruby’s super keyword. (We’ve decided we liked Message‘s initialize method after all.)
#    Instructions
#    To finish this lesson, go ahead and remove the subject parameter and @subject instance variable from Email.
#    Pass Email‘s initialize method the same two parameters passed to Message‘s—from and to—and add the super keyword 
#    as the only line of code in the body of Email‘s initialize method.

class Message
  @@messages_sent = 0
  
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end
my_message = Message.new("Uzbekistan", "California")

class Email < Message
 def initialize(from, to)
   super
 end
end