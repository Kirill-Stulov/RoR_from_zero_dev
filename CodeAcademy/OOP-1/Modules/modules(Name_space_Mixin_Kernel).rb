# modules
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:16:36

# У модуля 3 цели 
# 1 - пространство имен. Отделять одинаковые названия классов друг от друга
# 2 - логика без классов. Например модуль Math, Kernel (puts, print)
# 3- наиболее частый. Mixin. Разделение кода между классами и для того чтобы этот код можно было подключать в самые разные классы.

# ПРИМЕРЫ
#1. Пространство имен  (помещение классов в пространство имен) 0:21:00
# module Admin
# 	class Car
# 		# реализация
# 	end
# end

# можно проще поместить класс Car в пространство имен Admin, а именно не создавая модуль
# class Admin::Car
# end

#2. Math 0:23:00
# Math.methods
# Math к примеру сделан в виде не объекта, а модуля

#3. Mixin 
# 1. допустим в нашем классе Car хотим создать обычные instance методы, которые заправляют бак и показывают уровень бака. 0:24:00

module FuelTank                            	# 6. Создадим этот mixin модуль, перенеся общие для всех классов методы сюда !!! 0:26:00  ПОЛУЧАЕМ ДВА МЕТОДА КОТРЫЕ МОЖНО ИСПОЛЬЗОВАТЬ В АБСОЛЮТНО РАЗНЫХ КЛАССАХ!
	def fill_tank(level)						# но просто объявления модуля не достаточно чтобы он включился в класс, его нужно включить через include и название модуля
		self.fuel_tank = level # self тут нужен чтобы не было путаницы с instance переменной
	end

	def fuel_level 								
		p self.fuel_tank
	end

	protected
	attr_accessor :fuel_tank
end	

class Car
	include FuelTank                         # 7. Вот так через include подключается каждый модуль по отдельности
	attr_reader :current_rpm
	@@instances = 0 					
										
	def self.instances					
		@@instances						
	end
	def self.debug(log) 				# создали метод класса debag
		puts "!!!DEBUG: #{log} !!!"
	end
	debug 'Start interface'	        # вызываем метод класса debag, передавая строку в качестве параметра (подробное описание в Class method 3.rb)			
	def initialize
		@current_rpm = 0
		@@instances += 1              
	end

	# def fill_tank(level)						# 2.instance метод наполнения бака с геттером fuel_tank принимающим значение с неким уровнем бака
	# 	fuel_tank = level                    
	# end

	# def fuel_level 								# 3. instance метод fuel_level котор возвращает значение fuel_tank
	# 	self.fuel_tank
	# end

	def start_engine	
		start_engine! if engine_stoppe
	end
	
	def engine_stopped?
		current_rpm.zero?		      
	end
	debug 'End interface'			# вызываем метод класса debag, передавая строку в качестве параметра (подробное описание в Class method 3.rb)
	protected							
										
	attr_writer :current_rpm
	# attr_accessor :fuel_tank					# 4. соответственно нам понадобится accessor, который поместим в protected, потому как не хотим показывать fuel_tank в качестве интерфейса

	def initial_rpm						
		700
	end
	def start_engine!                 
		self.current_rpm = initial_rpm   # без self переменная current_rpm будет просто локальной переменной, нам же нужно менять инстанс переменную @current_rpm Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм 0:10:05
	end
end

class MotorBike                            														# 5. Не является наследником класса Car, но и у него есть бензобак, значит должны быть теже самые методы fill_tank, fuel_level
	include FuelTank    # 7. Вот так через include подключается каждый модуль по отдельности      #     тут и воспользуемся mixin для того чтобы выделить эти методы в модуль, и потом в любой объект,
end 																								  #      где у нас есть топливный бак можно было подключить этот модуль   !!! 0:26:00
										    														

car = Car.new
bike = MotorBike.new

car.fill_tank(35)
car.fuel_level
bike.fill_tank(10)    # методы fill_tank и fuel_level работают для bike(объекта класса MotorBike) благодаря миксину FuelTank 
bike.fuel_level