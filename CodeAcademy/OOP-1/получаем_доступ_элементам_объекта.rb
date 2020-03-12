# получаем доступ к элементам объекта
# А именно получаем доступы к переменным экземпляра (instance variable), которые он содержит @type, @number и тд.
class Train
	attr_accessor :speed, :wagon, :type, :route, :station, :number, :name 

	def initialize(number, type)  # Имеет, тип, который указывается при создании: грузовой, пассажирский и номер.
		@type = type
		@number = number.to_i
		@speed = 0
		@wagon = []
		@route = []
		puts "Собран новый поезд №#{@number}, типа #{@type}"
	end

end

@tr1 = Train.new(1, :passenger)                 # создаем объект
p @tr1.number                                   # ПОЛУЧАЕМ ДОСТУП К ЭЛЕМЕНТУ @number


@trains = []
@trains << Train.new(2, :cargo)
@trains.each{|obj| p obj.number}				# получаем доступ к элементу @number объекта в массиве
												

# в массиве хешей

# Получаем доступ к элементу объекта в массиве a
	# если к примеру в массиве у нас объект класса Wagon, с атрибутами @number и @passenger
a = [#<Wagon:0x00000000050dcac8 @number=55, @type=:passenger>]                                        # 0x00000000050dcac8 - адрес объекта Wagon в памяти
num = a.collect{|obj| obj.number }  								# результат	=> [55]

# также смотри файл initialize.rb в \RoR_from_zero\CodeAcademy\OOP-1\initialize.rb