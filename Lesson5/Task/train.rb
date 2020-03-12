#<================== Родительский класс Поезд: ========================================================================>

require_relative "module_manufacturer.rb"
# include Manufacturer
# Manufacturer.hi("Melissandra")

class Train
  include Manufacturer
	attr_accessor :speed, :wagon, :type, :route, :station, :number, :name 

  @@st_and_tr = {}                                                         # @@st_and_tr переменная класса Train, хранит массив всех хешей метода move_to_st. @@ class variable to use it within whole class, not just instances. Because there’s only one copy of a class variable shared by all instances of a class
  @@tr_names = []                                                          # 3 массив в котором храним объекты с именами поездов при выборе 3
  @@wg_names = []                                                          # 4 массив в котором храним объекты с именами вагонов при выборе 4
  @@wagon_to_add = @@wg_names.select{|obj| obj.number == @@wg_input}         # это дублируется в main в пункте while choice == 4 # если уберу этот дубликат, то не сработает метод wagon_such_train?(wagon)  # присваиваем переменной wagon_to_add значение объекта из массива с поездами, объект находим по аттрибуту -number 
  @@wagon_to_delete = @@wg_names.select{|obj| obj.number == @wg_input}
  @@train_to_add_wagon = @@tr_names.select{|obj| obj.number == @@tr_input}   # это дублируется в main в пункте while choice == 4 # если уберу этот дубликат, то не сработает метод wagon_such_train?(wagon)# присваиваем переменной train_to_add_wagon значение объекта из массива с поездами, объект находим по аттрибуту -number                 # ТУТ ВМЕСТО @@tr_input нужно получать объект из массива с поездами (@@tr_names) в котором есть обЪект с именем равным @@@tr_input! ЭТО obj.id???? брать его из @@tr_names после строки с проверкой# то используем метод move (из train.rb)  для перегона на соответствующую станцию                      
  @@train_to_delete_wagon = @@tr_names.select{|obj| obj.number == tr_input}


	def initialize(number, type)                               # Имеет, тип type, который указывается при создании: грузовой, пассажирский и номер number.
		@type = type
		@number = number.to_i
		@speed = 0
		@wagon = []                                              # также при создании объекта класса train будет инициализироваться массив вагонов поезда @wagon
		@route = []                                                # и массив маршрутов поезда @route
    @manufacturer = ""
		puts "Собран новый поезд №#{@number}, типа #{@type}"
	end

  
	def type_full
		puts "Поезд №#{@number} типа #{@type}. Вагоны: № #{@wagon.join(", №")} "
	end

  # мой метод
  # по номеру @number из массива @@st_and_tr находит объект в массиве @@tr_names и выводит тип объекта, т.е аттрибут type поезда
  # это метод будет использоваться в 
  # как сделаю этот метод, останется доделать добавление и удаление поездов
  def tr_type

    #поиск значений одного массива в другом
  end


	def speed                           
		puts "Поезд №#{@number} имеет скорость #{@speed} км/ч"
	end

	def speed_up           # в третьем уроке тут была возможность добавлять любую скорость через параметр
		@speed += 20
		if speed_zero?
			puts "Поезд №#{@number} начал движение и поехал со скоростью 20 км/ч"
		else 
			puts "Поезд №#{@number} ускорился на 20 км/ч, теперь его скорость #{@speed} "
		end
	end

	def speed_down(speed)                #  сбрасывать скорость, решил оставить этот метод и доработал, в примера thincknetica он почему-то убран
		if speed_zero?
			puts "Поезд №#{@number} уже остановлен!"
		elsif @speed > speed
			@speed -= speed
			puts "Поезд №#{@number} замедлился на #{speed} км/ч, теперь его скорость #{@speed} км/ч"
		elsif @speed <= speed                                                                                                   # останавливаем поезд, если текущая скорость меньше или равна введенному значению 
			self.stop                                                                                                             # обращаемся к методу stop, если текущая скорость меньше той на которую ее понижают. self означает обращение к текущему классу, self.stop конкретно к методу stop
		end
	end

	def stop                         
		if speed_zero?
			puts "Поезд №#{@number} уже стоит!"
		else
			@speed = 0
			puts "Поезд остановлен"
		end
	end
	
  def add_wagon(wagon)   					                                                                                        #!!!! Нужно добавить проверку, что вводимый вагон существует, иначе прога вылетает с ошибкой	 		                                                                                        
		if wagon_such_train?(wagon) && speed_zero? 		                                                                         # wagon_such_train?(wagon) - метод проверяет соответствие типа вагона к типу поезда;  	                                                                            
			@wagon << wagon.list 								                                                                                     # то добавляем номер вагона в массив @wagon 
			puts "К поезду №#{@number} добавлен вагон №#{wagon.list}, теперь у него вагонов #{@wagon.size} шт."   
		elsif !wagon_such_train?(wagon) && !speed_zero?  			                                                                      # если же тип вагона не принадлежит типу поезда и скорость не равна 0
			puts "Сначала остановите поезд, чтобы добавить вагон"
		elsif !wagon_such_train?(wagon)
			puts "Нельзя присоединить этот вагон к этому поезду!"
		end
	end

	def list_wagon
		puts "У поезда сейчас вагонов #{@wagon.size} шт."
		puts "К поезду присоединены вагоны под номерами #{@wagon}"
	end

	def delete_wagon(wagon)                                                      
    num = @@wagon_to_delete.collect{|obj| obj.number}               # ПОЛУЧаю ДОСТУП К ЭЛЕМЕНТУ МАССИВА @NUMBER методом collect И теперь МОГУ ЕГО УДАЛЯТЬ ИЗ МАССИВА @WAGON  # это было нужно чтобы отцеплять конкретный вагон
		if speed_zero?
      @wagon.delete(num[0])
			puts "От поезда №#{@number} отцеплен вагон №#{num[0]}"      
		else
			puts "Сначала остановите поезд!"
		end
	end

	def take_route(station)  # этот метод я нигде не использую в main
		@station = station
		puts "Поезд №#{@number} готов отправиться со станции #{@station.first} на станцию #{@station.last}"
	end

  	def move(station)         # этот метод использую в main около 161. Сам метод нужно доработать, чтоб он хеш создавал
  		if @route.include?(station)
  			@station = station
  			puts "Поезд №#{@number} приехал на станцию #{@station}"
  		else
  			puts "Такой станции нет в маршруте!"
  		end
  	end

# мой метод
  def move_to_st(station, number)                                                                                           # передаем в качстве параметров имя станции и номер поезда
    @station = station.to_sym
    @number = number
    @current_st = @@st_and_tr.detect{ |key, value| value.include?(@number)}                                                 # @current_st необходима, чтобы знать текущую станцию на котрой находится поезд @number, если он существует
      
      if @@st_and_tr.empty?                                                                                                 # 1. Если еще ничего не было записано. Если хеш @@st_and_tr еще пустой
          @@st_and_tr[@station] = [@number]                                                                                   #  Добавляем хеш {@station => [@number]} в массив хешей @@st_and_tr. Этот способ (@@hash[@key] = [@value]) создания хеша и добавления его в массив есть в файле railway_station                         
          puts "Первый поезд №#{@number} приехал на первую станцию #{@station}"
      elsif @@st_and_tr.any?{|key, value| key == @station && value.include?(@number)}                                       # 2. Если в этом объекте уже есть станция @station с номером @number. Т.е при такой попытке отправить поезд на станцию на которой он уже находится - выдаем сообщение поезд уже на этой станции 
        puts "Поезд №#{@number} уже находится на станции #{@station}!"
      elsif @@st_and_tr.keys.any?{|key| key == @station } && @@st_and_tr.values.any?{|val| val.include?(@number)}           # 3. Если такая станция @station отдельно существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number существует в какой-либо из пар в массиве @@st_and_tr
          puts "Поезд №#{@number} отправляется со станции #{ @current_st[0] } на станцию #{@station}"                        
      @@st_and_tr[@current_st[0]].delete(@number)                                                                           # Т.к в этом случае поезд отбывает с одной станции и прибывает на другую. Удаляем его с текущей станции @current_st
      @@st_and_tr[@station] << @number                                                                                      # и добавляем поезд @number к уже существующей станции @station. 
          puts "Поезд №#{@number} отбыл со станции #{@current_st[0]} и прибыл на станцию #{@station}"
      elsif @@st_and_tr.keys.any?{|key| key == @station} && !@@st_and_tr.values.any?{|val| val.include?(@number)} #== false # 4. Если такая станция @station отдельно существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number НЕ существует в какой-либо из пар в массиве @@st_and_tr
        @@st_and_tr[@station] << @number                                                                                    #  то сразу добавляем поезд @number к уже существующей станции @station. Т.к поезд новый и нигде его еще не было.     
        puts "Еще один поезд под номером #{@number} приехал на станцию #{@station}"
      elsif @@st_and_tr.keys.any?{|key| key != @station} && @@st_and_tr.values.any?{|val| val.include?(@number)}            # 5. Если такая станция @station отдельно НЕ существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number существует в какой-либо из пар в массиве @@st_and_tr 
        puts "Поезд №#{@number} отправляется со станции #{@current_st[0]} на станцию #{@station}"                           
        @@st_and_tr[@current_st[0]].delete(@number)                                                                         # Т.к в этом случае поезд отбывает с одной станции и прибывает на НОВУЮ. Удаляем его с текущей станции @current_st
        @@st_and_tr[@station] = [@number]                                                                                   # и т.к раньше такая станция не существовала, добавляем в массив @@st_and_tr новый хеш с поездом @number и станцией @station
        puts "Поезд №#{@number} отбыл со станции #{@current_st[0]} и прибыл на новую станцию #{@station}"
      else #@@st_and_tr.keys.any?{|key| key != @station} && @@st_and_tr.values.any?{|val| val.include?(@number) == false}   # 6. Очевидно что остался последний возможный вариант, который засунем в else, закоментил для большего понимания того, что происходит                             
        @@st_and_tr[@station] = [@number]                                                                                   # А именно - Если такая станция @station отдельно НЕ существует в какой-либо из пар в массиве @@st_and_tr И номер поезда @number НЕ существует в какой-либо из пар в массиве @@st_and_tr
        puts "Новый поезд №#{@number} приехал на новую станцию #{@station}"                                                 # то это хеш из новой станции и нового поезда! Его создаем и добавляем уже известным методом @@hash[@key] = [@value]  
      end
  end

  def list                      # возвращает номер поезда в качестве ключа, а тип поезда в качестве значения. Это нужно! при использовании метода take_train на объекте train_1 в main.rb
		return {@number => @type}
  end
    


# private
# Методы вынесены потому что они не используются клиентским кодом, а только другими методами.

	def speed_zero?
    	@speed.zero?
  end

    def count_hash_dublicate(hash, value)  #метод принимает два параметра, хеш и значение. этот метод используется в railway_station
    	count = 0 
    	hash.values.each do |t|          # пробегаем по всем значениям хеша @trains из railway_station
    		if t == value                 # если таковое значение есть 
    			count += 1                 # увеличиваем счетчик на 1
    		end
    	end
    	return count                         # возвращаем значение всего что насчитал счетчик
    end 

    def wagon_such_train?(wagon)                             # метод проверяет принадлежность типа вагона к типу поезда. Результатом является булове значение (true или false)
      @@wagon_to_add[0].type == @@train_to_add_wagon[0].type      # где к примеру @@wagon_to_add[0].type => :passenger и @@train_to_add_wagon[0].type тоже => :passenger
    end



end





# Ненужные методы
  # def add_wagon_passanger
  #   if speed_zero? && self.class == "PassangerTrain"
  #     @wagon += 1
  #     puts "Поезду №#{@number} добавлен новый вагон, теперь у него вагонов #{@wagon} шт."
  #   elsif self.class == "CargoTrain"
  #     puts "Вы пытаетесь присоединить пассажирский вагон грузовому поезду"
  #   else
  #     puts "Сначала остановите поезд, для того что бы добавить к нему вагон"
  #   end
  # end

  # def speed_more_zero?
  #   @speed > 0
  # end


  # def add_wagon_cargo
  #   if self.class == CargoTrain && speed_zero?
  #     @wagon += 1
  #     puts "К грузовому поезду №#{@number} добавлен грузовой вагон, теперь у него вагонов #{@wagon} шт."
  #   elsif self.class == PassangerTrain && !speed_zero?
  #     puts "Вы пытаетесь присоединить грузовой вагон пассажирскому поезду на Ходу"
  #   elsif self.class == PassangerTrain
  #     puts "Вы пытаетесь присоединить грузовой вагон пассажирскому поезду"
  #   elsif !speed_zero?
  #     puts "Сначала остановите поезд, для того что бы добавить к нему вагон"
  #   end
  # end

  # def add_wagon_passanger
  #   if self.class == PassangerTrain && speed_zero?
  #     @wagon += 1
  #     puts "К пассажирскому поезду №#{@number} добавлен пассажирский вагон, теперь у него вагонов #{@wagon} шт."
  #   elsif self.class == CargoTrain  && !speed_zero?
  #     puts "Вы пытаетесь присоединить пассажирский вагон грузовому поезду на Ходу"
  #   elsif self.class == CargoTrain
  #     puts "Вы пытаетесь присоединить пассажирский вагон грузовому поезду"
  #   elsif !speed_zero?
  #     puts "Сначала остановите поезд, для того что бы добавить к нему вагон"
  #   end
  # end