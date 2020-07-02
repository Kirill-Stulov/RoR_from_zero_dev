# совмещаем методы класса и методы экземапляря (instance методы) в одном модуле
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:31:25

# !!!! Полное описание всего что тут происходит смотри в "class_methods_in_modules.rb"

module FuelTank                
	def fill_tank(level)		
		self.fuel_tank = level 
	end

	def fuel_level 								
		p self.fuel_tank
	end

	protected								# тут protected а не private, потому что выше обращаемся к методу fuel_tank через self
	attr_accessor :fuel_tank
end	

module Debagger                         	#1. чтобы в модуле разделить методы класса и методы экземпляра 
	module ClassMethods                   		# создаем подмодуль ClassMethods в котором будут методы класса
		def debug(log) 								# в данном случае метод класса debug
			puts "!!!DEBUG: #{log} !!!"		
		end
	end

	module InstanceMethods                  #2. в этот подмодуль InstanceMethods поместим методы инстанса
		def debug(log)                     		# сделали instance метод debug
			self.class.debug(log)					# он вызывает метод класса через self.class и передпет туда тот же аргумент log   (подробнее смотри Сall_class_method_from_instance_method.rb)
		end  											# когда мы подключим это в класс, то сможем вызывать debug и на уровне instance и на уровне класса 		

		def print_class						#3. и еще метод print_class который просто выводит имя класса. При этом self является указателем на объект того класса в который включен модуль
			puts self.class 																				#т.е если работаем внутри класса Car то вызываем у объекта класса Car 			
		end	
	end

end

#9. !!! В ruby существует то что называется идиомой, т.е некий сложившийся прием который применяется достаточно часто.
# Чтобы не писать каждый раз extend Debagger:: ClassMethods и include Debagger:: InstanceMethods и не смотреть есть там такие модули или нет,
# чтобы отдать управление модулю какие непосредственно методы включать в наш класс -  есть еще один прием, который позволяет просто включить include:: Debagger и модуль сам определит
# какие методы включить как методы класса, а какие как инистанс методы 0:34:55
# ПРИМЕНЕНИЕ ЭТОГО В СЛЕДУЮЩЕМ ФАЙЛЕ "class_and_instance_methods_in_module2.rb"																			


class Car
	include FuelTank
	extend Debagger:: ClassMethods  		#4. Теперь можно сделать так - подключаем 
	include Debagger:: InstanceMethods			                     
	
	attr_reader :current_rpm
	
	@@instances = 0 					
										
	def self.instances					
		@@instances						
	end

	debug 'Start interface'	             #6 а здесь debug вызывается как метод класса - ВЫЗЫВАЕТСЯ ИЗ МОДУЛЯ  Debagger:: ClassMethods

	def initialize
		@current_rpm = 0
		@@instances += 1
	    debug 'initialize'                #5. Проверяем работу инстанс метода debug, ВЫЗЫВАЕТСЯ ИЗ МОДУЛЯ  Debagger:: InstanceMethods   
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
	include FuelTank
	extend Debagger:: ClassMethods        #4. и тут Теперь можно сделать так - подключаем 
	include Debagger:: InstanceMethods 

	debug 'MotorBike class'
end 																								 
										    														

car = Car.new         #7.
car.print_class       #8
bike = MotorBike.new  #7.
bike.print_class      #8.

# bike = MotorBike.new

# car.fill_tank(35)
# car.fuel_level
# bike.fill_tank(10)     
# bike.fuel_level

# p Car.instances
# MotorBike.debug "Yeah boy!"



