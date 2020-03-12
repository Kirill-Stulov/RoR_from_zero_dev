# Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:02:29
# Метод класса применяется когда невозможно или не логично отнести метод к конкретному объекту

class Car
	attr_reader :current_rpm

	def self.description 													#!!! Метод класса. Просто выводит описание класса Car. Кстати теперь его можно вызывать и на подклассах
		puts "Это родительский класс для всех авто"
	end

	def description															#!!! Instance метод.  Методы класса не зависят от методов инстанса (методов экземпляра класса)  0:04:00
		puts "Это экземпляр класса #{self.class}"                            
	end																		#    т.е тут у нас не тот же метод что выше, а уже метод который мы можем вызывать на объекте

	class << self
		def description2													#!!! Есть синтаксический прием позволяющий записать несколько методов класса сразу 0:05:00
			puts "Это опять родительский класс для всех авто"
		end

		def description3
			puts "Это снова род класс для всех авто"
		end
	end


	def initialize
		@current_rpm = 0                    
	end

	def start_engine	
		start_engine! if engine_stopped?    
	end

	def engine_stopped?
		current_rpm.zero?		            
	end
	
	protected																		
											
	attr_writer :current_rpm
	def initial_rpm							
		700
	end

	def start_engine!                       
		self.current_rpm = initial_rpm      # без self переменная current_rpm будет просто локальной переменной, нам же нужно менять инстанс переменную @current_rpm Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм 0:10:05
	end

end

class SportCar < Car
	def initial_rpm  #Тут у нас полиморфизм, т.е этот метод в этом подклассе переопределен
		1000
	end
end

Car.description  					         #!!! вызываем этот метод на классе Car

car = Car.new
car.description

SportCar.description                       # вызываем метод класса Car на подклассе SportCar
sportcar = SportCar.new
sportcar.description
