# Полиморфизм - переопределение методов в подклассах
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм\ 0:27:10; Еще детали 0:34:20 ; Еще полиморфизм 0:36:49

# Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм\
class Car
	attr_reader :current_rpm, :name

	def initialize
		@name
		@current_rpm = 0                         # устанавливаем изначальное значение current_rpm равное 0
	end

	def start_engine	
		start_engine! if engine_stopped?        # запустить двигатель, если он не запущен
	end 										

	def engine_stopped?
		current_rpm.zero?		                 # true, если обороты на нуле
	end

	protected										# protected отличается от private, тем что под protected методы видны в подклассах Truck SportCar	
													# все методы идущие после private считаются частными, т.е их нельзя вызвать вне класса
													# как понять, какие методы должны быть приватными? Нужно задать себе вопрос, будут ли эти методы доступны из клиентской части? Если нет,то они приватные должны быть.
	attr_writer :current_rpm, :name

	def initial_rpm								 # 1. ТУТ У НАС ПОЛИМОРФИЗМ !!!, т.е этот метод переодпределяется в подклассах Track и Sport_car!!! Поместили изначальные обороты в константу или в метод. time 0:27:10
		700
	end

	def start_engine!                            								# символ ! обозначает важность метода   # \1. Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм\Занятие 04. 0:06:10
		@current_rpm = initial_rpm                         						# устанавливает начальные обороты. Чтобы переменная экземпляра изменялась вместо @current.rpm можно писать self.current.rpm
		puts "#{self.class} Engine started! Current rpm is: #{@current_rpm}"  	# self.class тут добавил чтоб он писал чей двигатель запущен
	end
	
	# остановить двигатель
end


class SportCar < Car

	def start_engine					# 2. ПОЛИМОРФИЗМ (переопределение метода start_engine) !!! Часто возникает ситуация когда метод из базового класса нужно переопределить НЕПОЛНОСТЬЮ   time 0:34:20
		super							# Допустим мы хотим чтобы машина при заводе двигателя еще и издавала звук.
		puts "Wroom!"					# Для этого можно скопировать метод start_engine из базового класса и дописать puts "Wroom"
	end									# но это будет дублированием кода. Иcпользуем super
		
									        							
	def initial_rpm
		1000
	end

end




class Drive								# 3.  Под ПОЛИМОРФИЗМОМ понимают еще одно понятие. Можно передавать подклассы туда, где ожидается базовый класс 0:36:49
										#   	Например у нас есть класс Driver с методом drive, которому передается объект автомобиля car
	def drive(car)
		car.start_engine							# тут передается автомобиль в качестве параметра
	end

end

car = Car.new
supcar = SportCar.new
driver = Drive.new
driver.drive(car)
driver.drive(supcar)
p car.current_rpm


