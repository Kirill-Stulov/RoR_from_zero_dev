# # Instance variable
# # https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-i/exercises/whats-in-a-name?action=resume_content_item
# # https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-i/exercises/instantiating-your-first-object?action=resume_content_item

# # In Ruby, we use @ before a variable to signify that it’s an instance variable. 
# # This means that the variable is attached to the instance of the class.

# class Car
#   def initialize(make, model) 
#     @make = make
#     @model = model
#   end
# end

# kitt = Car.new("Pontiac", "Trans Am")

# # The code in the example above creates an instance, kitt, of the class Car. kitt has his own @make (“Pontiac”) and @model (“Trans Am”). 
# # Those variables belong to the kitt instance, which is why they’re called instance variables.

# #<=== Example with explanation =============================>
# class Person
#   def initialize(name)
#     @name = name
#   end
# end

# matz = Person.new("Yukihiro")

# # Gave your initialize method a single parameter, name. In the body of your method, set @name = name.
# # This tells Ruby that whenever it creates a Person, it has to have a name, and each instance of Person will have its own @name.
# # We can create an instance of a class just by calling .new on the class name like so: me = Person.new("Eric") or matz = Person.new("Yukihiro")

# # <=== Еще пример =============================>
 class Car

	def stop
		@speed = 0
	end

	def go
		@speed = 50
	end

	def current_speed                      # метод геттер - возвращает значение. просто возвращает число. Метод нужен потому что !!! не можем напрямую обратиться к instance переменной объекта
		puts @speed
	end

	def set_speed(speed)                    # устанавливает значение instance переменной @speed в то значение которое передается параметром (speed)
		@speed = speed
	end
 
 end

# instance переменная (переменная экземпляра) @speed 
#!!! важнейшей концепцией instance переменной является то, что доступ к переменной @speed у нас есть в любом методе класса Car
#!!! на данном примере, при установке скорости 50 в методе go, то когда вызовем метод current_speed он покажет 50
#!!!!!! instance переменными не должны быть все переменные, только те которые в рамках всего класса определяют некое свойство, как скорость в этом примере
#!!! локальная же переменная ограничивается областью видимости в самом методе и используется для локальных вычислений внутри метода
# !!! при выполнении программы в переменной @speed изначально ничего нет, чтоб что-то появилось, нужно обратиться к ней, например как ниже -> car1.go
# d:\КУРСЫ\1. Ruby on Rails c нуля (2015) [Базовый]\Занятие 03. Основы ООП в Ruby\Занятие 03. Основы ООП в Ruby\  00:29:00

car1 = Car.new

p car1.go
# car1.current_speed