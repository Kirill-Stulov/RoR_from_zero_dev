# Train by thincknetica

class Train
  attr_reader :type, :wagons, :speed
  
  def initialize (type, wagons)
    @type = type
    @wagons = wagons.to_i
    @wagons = 0 if @wagons < 0 #это видимо, защита от ввода отрицателного колва вагонов
    @speed = 0
  end

  def start
    @speed = 50
  end 

  def increase_speed(speed)
    @speed += speed
  end

  def decrease_speed(speed)
    if @speed == 0
      puts "Поезд и так уже стоит"
    elsif @speed >= speed           # если текущая скорость больше или равна вводимой скорости
      @speed -= speed                # то метод делает то, что должен - убавляет скорость
    elsif @speed < speed            # если текущая скорость меньше вводимой,
      self.stop                      # обращаемся к методу stop (строка 31), если текущая скорость меньше той на которую ее понижают. self означает обращение к текущему классу, self.stop конкретно к методу stop
    end
  end

  def stop
    @speed = 0
  end

  def add_wagon
    if @speed == 0 
      @wagons += 1
    else
      puts "Поезд движется, прицеплять вагоны нельзя"
    end
  end
  def del_wagon
    if @speed == 0 
      if @wagons > 0
        @wagons -= 1
      else
        puts "У поезда и так нет вагонов"
      end
    else
      puts "Поезд движется, отцеплять вагоны нельзя"
    end
  end

  def set_route(route)                          # метод установки маршрута для поезда. В качестве параметра принимает объект класса Route
    if route.class == Route                     # если введенный параметр принадлежит классу Route. Т.е сработает только если в качестве параметра ввести сюда заранее созданный объект класса Route, например route1
      @route = route                            # присваиваем значение вводимого параметра переменной экземпляра @route
      @current_station = route.stations[0]      # создаем переменную экземпляра @current_station, присваиваем ей первое(нулевое) значение в списке массива станций маршрута, которое ниже: @stations = [start_point, end_point]). Таким образом получаем текущую станцию, которой всегда будет start_point
    else
      puts "Данного маршрута не существует"
    end
  end

    def move_to_station(station)  # метод для перемещения между станциями 
    @current_station = station    # переменной экземпляра @current station присваиваем значение вводимого параметра
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

class RailwayStation
  attr_reader :name
  def initialize(name)
    @name = name
    @trains = []
  end
  
  def train_arrive(train)         # примнимаем поезд на станцию
    @trains << train               # в массив, который присвоен переменной экземпляра @trains добавляем значение параметра train. У меня это объекты train1, train2 и тд
  end

  def get_trains(type=nil)         # метод get_trains может принимать параметр type (тип поезда), но можно и без параметра, потому по умолчанию в методе он равен nil
     if type.nil?                    # если тип поезда не указан
      @trains.each do |train|       # показываем все поезда
        puts train.type 
      end
    else
      @trains.each do |train|                  # в ином случае 
        puts train.type if train.type == type  # показываем поезда, тип которого запросили
      end
    end
  end

  def train_leave(train)
    @trains.delete(train)
  end
end

class Route
  attr_reader :stations, :start_point # чтобы можн было так посмотреть станции 

  def initialize(start_point, end_point)
  @start_point = start_point                                         # при создании объекта route, по умолчанию задается начальная и конечная станция
    if start_point.class == RailwayStation && end_point.class == RailwayStation  # проверяем, принадлежит ли начальная и конечная станция к классу RailwayStation
      @stations = [start_point, end_point]
    else
      puts "ОШИБКА: Хотя бы одна из указанных станций не существует"
    end

  end

  def add_station(station)               # методом add_station добавляем станцию в маршрут
    if station.class == RailwayStation   # Если объект переданный в параметре station является объектом класса Railway_Station (например station1)
      @stations.insert(-2, station)      # то методом .insert, в массив @stations добавляем то, что введено в параметре метода add_station, -2 означает ввод после второго с конца элемента массива. Читай метод insert 
    else
      puts "Такой станции не существует, сначала задайте станцию"
    end
  end

  def del_station(station)
    @stations.delete(station)
  end
  
  def get_stations                     # метод чтоб увидеть станции в маршруте
    print "Список станций: "
    @stations.each{|station| print "#{station.name} --> "}   # --> стрелка прост для красоты вывода
  end

end

#puts start_point.class
train1 = Train.new("Cargo",5)
train2 = Train.new("Civil",34)
station1 = RailwayStation.new("Deadend")
station2 = RailwayStation.new("San_Fran")
station3 = RailwayStation.new("LA")
route1 = Route.new(station1, station3)


route1.add_station(station2) # метод add_station добавляет станцию (в этом случае station2) между первой и третьей 
#route1.get_stations

train1.set_route(route1)
train1.current_station
train1.next_station
#puts route1.stations[0+1].name

#station1.train_arrive(train1)
#station1.train_arrive(train2)
#station1.get_trains

#route1.route_class_check
# puts route1.class
