# class variable 2  
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:05:40; 0:06:46

#!!! ПЕРЕМЕННАЯ КЛАССА ДОСТУПНА И РАЗДЕЛЯЕТСЯ НЕ ТОЛЬКО В ЦЕЛОМ У САМОГО КЛАССА, НО И С ЕГО НАСЛЕДНИКАМИ 
# Классическое применение переменных класса - это подсчет экземпляров класса. 
# 1. Каждый раз когда мы инстанцируем новый объект,
#    мы хотим чтобы некий глобальный счетчик этого класса увеличивался

class Car
	attr_reader :current_rpm

	@@instances = 0 							 #!!! переменная класса. 2. Эту переменную при каждом вызове new (т.е при каждом вызове конструктора) увеличивать на 1
													# переменную класса можно использовать внутри методов и снаружи

	def initialize
		@current_rpm = 0
		@@instances += 1                            # 3. увеличиваем на 1 при вызове initialize                     
	end

	def self.instances									# 4. чтобы эту переменную (содержит колличество экземпляров класса Car) выводить, нужен !!!  метод класса 0:08:10
		@@instances									# 5. объявим этот метод как метод класса через self. Будет просто возвращать значение переменной @@instances
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
		self.current_rpm = initial_rpm
	end

end

class SportCar < Car
end

p Car.instances        
car = Car.new			# создаем один экземпляр (инстанс) класса Car
p Car.instances     	#!!! 1 после созание одного инстанса класса Car, счетчик стал равен 1  

supcar = SportCar.new	#!!! 2. при создании экземпляра подкласса, счетчик родительского класса тоже увеличивается
p Car.instances
p SportCar.instances    #!!! 3. тоже значение счетчика будет и у подкласса, т.е метод instances наследуется 