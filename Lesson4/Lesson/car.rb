# Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм\
class Car
	attr_reader :current_rpm, :name

	def initialize
		@name
		@current_rpm = 0                         # устанавливаем изначальное значение current_rpm равное 0
	end

	def start_engine	
		start_engine! if engine_stopped?            # запустить двигатель, если он не запущен
	end

	def engine_stopped?
		current_rpm.zero?		                 # true, если обороты на нуле
	end

	protected										# protected отличается от private, тем что под protected методы видны в подклассах Truck SportCar	
													# все методы идущие после private считаются частными, т.е их нельзя вызвать вне класса
													# как понять, какие методы должны быть приватными? Нужно задать себе вопрос, будут ли эти методы доступны из клиентской части? Если нет,то они приватные должны быть.
	attr_writer :current_rpm, :name

	def initial_rpm								# поместили изначальные обороты в константу или в метод. Тут у нас полиморфизм, т.е этот метод переодпределяется в подклассах track и sport_car
		700
	end

	def start_engine!                            # символ ! обозначает важность метода   # \1. Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм\Занятие 04. 0:06:10
		@current_rpm = initial_rpm                         # устанавливает начальные обороты. Чтобы переменная экземпляра изменялась вместо @current.rpm можно писать self.current.rpm
		puts "#{self.class} Engine started! Current rpm is: #{@current_rpm}"  # self.class тут добавил чтоб он писал чей двигатель запущен
	end
	
	# остановить двигатель
end


