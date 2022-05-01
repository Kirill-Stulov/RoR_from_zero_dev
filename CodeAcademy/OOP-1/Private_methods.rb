# Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм\

class Car
	attr_accessor :current_rpm

	def initialize
		@current_rpm = 0                         # устанавливаем изначальное значение current_rpm равное 0
	end

	def start_engine	
		start_engine! if engine_stopped?            # запустить двигатель, если он не запущен
	end

	def engine_stopped?
		current_rpm.zero?		                 # true, если обороты на нуле
	end

	private											# все методы идущие после private считаются частными, т.е их нельзя вызвать вне класса
													# как понять, какие методы должны быть приватными? Нужно задать себе вопрос, будут ли эти методы доступны из клиентской части? Если нет,то они должны быть приватные.

	def start_engine!
		@current_rpm = 700                         # устанавливает начальные обороты. Чтобы переменная экземпляра изменялась вместо @current.rpm можно писать self.current.rpm
		puts "Engine started! Current rpm is: #{@current_rpm}"
	end
	
	# остановить двигатель
end


bmw = Car.new
p bmw.current_rpm

bmw.start_engine
p bmw.current_rpm

#p bmw.engine_stopped
