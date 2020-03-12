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



# Another example
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:00:28
# Метод класса это такой же метод, но вызывается он не на конкретном объекте, а на классе
# требуется в тот момент, когда невозможно или не логично отнести метод к конкретному объекту
	# пример
	Car.new    #где Car - класс, new - метод
	User.find(5)