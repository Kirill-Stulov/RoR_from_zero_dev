# Проверяем наличие определенного элемента объекта в массиве

	# если к примеру в массиве у нас объект класса Station, с атрибутом @name
# arr = [#<Station:0x0000000005054b78 @name="abcd", @trains={}>, #<Station:0x0000000005054538 @name="efgh", @trains={}>]           #где 0x00000000050dcac8 - адрес объекта Station в памяти

# если нужно проверить один параметр в объектах массива
	# arr.any?{|obj| p obj.name == "abcd" }  								# результат	=> true

#<###########################################################################################################################################>
# если нужно проверить несколько параметров за раз в объектах массива 
	
	# arr.any?{|obj| obj.name == x} && arr.any?{|obj| obj.name == y} ПРАВИЛЬНО!  (либо через include?)
	# arr.any?{|obj| p obj.name == ("abcd" && "efgh") }              НЕПРАВИЛЬНО! Чтобы проверить, придется отдельно вытащить параметры из объектов, в другой массив и там уже проверять методом который ниже

#<###########################################################################################################################################>
# если нужно проверть просто несколько значений в массиве -> https://issue.life/questions/4893884
	# >> [1,2,3,4,5,6] & [4,1]
	# => [1, 4]
	# >> [1,2,3,4,5,6] & [7,9]
	# => []

	# ([4,1] - [1,2,3,4,5,6]).empty? # => true                       # лучший вариант!!!. получаем нужное булево значение вычитанием одного массива из другого

# также смотри файл main.rb в C:\Users\kirill.stulov\Desktop\OctoberCutover_Back\Desktop\PROGS\work\RoR_from_zero\Lesson6\Task

#<###########################################################################################################################################>
# !!!!!! РЕАЛЬНЫЙ ПРИМЕР!!!!!!!!  применяется в PROGS\work\RoR_from_zero\Lesson6\Task\main.rb   while choice == 2 str 78- 80
# варинат №2 в итоге проще и изящнее
# все что ниже нужно для проверки содержит ли массив @@stations два определенных значения. В результате получаем true или false. 
# Условие -  если оба значения есть в массиве - true. Если хотябы одного нет - false.
class Station
	attr_accessor :name
	@@stations = []
	@@st_names = []

	def initialize(name, trains)
		@name = name
		@trains = trains
		#@@stations << name         # вариант2 если закидывать только имена, то можно сразу приверять наличие значений "ora" и "deb" в массиве @@stations
		@@stations << self           # вариант1 если закидывать в массив @@stations объекты содержащие "ora" и "deb"целиком, то потом придется перед проверкой на наличие значений в массиве, преобразовать массив
	end
	
	def self.show
		p @@stations
	end

	def self.check                    # сам метод проверки с двумя его вариантами
	# 1. вариант с преобразованием массива
		a = []
		a << @@stations.map{ |obj| obj.name }       # 1.преобразую массив объектов в простой массив 
		# a.flatten!                                    # 2. преобразую новый массив окончательно
		(["deb","ora"] - a.flatten!).empty?						# 3. Проверяю что оба значения "ora" и "deb" есть в простом массиве a
		
	# 2. вариант с простым массивом
		# (["deb","ora"] - @@stations).empty?          # лучший вариант. получаем нужное значение вычитанием одного массива из другого
		# ([4,1] - [1,2,3,4,5,6]).empty? # => true       # простой пример лучшего варианта (т.е из известного массива [4,1] вычитаем второй массив и если после этого известный массив становится пустым, значит его значения содержались во втором массиве) 
		# (@@stations & ["ora","deb"]).size == 2          # вариант хуже и сложнее. таким образом, проверяем, есть ли оба значения "ora" и "deb" в простом массиве @stations (метод проверки & отвечает на вопрос содержания массива ["ora","deb"] в массиве @@stations)  .size == 2 нужно чтобы получить булево значение, без этого мы получим на вывод ["ora","deb"]
	
	# 3. вариант с методом dig (стр. 174 Руби для романтиков)
		# метод dig тут не подходит,если вниутри массива объект подобный нашему
		# @@stations.dig["ora", "deb"]
		# p @@stations

	end


end

Station.new("deb",1)
Station.new("ora",2)

# Station.show

p Station.check
