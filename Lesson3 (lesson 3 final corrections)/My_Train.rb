# Train object model

#<================== Поезд: ========================================================================>
class Train
	attr_reader :type, :vagons_num, :speed

	def initialize(type, vagons_num) # Имеет, тип, который указывается при создании: грузовой, пассажирский и количество вагонов.
		@type = type
		@vagons_num = vagons_num
		@speed = 0
	end

	def start                     #установим первоначальную скорость
		@speed = 10
	end

	def speed_up(speed)           # набирать скорость
		@speed += speed
	end

	def speed_down(speed)                # сбрасывать скорость
		if @speed == 0
			puts "Поезд уже остановлен!"
		elsif @speed >= speed
			@speed -= speed
		elsif @speed < speed
			self.stop                    # обращаемся к методу stop (строка 33), если текущая скорость меньше той на которую ее понижают. self означает обращение к текущему классу, self.stop конкретно к методу stop
		end
	end

	def show_speed                   # показывать текущую скорость
		puts "Current speed: #{@speed}"
	end

	def stop                         # тормозить
		@speed = 0
	end

	def show_vagons_num              # показывать количество вагонов
		puts "Vagons in train: #{@vagons_num}"
	end

	def attach_vagon                 # прицеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
		if @speed == 0
			@vagons_num += 1
		else
			puts "Нельзя прицепить вагон пока поезд в движении!"
		end
	end


	def detach_vagon             # отцеплять вагоны
		if @speed == 0
		   if @vagons_num > 0
			  	@vagons_num -= 1
		   else
		      puts "Уже нечего отцеплять!" 
		   end  	
		else
			puts "Нельзя отцепить вагон пока поезд в движении!"
		end
	end
	
   def set_route(route)                          # метод установки маршрута для поезда. В качестве параметра принимает объект класса Route
    	if route.class == Route                     # если введенный параметр принадлежит классу Route. Т.е сработает только если в качестве параметра ввести сюда заранее созданный объект класса Route, например route1
      	   @route = route                            # присваиваем значение вводимого параметра переменной экземпляра @route
      	   @current_station = route.stations[0]      # создаем переменную экземпляра @current_station, присваиваем ей первое(нулевое) значение индеска в списке массива станций маршрута, которое ниже: @stations = [start_point, end_point]). Таким образом получаем текущую станцию, которой всегда будет start_point
        else
           puts "Данного маршрута не существует"
        end
   end


    def go_to_station(station)        # метод для перемещения к конкретной станции
    	@current_station = station    # переменной экземпляра @current_station присваиваем значение вводимого параметра
    end

    
    # метод для перемещения к следующей станции
    # создаем переменную экземпляра @next_station, присваиваем ей значение переменной экземпляра @route  
    # перемещаемся на одну станцию вперед, в качестве индекса используя значение переменной экземпляра @current_station +1 (тоже что и route.stations[0+1])
    # index - метод массива возвращает индекс в массиве (переданного в параметре элемента)
    # выводим имя текущей станции
    def next_station
    	@next_station = @route[@route.index(@current_station) + 1]   
    	puts @next_station.name
    end 

    def current_station    
    	puts @current_station.name
    end

    def back_station
    	@back_station = @route[@route.index(@current_station) - 1]
    	puts @back_station.name
    end

end


#<================ Станция: ===========================================================================>
class RailwayStation
	attr_reader :name

	def initialize(name)             # Имеет название, которое указывается при ее создании
		@name = name
		@trains = []
	end

	def train_inbound(train)               # Метод добавления поезда к объекту RailwayStatio (например station1)                     
		@trains << train                 # Просто присваиваем переменной экземпляра @trains (которая массив) то, что было передано в параметре train
	end
    
    # Может показывать список всех поездов на станции, находящиеся в текущий момент
	def show_trains_now(type=nil)                # метод get_trains может принимать параметр type (тип поезда), но можно и без параметра, потому по умолчанию в методе он равен nil
		if type.nil?                             # если тип поезда не указан
			@trains.each {|train| puts train.type }  # показываем все поезда, т.к имен у поездов нет, то показываем тип
		else
			@trains.each {|train| puts train.type if train.type == type }  # в ином случае показываем поезда, тип которого запросили
		end
	end

	def send_train(train)         # Метод отправки поезда со станции (при этом, поезд переданный в параметре, например train1, удаляется из списка поездов, находящихся на станции).
		@trains.delete(train)     # delete - метод массива удаляющий элемент массива указанный в параметре train
	end

#	def show_station  #лишний метод, чтобы видеть аттрибут станции - имя, вместо него сделал attr_reader :name и теперь можно писать station.name
#		puts @name
#	end

end


#<================== Маршрут: ========================================================================>
class Route

	attr_accessor :stations, :start_point, :index                       
	def initialize(start_point, end_point)       # при создании объекта route, по умолчанию задается начальная и конечная станция 
		@start_point = start_point           
			if start_point.class == RailwayStation && end_point.class == RailwayStation  # если объекты переданные в параметрах start_point и end_point являются объектами класса RailwayStation 
				@stations = [start_point, end_point]                                      # то переменная экземпляра @stations принимает значение в виде массива объектов из переданных выше параметров start_point и end_point
			else
				puts "Ошибка: Хотя бы одна из указанных станций не существует"
			end
	end

    def add_station(station)         # методом add_station добавляем станцию в маршрут
    	if station.class == RailwayStation  # Если объект переданный в параметре station является объектом класса Railway_Station (например station1)
    		@stations.insert(-2, station)   # то методом .insert, в массив @stations добавляем то, что введено в параметре метода add_station, -2 означает ввод после второго с конца элемента массива. Читай метод insert. Видимо это от того, что изначально при создании маршрута, мы задаем начальную и конечную станцию, потому любаяч добавляющаяся станция сделана промежуточной 
    	else
    		puts "Такой станции не существует, сначала задайте станцию"
    	end
    end

    def del_station(station)               # Может удалять станцию
    	@stations.delete(station)          # такой же метод как и в строке 124
    end

    def get_stations       # метод чтоб увидеть станции в маршруте
    	print "Список станций: "
    	@stations.each{|station| print "#{station.name} --> "} # --> стрелка прост для красоты вывода
    end

end

# Объекты
train = Train.new("Cargo", 12)   # initialize нужен чтоб прям тут первончальные параметры можно было указать
train1 = Train.new("Civil", 32)
train2 = Train.new("Milytary", 48)
train3 = Train.new("Milytary", 23)
station1 = RailwayStation.new("Deadend")
station2 = RailwayStation.new("L.A.")
station3 = RailwayStation.new("Detroit")
route1 = Route.new(station1, station2)

route1.add_station(station3)
#route1.get_stations

train1.start
train1.set_route(route1)
train1.current_station
train1.next_station


#train1.show_speed
#train1.current_station


# Вызов методов на объектах
# train2.show_vagons_num
station1.train_inbound(train)
station1.train_inbound(train1)
station1.train_inbound(train2)
station1.train_inbound(train3)
# station1.show_trains_now
# p station.name                   # для этого нам нужен attr_reader в классе train

# Нужно проверить все методы! Перед этим нужно создать все объекты классов, на которых этим методы будут работать
# проверять, если еще не созал эти объекты



