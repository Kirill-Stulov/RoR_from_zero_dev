# d:\КУРСЫ\1. Ruby on Rails c нуля (2015) [Базовый]\Занятие 03. Основы ООП в Ruby\Занятие 03. Основы ООП в Ruby\  00:32:30
 class Car

	def stop
		@speed = 0
	end

	def go
		speed = 40        # локальная переменная
		@speed = 50
	end

	def current_speed
		puts @speed
	end
 
 end

 # локальная переменная -  ограничивается областью видимости в самом методе
 # нужна для локальных вычислений внутри метода
car1 = Car.new

p car1.go
# car1.current_speed