require_relative 'train.rb'
require_relative 'train_passenger.rb'
require_relative 'train_cargo.rb'

require_relative 'route.rb'
require_relative 'railway_station.rb'

require_relative 'wagon.rb'
require_relative 'wagon_cargo.rb'
require_relative 'wagon_passenger.rb'

require_relative 'module_manufacturer.rb'

# <============================================== Интерфейс пользователя! ==========================================================>
class Menu < Train
# include Manufacturer  он уже подключен в Train, от которого наследует Menu
@st_names = []                #1 stations_names массив в котором храним объекты с именами станций при выборе 1
@@tr_names = []                #3 массив в котором храним объекты с именами поездов при выборе 3
#@@st_and_tr = []               #6 массив хешей содержащий станции и поезда
#@routes_names = []           # 2 
@routes = []                  # 2
@@wg_names = []               # 4

 
loop do
	puts "<===================== Основное Меню ===========================>"
	puts "\n"
	puts "1 -> Создать станцию \n"
	puts "2 -> Создать маршрут \n"
	puts "3 -> Создать поезд \n"                # возможен вариант с типом и количеством поездов
	puts "4 -> Добавить или отцепить вагон \n"      # может показать существующие поезда (номер, тип и на какой станции ) на всех станциях
	puts "5 -> Перегнать поезд на станцию \n"
	puts "6 -> Показать список станций с поездами \n"
	puts "7 -> Выход \n"   
	puts "\n"
	choice = gets.chomp.to_i
	break if choice == 7    

	while choice == 1                          # Позже нужно реализовать возможность удаления станции
		puts "<===================== Создание/просмотр станций =========================>"
		puts "Введите название станции, или 1 -> для возврата в основное меню \n"
		station_name_input = gets.chomp.strip.to_s      # strip отсекает пробелы, теперь не нужно городить проверку ввода пробела ниже
		break if station_name_input == "1"
		if (station_name_input.empty? == true) # проверяем что ввод не пуст
			puts "Имя не может быть пустым!"
		elsif @st_names.any?{|obj| obj.name == station_name_input}             # @st_names - массив с объектами, проверяем не вводит ли пользователь имя станции, которе уже принадлежит какому либо из объектов в массиве.  тут использовано any?, а не each потому что each всегда выдает true, а нам нужно enaumerable https://stackoverflow.com/questions/57623915/ruby-lang-how-to-check-string-exists-in-name-attribute-of-objects-in-array
			puts "Станция с именем #{station_name_input} уже существует! \n"
		else 
			@st_names << RailwayStation.new(station_name_input)   # добавляем в массив @st_names станцию, объект которой каждый раз новый, имя станции зависит от ввода пользователя
			puts "Всего станций создано: #{@st_names.length}"      # здесь покажем количество значений всех хешей массива @st_names(не получалось эту и следующую строки вывести в одной строке, надо попробоваать чере)
			@st_names.map{ |obj| puts obj.name }                    # имя станции вывел с помощью attr_accessor :name в шапке файла railway_station.rb   Читать можно тут: https://www.ruby-lang.org/ru/documentation/quickstart/3/
		end
	end

#<======================= Этот пункт меню умеет 1. создать маршрут
#                                               2. показать все маршруты
#                                               3. проверить что не добавляется уже существующий маршрут
#                                               4. проверку ввода пользователя для навигации по меню ========================>
	while choice == 2
		puts "<===================== Создание/просмотр маршрутов =========================>"
		puts "1 -> создать маршрут\n2 -> показать список существующих маршрутов\n3 -> для возврата в основное меню"
		input = gets.chomp.to_i
		if input == 1
			puts 'Доступны следующие станции:'
			@st_names.map{ |obj| puts obj.name }
			puts '<===========================>'
			st_names_only = []                                 # новый локальный массив специально для имен станций
			@st_names.each{|obj| st_names_only << obj.name}     # перекидываем имена объектов массива @st_names в новый массив st_names_only. Т.е st_names_only будет содержать только имена, чтобы ниже было легко проверять содежржимое одного массива в другом
			station_name_input_1 = gets.chomp.strip.to_s               # !!! Нужно изменить на произвольное колл-во станций в маршруте, вместо двух
			break if station_name_input_1 == '3'
			station_name_input_2 = gets.chomp.strip.to_s                # проверка ввода количества станций у нас есть в методе initialize файла route.rb
			break if station_name_input_2 == '3'						
			if @routes.any?{|obj| obj.stations == [station_name_input_1, station_name_input_2]}  # проверка того, что пользователь не создает уже существующий маршрут. Заглядываем в каждый объект в массиве @routes, нас интересует там вложенный массив @stations, который является частью каждого объекта и содержит имена станций (2 шт) 
				puts "Такой маршрут уже существует!"
			elsif st_names_only.include?(station_name_input_1 && station_name_input_2) # КАК ЗДЕСЬ ИСПОЛЬЗОВАТЬ @st_names вместо st_names_only?   @st_names_only - массив только с именами, проверяем что пользователь вводит существующее имя станции, которое в свою очередь принадлежит аттрибуту @name какого либо из объектов в массиве @st_names.  тут использовано any?, а не each потому что each всегда выдает true, а нам нужно enaumerable https://stackoverflow.com/questions/57623915/ruby-lang-how-to-check-string-exists-in-name-attribute-of-objects-in-array
				@routes << Route.new([station_name_input_1, station_name_input_2])                            # в качестве параметра тут передается массив с двумя станциями/ каждый новый маршрут - это новый объект
				puts "Всего маршрутов создано: #{@routes.length}" 								# !!! Нужно добавиь проверку того что такого маршрута еще нет	
			else
				puts 'Станция с таким именем еще не создана!'
			end
		elsif input == 2
			if @routes.empty?                                 # на случай если ни одного маршрута еще не создано
				puts "Пока не создано ни одного маршрута"
			else
				@routes.each{|obj| obj.list }                 # пробегаем по каждому объекту (в массиве @routes) содержащему массив с именами первой и последней станции, используем метод list из route.rb
			end
		elsif input == 3
			break
		else
			puts 'Введите 1,2 или 3'
		end
	end


	while choice == 3
		puts "Какой тип поезда необходимо создать?"
		puts "1 -> пассажирский"
		puts "2 -> грузовой"
		puts "3 -> назад в основное меню"
		train_type = gets.chomp.to_i
		Manufacturer.set # тут вызываем метод set из модуля Manufacturer файла module_manufacturer.rb
		if train_type == 1 && @@tr_names.empty? #== true   # если выбрано 1 и это первый поезд, т.е в массиве @@tr_names еще нет ни одной записи. Убрал true - это излишне.
			@@tr_names << Train.new(1, :passenger, @manuf_name)            # то просто закидываем в массив пассажирский поезд под номером 1
		elsif train_type == 1 && !@@tr_names.empty? #== false 	 # если выбрано 1 и в массиве уже не пусто. Заменил false на ! перед выражением  @@tr_names.empty. ! означет not
			@@tr_names << Train.new(@@tr_names.last.number + 1, :passenger)   # то закидывем в массив пассажирский поезд, создавая ему номер на основе номера последнего поезда в массиве +1. номер поезда вывел с помощью attr_accessor :number в шапке файла train.rb 
		elsif train_type == 2 && @@tr_names.empty? == true                   # здесь бы proc запилить чтоб не повторяться, но это не критично вродь
			@@tr_names << Train.new(1, :cargo)
		elsif train_type == 2 && @@tr_names.empty? == false
			@@tr_names << Train.new(@@tr_names.last.number + 1, :cargo)
		elsif train_type == 3
			break                                   #возвращаемся в основное меню
		else
			puts "Можно выбрать только 1 -> пассажирский  или 2 -> грузовой"
		end
	end

#=begin

	while choice == 4
			puts "<================ Добавлнение/удаление вагона к поезду ================>"
			puts "1 -> Показать поезда с вагонами"
			puts "2 -> Создать вагон"
			puts "3 -> Добавить вагон к поезду (или несколько)"
			puts "4 -> Отцепить вагон от поезда (или несколько)"
			puts "5 -> Назад в основное меню"
			reply = gets.chomp.to_i
			if  ((reply == 1) || ( reply == 2) || (reply == 3)) && @@tr_names.empty?  				# если выбран вариант 1 или 2 или 3 и при этом у нас не создано ни одного поезда (т.е массив @@@tr_names пустой)
				puts "Еще не создано ни одного поезда!"
				break
			elsif reply == 1 && !@@tr_names.empty?
				@@tr_names.map{|obj| obj.type_full }    						#!!!! НУЖНО ПОКАЗЫВАТЬ И ПОЕЗДА И ВАГОНЫ а не только поезда!
			elsif reply == 2
				while reply == 2	                                            # нужно чтобы зациклить создание вагонов, чтобы каждый раз не заходить в меню создания для каждого нового вагона
					puts "Какой тип вагона необходимо создать?"
					puts "1 -> пассажирский"
					puts "2 -> грузовой"
					puts "3 -> назад в основное меню"
					wagon_type = gets.chomp.to_i
					break if wagon_type == 3
					if wagon_type == 1 && @@wg_names.empty?  											# если выбрано 1 и это первый вагон, т.е в массиве @@wg_names еще нет ни одной записи.
						@@wg_names << Wagon.new(1, :passenger)            								# то просто закидываем в массив пассажирский вагон под номером 1
					elsif wagon_type == 1 && !@@wg_names.empty? 	 									# если выбрано 1 и в массиве уже не пусто. Заменил false на ! перед выражением  @@tr_names.empty. ! означет not
						@@wg_names << Wagon.new(@@wg_names.last.number + 1, :passenger)   				# то закидывем в массив пассажирский поезд, создавая ему номер на основе номера последнего поезда в массиве +1. номер поезда вывел с помощью attr_accessor :number в шапке файла train.rb 
					elsif wagon_type == 2 && @@wg_names.empty?                   						# здесь бы proc запилить чтоб не повторяться, но это не критично вродь
						@@wg_names << Wagon.new(1, :cargo)
					elsif wagon_type == 2 && !@@wg_names.empty?
						@@wg_names << Wagon.new(@@wg_names.last.number + 1, :cargo)
					elsif wagon_type == 3
						break                                   										#возвращаемся в предыдущее меню
					else
						puts "Можно выбрать только 1 -> пассажирский  или 2 -> грузовой"
					end
				end

			elsif reply == 3 && @@wg_names.empty?
					puts "Еще не создано ни одного вагона!"
			elsif reply == 3 && !@@tr_names.empty?
				puts "Выберите поезд из списка, чтобы добавить к нему вагон:"  						# используем метод добавления вагона к поезду add_wagon из train.rb
				@@tr_names.map{|obj| obj.type_full }
				@@tr_input = gets.chomp.to_i
				if @@tr_names.any?{|obj| obj.number == @@tr_input}                            		# если в массиве с объектами поездов есть введенный нами номер поезда
					puts "Выбран поезд №#{@@tr_input}"
					puts "Выберите вагон, который хотите добавить к поезду №#{@@tr_input}"
					puts "Доступны следующие вагоны: "
					@@wg_names.map{|obj| obj.type_full}                                     		# мне пришлось переименовать метод type (который живет в wagon.rb и отвечает за вывод инфы) в метод type_full, т.к у кажого объекта уже есть есть метод type, который мне нужен для сравнения в методе wagon_such_train?.  
					# wagon1 = Wagon.new(55, :passenger)                                            # !!! мне тут вагоны нужно автоматически создавать через Wagon.new и класть их в @@wg_names
					@@wg_input = gets.chomp.to_i
					@@wagon_to_add = @@wg_names.select{|obj| obj.number == @@wg_input}              # это дублируется в train # если уберу этот дубликат тут, то не сработает @@train_to_add_wagon[0].add_wagon(@@wagon_to_add[0])   # присваиваем переменной wagon_to_add значение объекта из массива с поездами, объект находим по аттрибуту -number 
					@@train_to_add_wagon = @@tr_names.select{|obj| obj.number == @@tr_input}  	    # это дублируется в train # если уберу этот дубликат тут, то не сработает @@train_to_add_wagon[0].add_wagon(@@wagon_to_add[0])      # присваиваем переменной train_to_add_wagon значение объекта из массива с поездами, объект находим по аттрибуту -number                 # ТУТ ВМЕСТО @@tr_input получаю объект из массива с поездами (@@@tr_names) в котором есть обЪект с именем равным @@@tr_input! Это новая переменная @@train_to_add_wagon. Далее на нем используем метод add_wagon из train.rb											
					if !@@train_to_add_wagon.any?{|obj| obj.wagon.include?(@@wg_input)}					# проверка что поезд не содержит вагон, который мы пытаемся добавить,т.е защита от добавления того же номера вагона
						@@train_to_add_wagon[0].add_wagon(@@wagon_to_add[0])						    # т.к он заключен в массив, использовать нужно через [0], сам объект тут является первым и единственным эелементом массива
					else
						puts "Этот вагон уже добавлен к поезду!"
					end
				else
					puts "Такого поезда не существует!"
				end 
			elsif reply == 4 
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
			elsif reply == 5
				break
			else
				puts "Выберите 1, 2, 3, или 4"	
			end
	end

	while choice == 5
		puts "<===================== Перегон поездов =========================>"
		puts "1 -> Показать все станции"
		puts "2 -> Показать станции с поездами"
		puts "3 -> Перегнать поезд на станцию"    # позже это нужно сделать через назначение маршрута!
		puts "4 -> Назад в основное меню"
		reply = gets.chomp.to_i
		if reply == 1
			puts " => всего доступно #{@st_names.length} станций:"
			@st_names.map{|obj| puts obj.name}
		elsif reply == 2
			if @@st_and_tr.empty?
				puts 'Пока нет ни одной станции с поездами!'
			else
				@@st_and_tr.each{ |key,value| puts "Станция: #{key}, Поезд: #{value}" } # показваем все станции с поездами из хеша @@st_and_tr. Где станция ключ, номер поезда - значение  
			end
		elsif reply == 3
			if !@@tr_names.empty? #== false  			# проверка, что в списке есть поезда. (if !@@tr_names.empty? означает - if @@tr_names is not empty)    #<==========================
				puts " => выберите поезд из списка"	
				@@tr_names.map{|obj| obj.type_full}       # показываем список поездов по номеру и типу. Метод type из train.rb
				@tr_input = gets.chomp.to_i   				# tr_input - пользовательский ввод
				if @@tr_names.any?{ |obj| obj.number == @tr_input } # проверка, если введенный номер поезда относится к существующим поездам
					puts "Выбран поезд #{@tr_input}"
					puts "Выберите станцию назначения из списка ниже: "   # ВМЕСТО ВОТ ЭТОГО ВСЕГО -НАПИСАТЬ МЕТОД И ВЫЗЫВАТЬ ЕГО!
					@st_names.map{|obj| puts obj.name}                    # СТАНЦИЯМ ТОЖЕ ДОБАВИТЬ НОМЕРА ЧТОБ В МЕНЮ ИХ ВЫБИРАТЬ ПО НОМЕРАМ, КОТОРЫЕ БУДУТ ОТОБРАЖАТЬСЯ НАПРОТИВ НАЗВАНИЙ
					st_input = gets.chomp.to_s
					if @st_names.any?{|obj| obj.name == st_input}          # проверку станции опустим позже, у нас это есть в самом методе move 
						@train_to_move = @@tr_names.select{|obj| obj.number == @tr_input}  # присваиваем переменной train_to_move значение объекта из массива с поездами, объект находим по аттрибуту -number                 # ТУТ ВМЕСТО tr_input нужно получать объект из массива с поездами (@@tr_names) в котором есть обЪект с именем равным @tr_input! ЭТО obj.id???? брать его из @@tr_names после строки с проверкой# то используем метод move (из train.rb)  для перегона на соответствующую станцию											
						#p @train_to_move[1]
						@train_to_move[0].move_to_st(st_input, @tr_input)         #train_to_move у нас тут становится массивом, а нам нужен объект, решаем это вытаскивая сам объект, который является первым элементом массива train_to_move; метод move_to_st в train.rb
					else
						puts 'Такой станции не существует!'
					end
				else
					puts "Такого поезда не существует!"
				end 
			else 
				puts " => Еще не создано ни одного поезда!" #<==========================================================>
			end 
		elsif reply == 4
			break
		else
			puts "Выберите 1, 2, 3, 4 или 5"	
		end
	end
#=end
      	 
	#!!!!!!!!!!!!!! у меня есть не задействованный trains{} в объекте railway_station
	while choice == 6
		puts "<===================== Список станций и поездов =========================>"
		if @@st_and_tr.empty?
				puts 'Пока нет ни одной станции с поездами!'
		break
		else
			puts "Всего доступно #{@st_names.length} следующих станций:"
			@@st_and_tr.each{ |key, value| puts "Станция: #{key}, Поезда: #{value} "} # показываем все станции с поездами из хеша @@st_and_tr. Где станция ключ, номер поезда - значение, поменя вместо вывода значения нп свое черезжопное решение tr_type, которым показыва номер поезда и тип  
			@@tr_names.map{|obj| obj.type }
		    puts "Введите 1 -> для возврата в основное меню \n"
			input = gets.chomp.to_i
			break if input == 1
		end
	end

end
end

# <============================================== <Конец интерфейса пользователя> =============================================================================>
=begin
	when 2
		puts "Какой тип поезда необходимо создать?"
		puts "1 -> пассажирский"
		puts "2 -> грузовой"
		train_type = gets.chomp.to_i   #добавить проверку существования поезда с этим названием
			if train_type == 1
			 	train_1 = Train.new(1, :passenger)
			elsif train_type == 2
				train_1 = Train.new(1, :cargo)
			else
				puts "Можно выбрать только 1 -> пассажирский  или 2 -> грузовой" 
			end

	else 
		puts "Других вариантов основного меню нет!"
	end
=end



