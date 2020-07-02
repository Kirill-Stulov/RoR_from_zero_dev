# Just class with initialize and attr for test
=begin
class Phone
	attr_reader :make, :owner

	def initialize(make, owner)
		@make = make
		@owner = owner
	end

	def make_call
		puts "ring-ring"
	end

	def add_number
		puts "number saved!"
	end

end

motorola = Phone.new("Motorola", "Roman")
motorola.make_call
p motorola.make
p motorola.owner
=end

=begin
a = ["a", "b", "c"]
p a.index("c")
=end

=begin
class Car
	attr_accessor :speed

	def initialize(speed = 0, engine_volume)
		@speed = speed
		@engine_volume = engine_volume
	end

	def start_engine
		puts "Wrom!"
	end

	def beep
		puts "Beeeep!"
	end

	def go
		self.speed = 50
		puts "Engine started!"
		show_speed
	end

	def stop
		self.speed = 0
		puts "Engine stopped!"
	end

	def show_speed
		puts "Current speed: #{@speed}"
	end

	def speed_up(speed_plus)
		@speed += speed_plus
		show_speed
	end

	def speed_down(speed_minus)
		if @speed == 0
			puts "Car is already stopped!"
		elsif @speed >= speed_minus
			@speed -= speed_minus
			show_speed
		elsif @speed < speed_minus
			self.stop
		end
	end

end

bmw = Car.new(0, 2.6)

bmw.go
#bmw.stop
bmw.speed_up(13)
bmw.speed_down(100)
=end

#<====================Добавление значений одного хеша в другой======================================>
# Имеем два хеша
=begin
old_hash = {13 => "train0"}
new_hash = {12 => "train1"}

new_hash[old_hash.keys] = old_hash.values # добавляем ключи и значения хеша old_hash в new_hash

number = new_hash.keys.join # выводим все ключи хеша new_hash  # join приводит их к строке!
number

# movies[title.to_sym] = rating.to_i                 # добавляем в хеш movies значения переменных title и rating в качестве ключ-значение (title: rating). Не забываем привести их к виду (ключ - символ, значение - целочислоенное)  
=end

#<==================== Генерируем новые строки ====================================================>
=begin
class StObjName  # class station_obj_name. Нужен чтобы генерить объекты имен станций
                   # объекты имен станций в свою очередь нужны чтобы каждый раз имя вводимое пользователем присваивалось новому уникальному объекту 
	
    attr_accessor :name               
	
	def initialize(name)
		@name = name
	end
end

a = "Tash"
b = "Moscow"

@st_names = []  #массив в котором храним хеши
@st_names << StObjName.new("Chicago")
@st_names << StObjName.new("Tash")


#puts @st_names
#@st_names.map!{|obj| p obj}
#p @st_names

#=begin
if @st_names.any?{|obj| obj.name == "Tash" } # https://stackoverflow.com/questions/57623915/ruby-lang-how-to-check-string-exists-in-name-attribute-of-objects-in-array
	puts "We already have name -> Tash!"
else
	@st_names << StObjName.new("Tash")
	puts "new name #{@st_names.last.name} added!"
end

#p @st_names
#@st_names.each{|obj| p obj.name }


# x.zip(y) #=> [["alpha1", "alpha2"], ["beta1", "beta2"]]
# x.zip(y).map {|a,b| a == b ? 'do this' : 'else do this' }
=end

#<==================== Генерируем новые строки 2====================================================>
=begin
class Tr_Obj

	attr_accessor :name, :number

	def initialize(name, number)
		@name = name
		@number = number
	end

end

#@a = 1
@trains = []
@trains << Tr_Obj.new("Train1", 1)

def add_train_number_2
		a = gets.chomp.to_i                      # консоль спросит ввод, вводим 1
		if @trains.any?{|obj| obj.number == a}   # если в массиве trains есть объект с номером 1, а он есть, т.к в массив добавили Tr_Obj.new("Train1", 1)
			@trains << Tr_Obj.new("Train2", 2)    # то добавялем в массив объект с номером 2 
			#p @trains
			@trains.map{|obj| puts obj.name }       # выводим имена
		else
			puts "Enter Train1 first!"
		end
end

#@trains << Tr_Obj.new("Train2", 2)

add_train_number_2   #вызываем метод
=end

#<================== Проверка while choice == 6 Перегон поездов из main_temp.rb ===================>
=begin
require_relative 'C:\Users\gz7n3r\Desktop\PROGS\work\RoR_from_zero\Lesson4\Task\train.rb'
require_relative 'C:\Users\gz7n3r\Desktop\PROGS\work\RoR_from_zero\Lesson4\Task\railway_station.rb'
require_relative 'C:\Users\gz7n3r\Desktop\PROGS\work\RoR_from_zero\Lesson4\Task\route.rb'

#class Moving < Train
=begin	def move_choosen_train
		#choosen_train = @tr_names.find{|obj| obj.number == 1}  #находим в массиве имен поездов объект с номером, котор соответствует нашему вводу, присваиваем этот объект (поезд) переменной ct
		choosen_train = @tr_names.find{|obj| obj.number == @st_input}   # ct -> choosed train
		@tr_names.find{ |obj| puts obj }
		#puts choosen_train
		#choosen_train.move("Rakka")
		choosen_train.move(@st_input)
	end

#end

@st_names = []
@tr_names = []
@st_names << RailwayStation.new("Rakka")
@tr_names << Train.new(1, :cargo)
#choosen_train = nil
#move_choosen_train

#def take_route(station)
#		@station = station
#		puts "Поезд №#{@number} готов отправиться со станции #{@station.first} на станцию #{@station.last}"
#	end

# @tr_names 
# @st_names
#=begin
if @tr_names.empty? == false  			# проверка, что в списке есть поезда
				puts " => выберите поезд из списка"		#(показываем список поездов и на какой они сейчас станции)
				@tr_names.each{|obj| puts obj.number}
				@tr_input = gets.chomp.to_i
				puts @tr_input   				# tr_input - пользовательский ввод
				if @tr_names.any?{ |obj| obj.number == @tr_input } # Если введенный номер поезда относится к существующим поездам
					puts "Выбран поезд #{@tr_input}"
					puts "Выберите станцию назначения из списка ниже: "   # ВМЕСТО ВОТ ЭТОГО ВСЕГО -НАПИСАТЬ МЕТОД И ВЫЗЫВАТЬ ЕГО!
					@st_names.map{|obj| puts obj.name}
					@st_input = gets.chomp.to_s
					if @st_names.any?{|obj| obj.name == @st_input}   # проверку станции опустим позже, у нас это есть в самом методе move 
						puts "Двигаемся на станцию #{@st_input}"					#@tr_input.move(st_input)  ТУТ ВМЕСТО tr_input нужно получать объект! ЭТО obj????# то используем метод move (из train.rb)  для перегона на соответствующую станцию.
						choosen_train = @tr_names.find{|obj| obj.number == @tr_input}
						p choosen_train
						choosen_train.move(@st_input)  #в методе move ()                                 #p @st_input #move(@st_input) #@tr_names.find{ |obj| obj.number == st_input} # нужен метод, который вытаскивает объект поезда по его номеру
					else															
						puts Такой станции не существует!
					end
				else
					puts "Такого поезда не существует!"
					p @tr_names.last.number.class
				end 
else 
	puts " => Еще не создано ни одного поезда!"
end 

=end
#<======================================================================================>

#<================== Проверка while choice == 2 Создание маршрута из main_temp.rb ===================>
# require_relative 'C:\Users\gz7n3r\Desktop\PROGS\work\RoR_from_zero\Lesson4\Task\route.rb'
# require_relative 'C:\Users\gz7n3r\Desktop\PROGS\work\RoR_from_zero\Lesson4\Task\train.rb'
# require_relative 'C:\Users\gz7n3r\Desktop\PROGS\work\RoR_from_zero\Lesson4\Task\railway_station.rb'

# @routes_names = []
# #@st_names = []
#@routes = []
#@st_names << RailwayStation.new("A")
#@st_names << RailwayStation.new("B")

=begin
#while true
#puts "<===================== Создание маршрута =========================>"
#		puts "Выберите станции для маршрута, или 1 -> для возврата в основное меню \n"
#		puts 'Доступны следующие станции:'
#		@st_names.map{ |obj| puts obj.name }
#		puts '<===========================>'
#		st_names_only = []                                 # новый локальный массив специально для имен
#		@st_names.each{|obj| st_names_only << obj.name}     # преобразуем имена объектов массива @st_names в новый массив st_names_only. Т.е st_names_only будет содержать только имена, чтобы ниже было легко проверять содежржимое одного массива в другом
		station_name_input_1 = 'A'#gets.chomp.to_s
#		break if station_name_input_1 == '1'
		station_name_input_2 = 'B'#gets.chomp.to_s
		station_name_input_3 = 'C'
		station_name_input_4 = 'D'
#		break if station_name_input_2 == '1'
#		if st_names_only.include?(station_name_input_1 && station_name_input_2) # @st_names - массив с объектами, проверяем что пользователь вводить существующее имя станции, которое в свою очередь принадлежит аттрибуту @name какого либо из объектов в массиве @st_names.  тут использовано any?, а не each потому что each всегда выдает true, а нам нужно enaumerable https://stackoverflow.com/questions/57623915/ruby-lang-how-to-check-string-exists-in-name-attribute-of-objects-in-array
			#@routes_names.push(station_name_input_1, station_name_input_2)
			@routes << Route.new([station_name_input_1, station_name_input_2])
			@routes << Route.new([station_name_input_3, station_name_input_4])
		 p @routes[0]
		 #@routes.each{|obj| puts obj.stations}
		 if @routes.any?{|obj| obj.stations == ['A','B'] } 
		 	puts 'true'
		 else
			puts 'false'
		 end
		 
			#@routes << Route.new([station_name_input_1, station_name_input_2])
			#p @routes
		
#			@routes_names.clear                                # в этом месте массив @routes_names очищаю, иначе второй маршрут будет брать первую станцию из первого маршрута, смотри initialize в route.rb
#		else
#			puts 'Станция с таким именем еще не создана!'
#		end
#end

#Route.list
Route.hi

=end

#<================================== Перегон поездов Проверка while choice 6  move to station method ==================================================================>
# @st_names = []
# @routes = []
# @tr_names = []	

# 	@st_names << RailwayStation.new('A')
# 	@st_names << RailwayStation.new('B')
# 	@routes << Route.new(['A', 'B'])
# 	@tr_names << Train.new(1, :passenger)
# 	@tr_names << Train.new(2, :passenger)
# 	@tr_input = 2
# 	p @routes
# 	#p @tr_names
# 	#p @tr_names.select{ |obj| obj.number == @tr_input}
# 	train_to_move = @tr_names.select{ |obj| obj.number == @tr_input}
    

#     #train_to_move[0].move_to_st('A')                                       # индекс [0] пришлось использовать потому как select возвращает объект а не массив находящийся в объекте
#     train_to_move[0].move('B')



#<======================================================================================>


#<================================= Проверка добавления нескольких строк в массив подряд ========================================>
=begin
arr = []

arr.push('test_1', 'test_2', ' ')

#p arr.include?('test_1')
p arr
p arr.include? " " == false 
=end
#<======================================================================================>
#Compares obj with the second element of each contained array using obj.==.
#Returns the first contained array that matches obj.
#a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]
#a.rassoc("two")    #=> [2, "two"]
#a.rassoc("four")   #=> nil


#@st_names.select{ |x| puts x.name}
#puts count.length
#puts count

#<========= пример =========
#h = {}
#h.merge!(key: "bar")
# => {:key=>"bar"}
#<==========================



#   будем создавать имя объекта ключом, а имя станции значением
#     именно: теперь StObjName.new(n) нужно делать ключом, а значением RailwayStation.new(station_name_input)



#@st_names_arr = (1..50).to_a   # st_names_arr массив хранящий все возможные имена станций (у нас они от 1 до 50) ЭТО не нужно, у нас ниже каждый раз и так новый объект генерится!
#puts @st_names_arr.each { |n| StObjName.new(n) }  # вместо each можно создать через map, тогда не будет конкретных имен в виде чисел


#  тогда будет многократно проще
#   нужно попробовать создавать хеш, где ключем будет числовой инкремент, а RailwayStation.new(station_name_input) 
#    при первом вводе пользователя ключ равен 1, при втором вводе ключ будет равен предыдущий ключ плюс 1, если 
#     Т.е в целом так, при первом проходе создаем ключ 1 и значение RailwayStation.new(station_name_input)
#        при втором создаем ключ равный предыдущему плюс 1 и значение RailwayStation.new(station_name_input) и т.д пока пользователь не нажмет 1

=begin
st_names = []  #массив в который будут вкладываться хеши(ключ - номер, значение RailwayStation.new(station_name_input)) 
key = 1
 unless st_names include.key? == 1  если массив не 
 	st_names << {key + 1, RailwayStation.new(station_name_input)}
 else 
 	st_names << {key, RailwayStation.new(station_name_input)}

 end
=end

=begin
def next_st_name  # метод для перемещения в массиве @st_names_arr
    	@next_st_name = @st_names_arr.index(@current_station) + 1]   
    	puts @next_st_name
    end 

    def current_station    
    	puts @current_station.name
    end
#@st_names = @st_names_arr.map { |name| StName.new(name) }    #st_names - переменная  
=end

############################
# class Book

# 	@@instances = 0

# 	def self.instances
# 		@@instances
# 	end

# 	def initialize
# 		@@instances += 1
# 	end

# end

# b1 = Book.new
# b2 = Book.new
# p Book.instances
##############################

class Car

	@@instances = 0


	def self.instances
		@@instances
	end

	def initialize
		@@instances += 1
	end 

end


c1 = Car.new
p Car.instances