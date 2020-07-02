# !!!вызываем метод класса из инстанс метода
# !!подробности остального кода смотри в Counting_number_of_instances.rb
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:13:00

class Car

	@@instances = 0				
								

	def self.instances           
		@@instances				
	end			

	def self.debug(log)
		puts "!!!Debug: #{log}!!!"
	end 

	debug "Start interface"

	def initialize
		@@instances += 1	
		self.class.debug "Initialize" 			#!!! для того чтобы вызвать из инстанс метода метод класса нужно писать self затем class затем метод класса	
	end

	debug "End interface"

end

c = Car.new
p Car.instances