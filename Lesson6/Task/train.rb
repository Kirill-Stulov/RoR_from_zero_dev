#<================== Родительский класс Поезд: ========================================================================>

require_relative 'modules.rb'
# include Manufacturer
# Manufacturer.hi("Melissandra")

class Train
  # include Manufacturer
  include InstanceCounter
  include Validator
	attr_accessor :speed, :wagons, :type, :route, :station, :number, :name, :manufacturer 

# Переменные класса можно использовать в методах класса (в инстанс методах класса), 
# но их отличие в том, инстанс переменные содержат данные доступные внутри класса, но не разделяются между объектами 
# переменная класса разделяется между самим классом, т.е к какому бы классу или подклассу мы не обратились, эта переменная будет иметь общее значение для них всех!
  @@st_and_tr = {}                                                         # @@st_and_tr переменная класса Train, хранит массив всех хешей метода move_to_st. @@ class variable to use it within whole class, not just instances. Because there’s only one copy of a class variable shared by all instances of a class
  @@tr_names = []                                                          # 3 массив в котором храним объекты с именами поездов при выборе 3
  @@wg_names = []                                                          # 4 массив в котором храним объекты с именами вагонов при выборе 4
  #@@wagon_to_add = @@wg_names.select{|obj| obj.number == @@wg_input}         # это дублируется в main в пункте while choice == 4 # если уберу этот дубликат, то не сработает метод wagon_such_train?(wagon)  # присваиваем переменной wagon_to_add значение объекта из массива с поездами, объект находим по аттрибуту -number 
  #@@wagon_to_delete = @@wg_names.select{|obj| obj.number == @wg_input}
  #@@train_to_add_wagon = @@tr_names.select{|obj| obj.number == @@tr_input}   # это дублируется в main в пункте while choice == 4 # если уберу этот дубликат, то не сработает метод wagon_such_train?(wagon)# присваиваем переменной train_to_add_wagon значение объекта из массива с поездами, объект находим по аттрибуту -number                 # ТУТ ВМЕСТО @@tr_input нужно получать объект из массива с поездами (@@tr_names) в котором есть обЪект с именем равным @@@tr_input! ЭТО obj.id???? брать его из @@tr_names после строки с проверкой# то используем метод move (из train.rb)  для перегона на соответствующую станцию                      
  #@@train_to_delete_wagon = @@tr_names.select{|obj| obj.number == tr_input}

  # @@inst = 0

	def initialize(number, type, manufacturer)                               # Имеет, тип type, который указывается при создании: грузовой, пассажирский и номер number.
		@type = type
		@number = number#.to_s
		@speed = 0
		@wagons = []                                              # также при создании объекта класса train будет инициализироваться массив вагонов поезда @wagon
		@route = []                                                # и массив маршрутов поезда @route
    @manufacturer = "RJD"                                 # производитель для метода из modules.rb, который будет позволять указывать и менять это значение. По умолчанию -RJD
    # validate!                                             # валидация паттерна номера поезда из modules.rb 
    # wagons.times{initialize_wagons}                     #wagons - это параметр передаваемый во время создания поезда. Если в нем к примеру 5, то метод initialize_wagons (это метод из cargotrain.rb или passengertrain.rb) отрабатывает 5 раз
                                                          #и создает 5 вагонов соответствующего типа
    
    #вывод пользователю ошибки валидации без прекращения работы программы.
    if valid? == true                          #!!!! ТОЖЕ НУЖНО ДОБАВИТЬ В railway_station !!!! ПРОВЕРКА   # valid? запускается при инициализации не смотря на if
      @@tr_names << self                                       # каждый созданный поезд добавляется в массив @@tr_names (если прошел валидацию), потому в main мне уже не нужна конструкция @@tr_names << Train.new
      puts "Собран новый поезд №#{@number}, типа #{@type}"
    else
      puts "Поезд не создан!"                              # если валидация поезда не прошла, то выбрасывается исключение из raise модуля validate! в modules.rb. Выбрасывается благодаря rescue RuntimeError => e из метода valid? в modules.rb / puts "Поезд не создан!" просто для уведомления пользователя.
    end
    
    register_instance
	end

  # def self.add_train(num, type, manuf)                         #избавился от @@tr_names в main без этого метода!!. добавил этот метод чтобы не плодить @@tr_names в main и train и чтобы срабатывал @@tr_names.pop и тем самым чтобы поезд с неправильным именем не создавался когда происходит rescue в initialize
  #   @@tr_names << Train.new(num, :passenger, @manufacturer)  #!!!! может сюда проверку включить???
  # end

  def self.find(num)                                        # метод класса find, который принимает номер поезда и возвращает объект поезда по номеру или nil, если поезд с таким номером не найден.
    @result = @@tr_names.select{|obj| obj.number == num}   
    puts "это объект: #{@result[0]}"
  end 

	def type_full
		puts "Поезд №#{@number} типа #{@type}. Производитель: #{@manufacturer}. Вагоны: № #{@wagons.join(", №")} "
	end

  # мой метод
  # по номеру @number из массива @@st_and_tr находит объект в массиве @@tr_names и выводит тип объекта, т.е аттрибут type поезда
  # это метод будет использоваться в 
  # как сделаю этот метод, останется доделать добавление и удаление поездов

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


 #  def add_wagon(wagon)   					                                                                                        #!!!! Нужно добавить проверку, что вводимый вагон существует, иначе прога вылетает с ошибкой	 		  # у thinknetika тут используется метод type_match? а не such_train                                                                                      
	# 	if wagon_such_train?(wagon) && speed_zero? 		                                                                         # wagon_such_train?(wagon) - метод проверяет соответствие типа вагона к типу поезда;  	                                                                            
	# 		@wagon << wagon.list 								                                                                                     # то добавляем номер вагона в массив @wagon 
	# 		puts "К поезду №#{@number} добавлен вагон №#{wagon.list}, теперь у него вагонов #{@wagon.size} шт."   
	# 	elsif !wagon_such_train?(wagon) && !speed_zero?  			                                                                      # если же тип вагона не принадлежит типу поезда и скорость не равна 0
	# 		puts "Сначала остановите поезд, чтобы добавить вагон"
	# 	elsif !wagon_such_train?(wagon)
	# 		puts "Нельзя присоединить этот вагон к этому поезду!"
	# 	end
	# end


  def add_wagon(wagon)      # так реализован этот метод у thinknetika, мой метод выше был недоработан в плане elsif !wagon_such_train?(wagon) && !speed_zero?
    if speed_zero?
      if type_match?(wagon)   # type_match? подтягивается из TrainCargo или TrainPassanger в заисимости от того на каком типе поеза был вызван метод add_wagon из main  ######дальше коммент устарел эта проверка не срабатывала, потому что поезд у меня создавался от родительского класса train, а проверка то идет по классу вагона и поезда (passanger или cargo). Исправил создание поезда в main
        @wagons << wagon.number     
      else 
        raise "Данный вагон нельзя прицеплять к данному типу поезда"
      end
    else
      raise "Поезд движется, прицеплять вагоны нельзя"
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


  def stoped?
    @speed == 0
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

    # def wagon_such_train?(wagon)                             # метод проверяет принадлежность типа вагона к типу поезда. Результатом является булове значение (true или false)
      
    #   # @@wagon_to_add[0].type == @@train_to_add_wagon[0].type      # где к примеру @@wagon_to_add[0].type => :passenger и @@train_to_add_wagon[0].type тоже => :passenger
    # end

   # def type_match?(wagon)   # замена методу wagon_such_train?
   #   wagon.class == self.class   # если класс вагона соответсвует классу поезда
   # end

   # def type_match?(wagon)    # ЭТО ПРОСТО ЛИШНЕЕ !!!!!!!!!!!! метод для метода add_wagon. ВЫЯСНИТЬ как это работает!!!, ясно только что он ссылается на сам метод def type_match?(wagon) в подклассах passengertrain и cargotrain, или нет? Может type_match? это встроенный ruby метод?  
   #  true                        # возлможно ответ есть в наследовании и полиморфизме
   # end


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