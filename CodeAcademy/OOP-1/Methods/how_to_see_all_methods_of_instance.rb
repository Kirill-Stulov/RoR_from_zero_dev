# https://www.youtube.com/watch?v=MSniy2jkQDo

class Animal
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Animal
  def introduce
    puts "I'am #{name} and I'am #{age}"
  end
end

cat = Cat.new 'Spot', 1
other_cat = Cat.new 'Mr. Buttons', 5

# puts cat.name, cat.age
# other_cat.introduce

puts "Cat's public methods:"
# puts cat.public_methods                 # display all public methods
puts cat.public_methods.grep /name/     # display public methods filtered by methods, contains 'name' in it's name. this will show all method contains name
puts cat.protected_methods              # display protected methods
