# How to understand what it's referencing. self can refer to different things depending on where it is used.

#1. We use self to allow Ruby to disambiguate between initializing a local variable and calling a setter method.
	# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1#accessormethods
 
	# class MyCar
	#   attr_accessor :color
	#   attr_reader :year

	#   # ... rest of class left out for brevity

	#   def spray_paint(color)
	#     self.color = color                                  #!!! self tells Ruby that we're calling a setter method (attr_accessor :color), not creating a local variable
	#     puts "Your new #{color} paint job looks great!"
	#   end
	# end

	# lumina = MyCar.new
	# lumina.spray_paint('red')   #=> "Your new red paint job looks great!"


#2. Use self for class method definitions.
	# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part2 -> More about self

	class GoodDog
	  attr_accessor :name, :height, :weight

	  def initialize(n, h, w)
	    self.name   = n
	    self.height = h
	    self.weight = w                                  #self.weight= is the same as sparky.weight=
	  end

	  def change_info(n, h, w)
	    self.name   = n
	    self.height = h
	    self.weight = w
	  end

	  def info
	    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
	  end

	  #!!! we're using self whenever we call an instance method from within the class. 
	  #!!! We know the rule to use self, but what does self really represent here? Let's add one more instance method to help us find out
	  def what_is_self
	    self
	  end

	end

	# Now we can instantiate a new GoodDog object.
	sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
	p sparky.what_is_self
	# => #<GoodDog:0x007f83ac062b38 @name="Sparky", @height="12 inches", @weight="10 lbs">
	# That's interesting. From within the class, when an instance method uses self, it references the calling object. 
	# In this case, that's the sparky object. Therefore, from within the change_info method, calling self.name= acts the same as calling sparky.name= from outside the class 
	# (you can't call sparky.name= inside the class, though, since it isn't in scope). 
	# Now we understand why using self to call instance methods from within the class works the way it does!


#3. The other place we use self is when we're defining class methods, like this:
# also, see this in "Class and instance methods - difference.rb"
	
	class MyAwesomeClass
  		def self.this_is_a_class_method
  		end
	end

	# !!!When self is prepended to a method definition, it is defining a class method. 
	# This method returned the value of the class variable @@number_of_dogs. 
	# How is this possible? Let's use code to take a look:
	class GoodDog
  		# ... rest of code omitted for brevity
  		puts self
	end
	irb :001 > GoodDog
	=> GoodDog
	# using self inside a class but outside an instance method refers to the class itself.
	# Therefore, a method definition prefixed with self is the same as defining the method on the class. 
	# That is, def self.a_method is equivalent to def GoodDog.a_method. That's why it's a class method; it's actually being defined on the class.

	# To be clear, from within a class...

	    #1.!!!! self, inside of an instance method, references the instance (object) that called the method - the calling object. !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    # Therefore, self.weight= is the same as sparky.weight=, in our example
	    #2.!!!! self, outside of an instance method, references the class and can be used to define class methods. !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    # Therefore, def self.name=(n) is the same as def GoodDog.name=(n), in our example.

	# Thus, we can see that self is a way of being explicit about what our program is referencing and what our intentions are as far as behavior. 
	# self changes depending on the scope it is used in, so pay attention to see if you're inside an instance method or not. 
	# self is a tricky concept to grasp in the beginning, but the more often you see its use, the more you will understand object oriented programming. 
	# !!!!!!!!!!! If the explanations don't quite make sense, just memorize those two rules above for now.



# self example
# https://www.youtube.com/watch?v=i4uiyWA8eFk
# class Computer
# 	def initialize(a,b)
# 		@a = a
# 		@b = b
# 	end

# 	def calc
# 		if @a < @b
# 			puts "true"
# 		else
# 			self.multiply
# 		end
# 	end

# 	def multiply
# 		puts @a * @b
# 	end

# end

# laptop = Computer.new(4,3)

# laptop.calc