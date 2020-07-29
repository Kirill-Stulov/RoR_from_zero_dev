# Пример с методами класса в 

# class_and_instance_methods_in_module2.rb
# Продолжение от class_and_instance_methods_in_module
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:34:50
# !!! этот прием часто используется в библиотеках Rails

module FuelTank                
	def fill_tank(level)		
		self.fuel_tank = level                #!!!! здесь у метода fuel_tank нужен self чтобы не было путаницы с инстанс переменной fuel_tank, т.е self тут говорит что используем метод fuel_tank, который создан ниже через attr_accessor
	end

	def fuel_level 								
		p self.fuel_tank
	end

	protected									# тут protected а не private, потому что выше обращаемся к методу fuel_tank через self
	attr_accessor :fuel_tank
end	

module Debagger                         	#10. 0:35:50   теперь модуль сам определяет какие методы включить как методы класса, а какие как инстанс/ Модуль Debagger (в который все вложено) по сути становится объявлением пространства имен.
	def self.included(base)						# self означает что метод - included не включается в тот класс в который мы подключаем модуль, а является методом самого модуля. И этот метод принимает один параметр (base), туда будет передаваться сам класс, в который мы подключаем модуль, когда вызываем include 
		base.extend	ClassMethods					 # чтобы подключить методы класса (из модуля ClassMethods), мы на аргументе base (т.е на самом классе) вызываем метод extend
		base.send :include, InstanceMethods              # чтобы подключить instance методы (из модуля InstanceMethods) подробно здесь 0:38:25
	end 													# в двух словах base.extend вызывает extend и подключает ClassMethods, base.send :include вызывает include и подключает методы экземпляра из модуля InstanceMethods   
	module ClassMethods                   		
		def debug(log) 							# метод класса debug
			puts "!!!DEBUG: #{log} !!!"		
		end
	end

	module InstanceMethods                  
		def debug(log)                     	
			self.class.debug(log)			#!!! для того чтобы вызвать из инстанс метода метод класса (метод класса debug) нужно писать self затем class затем метод класса	
		end  								

		def print_class						
			puts self.class 				
		end	
	end

end

class Car
	include FuelTank 	
	include Debagger                       #11. Это позволило тут записать просто include Debugger, без указания пространства имен 0:39:20
												# когда вызываем Include Debagger, в самом модуле Debagger срабатывает метод self.included(base), в качестве аргумента туда передается класс Car или любой другой
													# у этого класса вызываем extend чтобы подключить методы класса из модуля ClassMethods	
													 	# затем через send вызываем include чтобы подключить методы экземпляра класса из модуля InstanceMethods 
	attr_reader :current_rpm
	
	@@instances = 0 					
										
	def self.instances					
		@@instances						
	end
	debug 'Start interface'	           
	def initialize
		@current_rpm = 0
		@@instances += 1
	    debug 'initialize'             
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
		self.current_rpm = initial_rpm
	end

end

class MotorBike                            														
	include FuelTank                            # 11.
	include Debagger

	debug 'MotorBike class'
end 

car =  Car.new
car.print_class

bike = MotorBike.new
bike.print_class
MotorBike.debug('yiss')

puts "Methods of object car of Class Car:"
p car.methods
puts "Methods of class Car:"
p Car.methods
puts "Car class instance methods:"
p Car.instance_methods