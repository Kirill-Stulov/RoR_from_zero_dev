##d:\КУРСЫ\1. Ruby on Rails c нуля (2015) [Базовый]\Занятие 03. Основы ООП в Ruby\Занятие 03. Основы ООП в Ruby\  00:37:35
# метод конструктор. В нем инициализаруются параметры при создании объекта его класса
# getter setter

#<========== вариант 1 =============================================================================================================>
# class Car
# 	def initialize 		# метод initialize - для инициализации каких-либо начальных значений в классе
# 		@speed = 10 	 # присваиваем автомобилю при его создании изначальную скорость. Когда мы создаем автомобиль, он начинает двигаться и сигналить 
# 		beep              # сигналит он с помощью вызова метода beep (в одном методе можно вызывать другие методы)
# 		current_speed      # и показывает текущую скорость через метод current_speed
# 	end
	
# 	def stop
# 		@speed = 0
# 	end

# 	def beep
# 		puts "beep beep!"

# 	def go
# 		@speed = 50
# 	end

# 	def current_speed
# 		puts @speed
# 	end
 
#  end

#<========== вариант 2 с параметрами ===============================================================================================>
# class Car
# 	def initialize(speed, engine_volume) 		# аргументы speed, engine_volume использутся внутри в виде локальных переменных	
# 		@speed = speed 	 					  		# локальной переменной speed присваиваем instance переменную @speed. Теперь доступ к переменной @speed у нас есть в любом методе класса Car
# 		@engine_volume = engine_volume
# 		beep            
# 		current_speed  
# 	end
	
# 	def stop
# 		@speed = 0
# 	end

# 	def beep
# 		puts "beep beep!"
# 	end

# 	def go
# 		@speed = 50
# 	end

# 	def current_speed						# метод геттер - возвращает значение
# 		@speed
# 	end

# 	def engine_volume
# 		@engine_volume						# метод геттер - возвращает значение. просто возвращает число. Метод нужен потому что не можем напрямую обратиться к instance переменной объекта
# 	end

# 	def set_speed(speed)                    # метод сеттер для скорости. устанавливает значение instance переменной @speed в то значение которое передается параметром (speed)
# 		@speed = speed
# 	end
 
#  end

#  car1 = Car.new(20, 2.0)                   # создаем новый объект. Когда вызываем метод new, выполняется метод initialize (конструктор) и устанавливаются начальные значения переменных speed, engine_volume
#  												# чтобы получить эти значения обращамся к методам current_speed, engine_volume
#  p car1.current_speed
#  p car1.engine_volume
#  p car1.set_speed(120)                    # т.к благодаря этому текущее значение instance переменной @speed изменилось, то и current_speed теперь тоже 120
#  p car1.current_speed                       # то и current_speed теперь тоже 120



#<========== вариант 3 с параметрами у которых добавлены значения по умолчанию =======================================================================>
# class Car
# 	def initialize(speed = 0, engine_volume = 0) 	# добавлены значения по умолчанию	
# 		@speed = speed 	 					  		
# 		@engine_volume = engine_volume
# 		beep            
# 		current_speed  
# 	end
	
# 	def stop
# 		@speed = 0
# 	end

# 	def beep
# 		puts "beep beep!"
# 	end

# 	def go
# 		@speed = 50
# 	end

# 	def current_speed						
# 		@speed
# 	end

# 	def engine_volume
# 		@engine_volume						
# 	end

# 	def set_speed(speed)                    
# 		@speed = speed
# 	end
 
#  end


# car2 = Car.new   # теперь можно вызывать без параметров, подставятся 0 и 0 значения по умолчанию
# p car2     # => #<Car:0x00000000050721a0 @speed=0, @engine_volume=0> 

#<========== вариант 4 с параметрами, один обязательный, второй нет ==============================================================>
# d:\КУРСЫ\1. Ruby on Rails c нуля (2015) [Базовый]\Занятие 03. Основы ООП в Ruby\Занятие 03. Основы ООП в Ruby\  00:47:11
class Car
	def initialize(speed = 0, engine_volume) 	# укажем значение по умолчанию только для скорости, то при вызове метода new на объекте класса Car, будет требоваться один обязательный 
		@speed = speed 	 					  		# элемент и один не обязательный
		@engine_volume = engine_volume
		beep            
		current_speed  
	end

	def stop
		@speed = 0
	end

	def beep
		puts "beep beep!"
	end

	def go
		@speed = 50
	end

	def current_speed						
		@speed
	end

	def engine_volume
		@engine_volume						
	end

	def set_speed(speed)                    
		@speed = speed
	end
 
end

car2 = Car.new(2.0)   #!!! теперь можно вызывать только без одного параметра, подставится 0 по умолчанию для скорости, 
						# !!! а переданный параметр 2.0 подставится в тот, который теперь обязателен для ввода при вызове! (а именно в engine_volume) Похоже этим я буду не редко пользоваться
						 # иным языком, значение 2.0 будет подставлено в переменную engine_volume и как следствие в instance переменную @engine_volume

p car2      # > #<Car:0x00000000050721a0 @speed=0, @engine_volume=2.0> 
				# 0x00000000050721a0 - адрес объекта Car2 в памяти	

#!!!! если передадаем оба значения при вызове, то значения по умолчанию переопределяются
car3 = Car.new(10, 2.0)

p car3      # > #<Car:0x00000000050721a0 @speed=10, @engine_volume=2.0> 
				# 0x0000000005119338 - адрес объекта Car3 в памяти	