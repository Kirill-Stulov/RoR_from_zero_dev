# class method 3
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:10:56
# Метод класса применяется когда невозможно или не логично отнести метод к конкретному объекту
# Одним из таких случаев является использование методов класса непосредственно в классе


class Car
	attr_reader :current_rpm
	@@instances = 0 					
										
	def self.instances					
		@@instances						
	end

	def self.debug(log) 				#1. Допустим нужно выводить некую инфу, когда класс объявляется, к примеру некая дебаг инфа. В самом классе вызываем метод и передаем ему строку, которая будет выведена на экран.
		puts "!!!DEBUG: #{log} !!!"
	end

	debug 'Start interface'				#2. теперь этот метод (debug) можем вызывать в классе. 0:12:10

	def initialize
		@current_rpm = 0
		@@instances += 1              
	end

	def start_engine	
		start_engine! if engine_stoppe
	end
	
	def engine_stopped?
		current_rpm.zero?		      
	end

	debug 'End interface'

	protected							
										
	attr_writer :current_rpm
	def initial_rpm						
		700
	end
	def start_engine!                 
		self.current_rpm = initial_rpm  # без self переменная current_rpm будет просто локальной переменной, нам же нужно менять инстанс переменную @current_rpm Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм 0:10:05
	end
end

class SportCar < Car
end
