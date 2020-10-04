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
bmw.speed_down(65)
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


=begin
#<================== Проверка while choice == 4 Добавлнение вагона к поезду из main_temp.rb ===================>
require_relative 'train.rb'
require_relative 'train_passenger.rb'
require_relative 'train_cargo.rb'

require_relative 'route.rb'
require_relative 'railway_station.rb'

require_relative 'wagon.rb'
require_relative 'wagon_cargo.rb'
require_relative 'wagon_passenger.rb'

# <============================================== Интерфейс пользователя! ==========================================================>
class Menu < Train
@st_names = []                #1 stations_names массив в котором храним объекты с именами станций при выборе 1
# @@tr_names = []                #3 массив в котором храним объекты с именами поездов при выборе 3
# @@wg_names = []
#@@st_and_tr = []               #6 массив хешей содержащий станции и поезда
#@routes_names = []           # 2 
@routes = []                  # 2
train1 = Train.new(1, :passenger)
train2 = Train.new(2, :cargo)
wagon1 = Wagon.new(55, :passenger)
wagon2 = Wagon.new(22, :cargo)
wagon3 = Wagon.new(4, :passenger)
wagon4 = Wagon.new(3, :cargo)
@@tr_names << train1
@@tr_names << train2
@@wg_names << wagon1
@@wg_names << wagon2
@@wg_names << wagon3
@@wg_names << wagon4


choice = gets.chomp.to_i
	while choice == 4
			puts "<================ Добавлнение вагона к поезду ================>"
			puts "1 -> Показать поезда с вагонами"
			puts "2 -> Добавить вагон к поезду (или несколько)"
			puts "3 -> Отцепить вагон от поезда (или несколько)"
			puts "4 -> Назад в основное меню"
			reply = gets.chomp.to_i
			if  ((reply == 1) || ( reply == 2) || (reply == 3)) && @@tr_names.empty?  				# если выбран вариант 1 или 2 или 3 и при этом у нас не создано ни одного поезда (т.е массив @@tr_names пустой)
				puts "Еще не создано ни одного поезда!"
				break
			elsif reply == 1 && !@@tr_names.empty?
				@@tr_names.map{|obj| obj.type_full }    # НУЖНО ПОКАЗЫВАТЬ И ПОЕЗДА И ВАГОНЫ!

			elsif reply == 2 && !@@tr_names.empty?
				puts "Выберите поезд из списка, чтобы добавить к нему вагон:"  						# используем метод добавления вагона к поезду add_wagon из train.rb
				@@tr_names.map{|obj| obj.type_full }
				@@tr_input = gets.chomp.to_i
				if @@tr_names.any?{|obj| obj.number == @@tr_input}                            		# если в массиве с объектами поездов есть введенный нами номер поезда
					puts "Выбран поезд №#{@@tr_input}"
					puts "Выберите вагон, который хотите добавить к поезду №#{@@tr_input}"
					puts "Доступны следующие вагоны: "
					@@wg_names.map{|obj| obj.type_full}                                     		# мне пришлось переименовать метод type (который живет в wagon.rb и отвечает за вывод инфы) в метод type_full, т.к у кажого объекта уже есть есть метод type, который мне нужен для сравнения в методе wagon_such_train?.  
					@@wg_input = gets.chomp.to_i
					@@wagon_to_add = @@wg_names.select{|obj| obj.number == @@wg_input}              # это дублируется в train # если уберу этот дубликат тут, то не сработает @@train_to_add_wagon[0].add_wagon(@@wagon_to_add[0])   # присваиваем переменной wagon_to_add значение объекта из массива с поездами, объект находим по аттрибуту -number 
					@@train_to_add_wagon = @@tr_names.select{|obj| obj.number == @@tr_input}  	    # это дублируется в train # если уберу этот дубликат тут, то не сработает @@train_to_add_wagon[0].add_wagon(@@wagon_to_add[0])      # присваиваем переменной train_to_add_wagon значение объекта из массива с поездами, объект находим по аттрибуту -number                 # ТУТ ВМЕСТО @@tr_input получаю объект из массива с поездами (@@tr_names) в котором есть обЪект с именем равным @@@tr_input! Это новая переменная @@train_to_add_wagon. Далее на нем используем метод add_wagon из train.rb											
					if !@@train_to_add_wagon.any?{|obj| obj.wagon.include?(@@wg_input)}					# проверка что поезд не содержит вагон, который мы пытаемся добавить,т.е защита от добавления того же номера вагона
						@@train_to_add_wagon[0].add_wagon(@@wagon_to_add[0])						    # т.к он заключен в массив, использовать нужно через [0], сам объект тут является первым и единственным эелементом массива
					else
						puts "Этот вагон уже добавлен к поезду!"
					end
				else
					puts "Такого поезда не существует!"
				end 
			elsif reply == 3 
				puts "Выберите поезд из списка, чтобы отцепить от него вагон:"  						# используем метод delete_wagon из train.rb, если у поезда есть вагоны
				@@tr_names.map{|obj| obj.type_full}
				tr_input = gets.chomp.to_i
				puts "Выбран поезд №#{tr_input}"
				if @@tr_names.any?{|obj| (obj.number == tr_input) }
				@@train_to_delete_wagon = @@tr_names.select{|obj| obj.number == tr_input}
					if !@@train_to_delete_wagon.any?{|obj| obj.wagon.empty?}                          # если параметр/массив @wagon (который внутри массива @@train_to_delete_wagon) не пустой. Т.е если у поезда есть вагон или вагоны  
						puts "Выберите вагон, который нужно отцепить от поезда №#{@@tr_input}"
						puts "К отцеплению доступны следующие вагоны:"                                
						@@train_to_delete_wagon.each{|obj| p obj.wagon.join(", №")}                   # тут нужно показываю не все вагоны, а только те, которые есть у выбранного поезда
						@wg_input = gets.chomp.to_i
						@@wagon_to_delete = @@wg_names.select{|obj| obj.number ==@wg_input}
						@@train_to_delete_wagon[0].delete_wagon(@@wagon_to_delete[0])                        #!!! н
					else
						puts "У поезда №#{tr_input} еще нет ни одного вагона, нечего отцеплять!"       # если у выбранного поезда нет вагонов
					end
				else
				 	puts "Такого поезда не существует!"
				end
			elsif reply == 4
				break
			else
				puts "Выберите 1, 2, 3, или 4"	
			end
	end



end

    # def wagon_such_train?             								# метод проверяет принадлежность типа вагона к типу поезда. Результатом является булове значение (true или false)
    #   @@wagon_to_add[0].type == @@train_to_add_wagon[0].type  		# где к примеру @@wagon_to_add[0].type => :passenger и @@train_to_add_wagon[0].type тоже => :passenger
    # end
# wagon_1 = Wagon.new(1, :passenger)
# train1.add_wagon(wagon1)
=end


#<================== Проверка while choice == 6 Перегон поездов из main_temp.rb ===================>
=begin
require_relative 'C:\Users\gz7n3r\Desktop\PROGS\work\RoR_from_zero\Lesson4\Task\train.rb'
require_relative 'C:\Users\gz7n3r\Desktop\PROGS\work\RoR_from_zero\Lesson4\Task\railway_station.rb'
require_relative 'C:\Users\gz7n3r\Desktop\PROGS\work\RoR_from_zero\Lesson4\Task\route.rb'

#class Moving < Train
=begin	def move_choosen_train
		#choosen_train = @@tr_names.find{|obj| obj.number == 1}  #находим в массиве имен поездов объект с номером, котор соответствует нашему вводу, присваиваем этот объект (поезд) переменной ct
		choosen_train = @@tr_names.find{|obj| obj.number == @st_input}   # ct -> choosed train
		@@tr_names.find{ |obj| puts obj }
		#puts choosen_train
		#choosen_train.move("Rakka")
		choosen_train.move(@st_input)
	end

#end

@st_names = []
@@tr_names = []
@st_names << RailwayStation.new("Rakka")
@@tr_names << Train.new(1, :cargo)
#choosen_train = nil
#move_choosen_train

#def take_route(station)
#		@station = station
#		puts "Поезд №#{@number} готов отправиться со станции #{@station.first} на станцию #{@station.last}"
#	end

# @@tr_names 
# @st_names
#=begin
if @@tr_names.empty? == false  			# проверка, что в списке есть поезда
				puts " => выберите поезд из списка"		#(показываем список поездов и на какой они сейчас станции)
				@@tr_names.each{|obj| puts obj.number}
				@@@tr_input = gets.chomp.to_i
				puts @@@tr_input   				# @@tr_input - пользовательский ввод
				if @@tr_names.any?{ |obj| obj.number == @@@tr_input } # Если введенный номер поезда относится к существующим поездам
					puts "Выбран поезд #{@@@tr_input}"
					puts "Выберите станцию назначения из списка ниже: "   # ВМЕСТО ВОТ ЭТОГО ВСЕГО -НАПИСАТЬ МЕТОД И ВЫЗЫВАТЬ ЕГО!
					@st_names.map{|obj| puts obj.name}
					@st_input = gets.chomp.to_s
					if @st_names.any?{|obj| obj.name == @st_input}   # проверку станции опустим позже, у нас это есть в самом методе move 
						puts "Двигаемся на станцию #{@st_input}"					#@@@tr_input.move(st_input)  ТУТ ВМЕСТО @@tr_input нужно получать объект! ЭТО obj????# то используем метод move (из train.rb)  для перегона на соответствующую станцию.
						choosen_train = @@tr_names.find{|obj| obj.number == @@@tr_input}
						p choosen_train
						choosen_train.move(@st_input)  #в методе move ()                                 #p @st_input #move(@st_input) #@@tr_names.find{ |obj| obj.number == st_input} # нужен метод, который вытаскивает объект поезда по его номеру
					else															
						puts Такой станции не существует!
					end
				else
					puts "Такого поезда не существует!"
					p @@tr_names.last.number.class
				end 
else 
	puts " => Еще не создано ни одного поезда!"
end 

=end

=begin
#<=============================== Готовый метод для пункта меню № 6.3 =====================================================>
# Поезд должен не просто отправляться на станцию, нужно проверять что он не находится на какой-либо еще станции
# и если находится, нужно его удалить с той тсанции и отправить на новую

#=begin   готовый метод перемещения поездов между станциями!  Где станция @station - ключ, @number поезд - значение. Причем значение это массив и таким образом у одной станции может быть несколько поездов.  
class Check
	
	@@st_and_tr = {}                                                                                                          # @@st_and_tr переменная класса Check хранит массив всех хешей. class variable to use it within whole class, not just instances. Because there’s only one copy of a class variable shared by all instances of a class

	def move_to_st(station, number)  
		@station = station.to_sym
		@number = number
		@current_st = @@st_and_tr.detect{ |key, value| value.include?(@number)}												  # @current_st необходима, чтобы знать текущую станцию на котрой находится поезд @number, если он существует
	    
	    if @@st_and_tr.empty?                                                                                                 # 1. Если еще ничего не было записано. Если хеш @@st_and_tr еще пустой
	        @@st_and_tr[@station] = [@number]                                                                                   #  Добавляем хеш {@station => [@number]} в массив хешей @@st_and_tr. Этот способ (@@hash[@key] = [@value]) создания хеша и добавления его в массив есть в файле railway_station                         
	        puts "Первый поезд №#{@number} приехал на первую станцию #{@station}"
	    elsif @@st_and_tr.any?{|key, value| key == @station && value.include?(@number)}                                       # 2. Если в этом объекте уже есть станция @station с номером @number. Т.е при такой попытке отправить поезд на станцию на которой он уже находится - выдаем сообщение поезд уже на этой станции 
	    	puts "Поезд №#{@number} уже находится на станции #{@station}!"
	    elsif @@st_and_tr.keys.any?{|key| key == @station } && @@st_and_tr.values.any?{|val| val.include?(@number)}           # 3. Если такая станция @station отдельно существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number существует в какой-либо из пар в массиве @@st_and_tr
	        puts "Поезд №#{@number} отправляется со станции #{ @current_st[0] } на станцию #{@station}"                        
			@@st_and_tr[@current_st[0]].delete(@number) 																		# Т.к в этом случае поезд отбывает с одной станции и прибывает на другую. Удаляем его с текущей станции @current_st
			@@st_and_tr[@station] << @number                                                                                    # и добавляем поезд @number к уже существующей станции @station. 
	        puts "Поезд №#{@number} отбыл со станции #{@current_st[0]} и прибыл на станцию #{@station}"
	        p @@st_and_tr
	    elsif @@st_and_tr.keys.any?{|key| key == @station} && @@st_and_tr.values.any?{|val| val.include?(@number)} == false   # 4. Если такая станция @station отдельно существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number НЕ существует в какой-либо из пар в массиве @@st_and_tr
	    	@@st_and_tr[@station] << @number                        															#  то сразу добавляем поезд @number к уже существующей станции @station. Т.к поезд новый и нигде его еще не было.			
	    	puts "Еще один поезд под номером #{@number} приехал на станцию #{@station}"
	    	p @@st_and_tr
	    elsif @@st_and_tr.keys.any?{|key| key != @station} && @@st_and_tr.values.any?{|val| val.include?(@number)}			  # 5. Если такая станция @station отдельно НЕ существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number существует в какой-либо из пар в массиве @@st_and_tr	
	    	puts "Поезд №#{@number} отправляется со станции #{@current_st[0]} на станцию #{@station}"                           
	    	@@st_and_tr[@current_st[0]].delete(@number)                                                                         # Т.к в этом случае поезд отбывает с одной станции и прибывает на НОВУЮ. Удаляем его с текущей станции @current_st
	    	@@st_and_tr[@station] = [@number]  																					# и т.к раньше такая станция не существовала, добавляем в массив @@st_and_tr новый хеш с поездом @number и станцией @station
	    	puts "Поезд №#{@number} отбыл со станции #{@current_st[0]} и прибыл на новую станцию #{@station}"
	    	p @@st_and_tr
	    else #@@st_and_tr.keys.any?{|key| key != @station} && @@st_and_tr.values.any?{|val| val.include?(@number) == false}	  # 6. Очевидно что остался последний возможный вариант, который засунем в else, закоментил для большего понимания того, что происходит															
	    	@@st_and_tr[@station] = [@number]                                                                                   # А именно - Если такая станция @station отдельно НЕ существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number НЕ существует в какой-либо из пар в массиве @@st_and_tr
	    	puts "Новый поезд №#{@number} приехал на новую станцию #{@station}"													# то это хеш из новой станции и нового поезда! Его создаем и добавляем уже известным методом @@hash[@key] = [@value]  
	    	p @@st_and_tr
	    end
	end

end

# создаем объект
train1 = Check.new()    # если к примеру объект поезда не будет получать номер поезда от пользователя при вводе, или я ошибусь @number вместо @number
train2 = Check.new()     # будет выведено значение по умолчанию, а именно номер поезда - 10. По Сути в параметр Check.new() можно остовить пустым
train3 = Check.new()
train4 = Check.new()
train5 = Check.new()
train6 = Check.new()
train7 = Check.new()
train8 = Check.new()
train9 = Check.new()
train10 = Check.new()
train11 = Check.new()
train12 = Check.new()
train13 = Check.new()
train14 = Check.new()
train15 = Check.new()
train16 = Check.new()
train17 = Check.new()

# вызываем на объекте метод move_to_st
train1.move_to_st('b',2)    
train2.move_to_st('b',3)
train3.move_to_st('b',8)
train4.move_to_st('b',8)
train5.move_to_st('c',12)
train6.move_to_st('c',13)
train7.move_to_st('c',13)
train8.move_to_st('d',5)
train9.move_to_st('c',2)   # первая попытка добавить поезд который уже есть на станции b
train10.move_to_st('a',2)
train11.move_to_st('a',2)
train12.move_to_st('e',15)
train13.move_to_st('d',6)
train14.move_to_st('d',2)
train15.move_to_st('a',2)
train16.move_to_st('a',13)
train17.move_to_st('o',12)
train6.move_to_st('c',3)
train6.move_to_st('c',8)
train6.move_to_st('f',29)
train6.move_to_st('b',11)
train6.move_to_st('b',1)
=end



# Тот же метод но с третьим параметром (type) тип поезда (НЕ СДЕЛАНО)
#=begin
#<=============================== Готовый метод для пункта меню № 6.3 =====================================================>
# Поезд должен не просто отправляться на станцию, нужно проверять что он не находится на какой-либо еще станции
# и если находится, нужно его удалить с той тсанции и отправить на новую

=begin   готовый метод перемещения поездов между станциями!  Где станция @station - ключ, @number поезд - значение. Причем значение это массив и таким образом у одной станции может быть несколько поездов.  
class Check
	
	@@st_and_tr = {}                                                                                                          # @@st_and_tr переменная класса Check хранит массив всех хешей. class variable to use it within whole class, not just instances. Because there’s only one copy of a class variable shared by all instances of a class

	def move_to_st(station, number)  
		@station = station.to_sym
		@number = number
		@current_st = @@st_and_tr.detect{ |key, value| value.include?(@number)}												  # @current_st необходима, чтобы знать текущую станцию на котрой находится поезд @number, если он существует
	    
	    if @@st_and_tr.empty?                                                                                                 # 1. Если еще ничего не было записано. Если хеш @@st_and_tr еще пустой
	        @@st_and_tr[@station] = [@number]                                                                                   #  Добавляем хеш {@station => [@number]} в массив хешей @@st_and_tr. Этот способ (@@hash[@key] = [@value]) создания хеша и добавления его в массив есть в файле railway_station                         
	        puts "Первый поезд №#{@number} приехал на первую станцию #{@station}"
	    elsif @@st_and_tr.any?{|key, value| key == @station && value.include?(@number)}                                       # 2. Если в этом объекте уже есть станция @station с номером @number. Т.е при такой попытке отправить поезд на станцию на которой он уже находится - выдаем сообщение поезд уже на этой станции 
	    	puts "Поезд №#{@number} уже находится на станции #{@station}!"
	    elsif @@st_and_tr.keys.any?{|key| key == @station } && @@st_and_tr.values.any?{|val| val.include?(@number)}           # 3. Если такая станция @station отдельно существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number существует в какой-либо из пар в массиве @@st_and_tr
	        puts "Поезд №#{@number} отправляется со станции #{ @current_st[0] } на станцию #{@station}"                        
			@@st_and_tr[@current_st[0]].delete(@number) 																		# Т.к в этом случае поезд отбывает с одной станции и прибывает на другую. Удаляем его с текущей станции @current_st
			@@st_and_tr[@station] << @number                                                                                    # и добавляем поезд @number к уже существующей станции @station. 
	        puts "Поезд №#{@number} отбыл со станции #{@current_st[0]} и прибыл на станцию #{@station}"
	        p @@st_and_tr
	    elsif @@st_and_tr.keys.any?{|key| key == @station} && !@@st_and_tr.values.any?{|val| val.include?(@number)} #== false   # 4. Если такая станция @station отдельно существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number НЕ существует в какой-либо из пар в массиве @@st_and_tr
	    	@@st_and_tr[@station] << @number                        															#  то сразу добавляем поезд @number к уже существующей станции @station. Т.к поезд новый и нигде его еще не было.			
	    	puts "Еще один поезд под номером #{@number} приехал на станцию #{@station}"
	    	p @@st_and_tr 
	    	p"отооно где"
	    elsif @@st_and_tr.keys.any?{|key| key != @station} && @@st_and_tr.values.any?{|val| val.include?(@number)}			  # 5. Если такая станция @station отдельно НЕ существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number существует в какой-либо из пар в массиве @@st_and_tr	
	    	puts "Поезд №#{@number} отправляется со станции #{@current_st[0]} на станцию #{@station}"                           
	    	@@st_and_tr[@current_st[0]].delete(@number)                                                                         # Т.к в этом случае поезд отбывает с одной станции и прибывает на НОВУЮ. Удаляем его с текущей станции @current_st
	    	@@st_and_tr[@station] = [@number]  																					# и т.к раньше такая станция не существовала, добавляем в массив @@st_and_tr новый хеш с поездом @number и станцией @station
	    	puts "Поезд №#{@number} отбыл со станции #{@current_st[0]} и прибыл на новую станцию #{@station}"
	    	p @@st_and_tr
	    else #@@st_and_tr.keys.any?{|key| key != @station} && @@st_and_tr.values.any?{|val| val.include?(@number) == false}	  # 6. Очевидно что остался последний возможный вариант, который засунем в else, закоментил для большего понимания того, что происходит															
	    	@@st_and_tr[@station] = [@number]                                                                                   # А именно - Если такая станция @station отдельно НЕ существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number НЕ существует в какой-либо из пар в массиве @@st_and_tr
	    	puts "Новый поезд №#{@number} приехал на новую станцию #{@station}"													# то это хеш из новой станции и нового поезда! Его создаем и добавляем уже известным методом @@hash[@key] = [@value]  
	    	p @@st_and_tr
	    end
	end

end

# создаем объект
train1 = Check.new()    # если к примеру объект поезда не будет получать номер поезда от пользователя при вводе, или я ошибусь @number вместо @number
train2 = Check.new()     # будет выведено значение по умолчанию, а именно номер поезда - 10. По Сути в параметр Check.new() можно остовить пустым
train3 = Check.new()
train4 = Check.new()
train5 = Check.new()
train6 = Check.new()
train7 = Check.new()
train8 = Check.new()
train9 = Check.new()
train10 = Check.new()
train11 = Check.new()
train12 = Check.new()
train13 = Check.new()
train14 = Check.new()
train15 = Check.new()
train16 = Check.new()
train17 = Check.new()

# вызываем на объекте метод move_to_st
train1.move_to_st('b',2)    
train2.move_to_st('b',3)
train3.move_to_st('b',8)
train4.move_to_st('b',8)
train5.move_to_st('c',12)
train6.move_to_st('c',13)
train7.move_to_st('c',13)
train8.move_to_st('d',5)
train9.move_to_st('c',2)   # первая попытка добавить поезд который уже есть на станции b
train10.move_to_st('a',2)
train11.move_to_st('a',2)
train12.move_to_st('e',15)
train13.move_to_st('d',6)
train14.move_to_st('d',2)
train15.move_to_st('a',2)
train16.move_to_st('a',13)				
train17.move_to_st('o',12)
train6.move_to_st('c',3)
train6.move_to_st('c',8)
train6.move_to_st('f',29)
train6.move_to_st('b',11)
train6.move_to_st('b',1)
=end

=begin
@st_names = [#<RailwayStation:0x00000000050d2708 @name="a", @trains={}>, #<RailwayStation:0x00000000050d2460 @name="b", @trains={}>]
@@tr_names = [#<Train:0x00000000050d1c90 @type=:passenger, @number=1, @speed=0, @wagon=[], @route=[], @station=:a, @current_st=[:a, [1]]>, #<Train:0x00000000050d18f8 @type=:cargo, @number=2, @speed=0, @wagon=[], @route=[], @station=:b, @current_st=nil>]
=end


=begin # ВОТ КАК ДОСТАВАТЬ КЛЮЧ ПО ЗНАЧЕНИЮ, ЕСЛИ ЗНАЧЕНИЕ ЯВЛЯЕТСЯ МАССИВОМ или его частью!
@h = { :a=>[2, 3, 8], :b=>[12, 13], :c=>[5]}
@letter = :n
@num = 3

@current_v = @h.detect{|k,v| v.include?(@num)}
#p @current_v

# if @h.any?{|k,v| v.include?(@num)}
# 	puts "Key #{@current_v[0]} already including num #{@num} !"
# else 
# 	puts "No value include #{@num} in h !"
# end 

#=begin
## Что тут происходит. Есть хеш с хешами. В нем у каждого ключа есть массив со значениями. 
# У нас условие, если пользователь пытается добавить к одному из существующих ключей просто новое значение, то оно добавляется, если его еще нет в другом хеше.
# Если значение уже есть, то оно удаляется у текущего ключа и добавляется в заданное.
# Если пользователь добавялет не только новое значение, но и новый ключ, то образутся новый хеш, который добавляется в основной хеш с хешами.  
# ВАЖНО! метод << работает только если эта станция уже существует в общем массиве @h
 # если станция не существует, а создается параллельно с добавлением, нужно использовать store или =
if @h.any?{|k,v| v.include?(@num)} # если номер поезда есть в значениях общего массива @h
	puts "было #{@h}"
	puts "Убираем поезд #{@num} со станции #{@current_v[0]} и добавляем его на станцию #{@letter}"
	@h[@current_v[0]].delete(@num)
	if @h.any?{|k,v| k == @letter}   # если такая станция уже существует, 
		@h[@letter] << @num								# то просто добавляем к ней поезд, который перед этим убрали с предыдущей станции            
		puts "Вот что вышло #{@h}"
	else                             # если станция еще не существует, используем метод добавления в хеш =
		@h[@letter] = @num
		puts "Вот что вышло #{@h}"
	end
else
	puts "Чето пошло не так"
end
=end
# @@st_and_tr[@station] = [@number]                       
# @@st_and_tr.store( @station, [@number] )

=begin
	
=end

=begin
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select{ |obj| obj.is_a? Integer }
puts ints
# ==> [42, 3, 19]
=end


=begin
h = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
p h.key(200)   #=> "b"
h.key(300)   #=> "c"
h.key(999)   #=> nil
=end

=begin
st1 = 'a'
st2 = 'b'
tr1 = 1 
tr2 = 2
tr3 = 3
st_and_tr = {}
st_and_tr.store( st1, [tr1])
st_and_tr.store(st2, [tr3])
st_and_tr['a'] << tr2

p st_and_tr

=begin
if st_and_tr.has_key?('v')
	puts 'We got key'
elsif st_and_tr.has_value?([2])
	puts 'We got value'
else
	puts 'Nope'
end
=end

=begin
if st_and_tr.any?{ |key, value| key.eql?('a') && value.include?(4) == false}    # если такая станция и номер уже есть
	puts "We got {a => 1}"
else
	puts "nope!"
end
=end

=begin
if st_and_tr.any?{ |key, value| key =! nil && value.include?(2)  }
	puts "We got it"
	st_and_tr['a'].delete(2)
	st_and_tr['b'] << 2
	puts st_and_tr
else
	puts 'nope'
end
=end


=begin
h = { "a" => 100, "b" => 200, "c" => 300 }
h.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}
=end


=begin
h = { "a" => 100, "b" => 200 }
h.delete("a")                              #=> 100
h.delete("z")                              #=> nil
h.delete("z") { |el| "#{el} not found" }   #=> "z not found"
=end


=begin
clients = {
  "yellow"=>{"client_id"=>"2178"}, 
  "orange"=>{"client_id"=>"2180"}, 
  "red"=>{"client_id"=>"2179"}, 
  "blue"=>{"client_id"=>"2181"}
}

p clients
=end

=begin
####  (obj) → an_array or nil
# See also Array#rassoc.
a = {1=> "one", 2 => "two", 3 => "three", "ii" => "two"}
p
if a.rassoc("two") == compare
	puts "fuck yeah!"
else
	puts "Nope!"
end

#a.rassoc("four")   #=> nil
=end


#=begin
# вариант с вложенным хешем
#st_and_tr = { a: [1,2,3] }   # как не в ручную можно добавлять в 
#st_and_tr[:a] << 4           #добавляем значение
#p st_and_tr                  # получаем значение
#=end

=begin
#arr = []
st_and_tr =  {}    #Hash.new{|key, value| key.to_sym, value = []}
st_and_tr.store('a', [2])
p st_and_tr
st_and_tr['a'] << 4
p st_and_tr
st_and_tr.store('b', [3])
p st_and_tr
=end



#st_and_tr = {"stations" => {a: 1}}
#st_and_tr["stations"][:a] #<< 2
#puts st_and_tr




#st_and_tr = { a: [1,2,3] }
#p st_and_tr[:a][0]



#find key where value == 2



#hash = Hash.new { |hash, key| hash[key] = [] }
#raw_data = [ [1, 'a'], [1, 'b'], [1, 'c'],
#	 [2, 'a'], [2, ['b', 'c']],
#	 [3, 'c'] ]
#raw_data.each { |x,y| hash[x] << y }
#hash
#{ |x,y| hash[x] << y }


# пример добавления хеша
=begin
names = Hash.new
names.store(1, "Jane")
names.store(2, "Thomas")
names.store(3, "Rebecca")

names[1] << ("Doe")
puts names
=end

# просто пример
=begin
h = { "a" => 100, "b" => 200 }
h["a"] = 9
h["c"] = 4
h   #=> {"a"=>9, "b"=>200, "c"=>4}
h.store("d", 42) #=> 42
=end

# вариант без вложенного хеша***************
=begin
st_and_tr = {:b => 2}
st_and_tr[:c] = 3
st_and_tr[:c] = 4
p st_and_tr
if st_and_tr.any?{ |key, value| key == :a && value == 1  }     #нужно учесть сценарий одинаковых станций, но разных поездов (одной станции с несколькими поездами), т.к сейчас при добавление поезда к станции которая уже есть - значения перезаписываются
	puts "Поезд №1 уже находится на станции 'а' !"              # для этого значения станций будут вложенным хешем прим. {:a => {1,2,3}} где а станция, 123 поезда
else 
	st_and_tr[:a] = 1
	st_and_tr.each{|key,value| puts "Станция: #{key}, Поезд: #{value}" }
end
#p st_and_tr
#puts "На станции "st_and_tr.keys

#hash = {:item1 => 1}
#hash[:item2] = 2
=end

#<======================================================================================>

#<================== Проверка while choice == 2 Создание маршрута из main_temp.rb ===================>
#require_relative 'route.rb'
#require_relative 'train.rb'
#require_relative 'railway_station.rb'

#@routes_names = []
#@st_names = []
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
=begin
require_relative 'route.rb'
require_relative 'train.rb'
require_relative 'railway_station.rb'

@routes_names = []

@st_names = []
@routes = []
@@tr_names = []	

	@st_names << RailwayStation.new('A')
	@st_names << RailwayStation.new('B')
	@routes << Route.new(['A', 'B'])
	@@tr_names << Train.new(1, :passenger)
	@@tr_names << Train.new(2, :passenger)
	@@@tr_input = 2
	p @routes
	#p @@tr_names
	#p @@tr_names.select{ |obj| obj.number == @@@tr_input}
	train_to_move = @@tr_names.select{ |obj| obj.number == @@@tr_input}
    

    #train_to_move[0].move_to_st('A')                                       # индекс [0] пришлось использовать потому как select возвращает объект а не массив находящийся в объекте
    train_to_move[0].move('B')

=end

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

=begin
# можно при создании объекта через initialize, сразу складывать только что созданный объект в массив.
# для этого этот массив нужно объявить тут-же, присвоив переменной класса @@stantions = [], и дальше складывать  @@stantions таким образом избавлюсь от кучи действий в main

class RailwayStation
  # include InstanceCounter
  attr_reader :name, :trains
  @@stations = []
  # Имеет название, которое указывается при ее создании
  def initialize(name)
    @name = name
    @trains = []
    @@stations << self
    # register_instance
  end

  def self.all
  	puts "Доступны следующие станции:"
    @@stations.each{|obj| puts obj.name}
  end

  
  # Может принимать поезда (по одному за раз)
  def train_arrive(train)
    @trains << train    
  end

  # Может показывать список всех поездов на станции, находящиеся в текущий момент
  # Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
  def get_trains(type=nil)
    
    if type.nil?
      @trains.each do |train|
        puts train
      end
    else
      @trains.each do |train|
        puts train if train.class == type
      end
    end
  end

  # Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).
  def train_leave(train)
    @trains.delete(train)
end
  
  
end

st = RailwayStation.new("Tash")
st2 = RailwayStation.new("Yangiyul")
# puts st

RailwayStation.all
=end

# class Train
# 	attr_reader :speed, :wagons, :current_station

# 	@@trains = {}
# 	@@inst = 0

# 	def initialize_wagons
# 		@wagons  << Wagon.new
# 	end  

# 	def initialize(wagons, station)
# 		@speed = 0
# 		@wagons = []

# 		wagons.times{initialize_wagons}
# 		@current_station = station
# 		station.train_arrive(self)
# 		@@trains[@@trains.length + 1] = self

# 		register_instance 
# 	end 
# end

# tr1 = Train.new(1, 'VOZ')


# иной метод работы с объектом
	# class Computers

	# 	def self.description
	# 		puts "Laptop"
	# 	end
	# end


	# # nettop = Computers.new
	# # nettop.description

	# Computers.description

# тернарный оператор
	a,b,c = nil,2,3     #параллельное присваивание
	# p a,b,c

	p a ? b : c  #если a true то верни b иначе верни с


