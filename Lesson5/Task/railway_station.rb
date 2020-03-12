#<================ Станция: ===========================================================================>
require_relative 'train.rb'
class RailwayStation < Train         # Наследуем из train, потому как используем его метод count_hash_dublicate
	attr_accessor :name

	def initialize(name)             # Имеет название, которое указывается при ее создании
		@name = name
		@trains = {}
		puts "Станция #{@name} создана \n"
	end

	def list
		puts "На станции #{@name} сейчас #{@trains.length} поездов"
	end

	def list_type
		puts "На станции #{@name} поездов типа Freight: #{count_hash_dublicate(@trains, "freight")}"      # получаем количество поездов на станции через метод count_hash_dublicate (из train), который считает сумму всех значений, если это значение равно "freight"
		puts "На станции #{@name} поездов типа Passenger: #{count_hash_dublicate(@trains, "passenger")}" 
	end 

#станция принимает поезд
	def take_train(train = {})     	# по умолчанию принимает хеш
		@number = train.keys.join  	# переменной экземпляра @number присваиваем последовательность всех ключей хеша train
		@type = train.values.join    # кстати join приводит их к строке! это нужно для нормального вывода в строке 30!
			if @number.nil? || @type.nil?
				puts "Невозможно принять такой поезд!"
			else
				#@trains << {@number => @type}      # если условие соблюдено, кладем номер и тип в виде хеша в хеш @trains (@number ключ, @type значение)
				@trains[@number] = @type              # такой-же пример добавления в хеш есть тут RoR_from_zero\CodeAcademy\Hash\movie_ratings.rb
				puts "Поезд №#{@number} типа #{@type} принят на станцию #{@name}"
			end
	end
    
	def send_train(train = {})                   #проблема с этим методом, срабатывает только на else
		@number = train.keys.join
		@type = train.values.join
			if @trains.include?({@number => @type})
				@trains.delete({@number => @type})
				puts "Поезд №#{@number} покинул станцию #{@name}"
			else
				puts "Такого поезда нет на станции!"
			end
	end

	private
	# Нет идей какие методы можно было бы внести сюда

end
