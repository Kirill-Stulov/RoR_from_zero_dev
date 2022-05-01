# https://launchschool.com/books/oo_ruby/read/inheritance#classinheritance

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class GoodDog < Animal
  def initialize(name, color)
    super(name)
    @color = color
  end
end

bes = GoodDog.new("Bes", "black")  #=> #<GoodDog:0x0000000005330f90 @name="Bes", @color="black"> 

#############
# There's one last twist. If you call super() exactly as shown -- with parentheses -- it calls the method in the superclass with no arguments at all. 
# If you have a method in your superclass that takes no arguments, this is the safest -- and sometimes the only -- way to call it:

class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super()
    @color = color
  end
end

bear = Bear.new("black")        # => #<Bear:0x007fb40b1e6718 @color="black">
