# методы класса вынесены в модуль 
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:29:40
# остальное описание кода этого примера смотри в "Class method 3.rb" и "modules(Name_space_Mixin_Kernel).rb"
# тут еще подсчет количества экземпляров класса через Initialize

module FuelTank                
	def fill_tank(level)		
		self.fuel_tank = level 
	end

	def fuel_level 								
		p self.fuel_tank
	end

	protected                        # тут protected а не private, потому что выше обращаемся к методу fuel_tank через self
	attr_accessor :fuel_tank
end	

module Debagger
	def debug(log) 						# поместили метод класса debag в отдельный модуль Debagger. !! Метод класса debag теперь без self (как было смотри в в "Class method 3.rb")
		puts "!!!DEBUG: #{log} !!!"		# 
	end
end

class Car
	include FuelTank
	extend Debagger			#!!! модуль Debagger подключается не через Include, а через Extend. Т.к это не instance метод вроде fill_tank, а метод класса  0:30:20                      
	attr_reader :current_rpm
	@@instances = 0 					
										
	def self.instances					
		@@instances						
	end

	debug 'Start interface'	        # вызываем метод класса debag, передавая строку в качестве параметра (подробное описание в Class method 3.rb)			
	def initialize
		@current_rpm = 0
		@@instances += 1             # переменная класса. разделяется между самим классом, т.е к какому бы классу или подклассу мы не обратились, эта переменная будет иметь общее значение для них всех!
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
		self.current_rpm = initial_rpm  # зачем тут нужен self?
	end
end

class MotorBike                            														
	include FuelTank
	extend Debagger 

	debug 'MotorBike class'
end 																								 
										    														

car = Car.new
bike = MotorBike.new

car.fill_tank(35)
car.fuel_level
bike.fill_tank(10)     
bike.fuel_level

p Car.instances					
MotorBike.debug "Yeah boy!"


