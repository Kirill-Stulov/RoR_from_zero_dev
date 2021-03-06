class Train
  include Manufacturer
  include InstanceCounter                           #когда вызываем include InstanceCounter, в самом модуле InstanceCounter (из modules.rb) срабатывает метод included. В качестве аргумента (base) туда передается класс Train. 
                                                      #У класса Train вызываем extend чтобы подключить методы класса из модуля ClassMethods 
                                                        # затем вызываем include через send и подключаем туда методы из модуля InstanceMethods (внутренний модуль) как методы экземпляра класса
                                                          # Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:39:40
  attr_reader :speed, :wagons, :current_station


# Переменные класса можно использовать в методах класса (в инстанс методах класса), 
# но их отличие в том, инстанс переменные содержат данные доступные внутри класса, но не разделяются между объектами 
# переменная класса разделяется между самим классом, т.е к какому бы классу или подклассу мы не обратились, эта переменная будет иметь общее значение для них всех!
  @@trains = {}
  # @@inst = 0                        #переменная класса, счетчик количества экземпляров класса Train. Начальное значение 0   !!! Не нужен, если используется метод instances (из modules.rb, работает с помощью register_instance)  
  
  def initialize(wagons, station)
    @speed = 0
    @wagons = []
    
    wagons.times {initialize_wagons}        #wagons - это параметр передаваемый во время создания поезда. Если в нем к примеру 5, то метод initialize_wagons (это метод из cargotrain.rb или passengertrain.rb) отрабатывает 5 раз
    @current_station = station                #и создает 5 вагонов соответствующего типа
    
    station.train_arrive(self)              
    @@trains[@@trains.length + 1] = self    #В хеш @@trains таким методом добавляется пара ключ-значение (тут номер-объект). Ключом будет порядковый номер объекта (объект поезд), а значением сам объект (поезд)   
                                              #номер создается через @@trains.length + 1  , а ключ берется из self   
    register_instance                        #метод увеличивает счетчик кол-ва экземпляров класса, вызваем его из конструктора на классе train

  end

  def self.find(number)                   # метод класса, выводит поезд по номеру из хеша @@trains 
    @@trains[number]
  end

  def self.all
    @@trains
  end

  def start
    @speed = 50
  end 

  def increase_speed(speed)
    @speed += speed
  end

  def decrease_speed(speed)
    if stoped?
      puts "Поезд и так уже стоит"
    elsif @speed >= speed
      @speed -= speed
    elsif @speed < speed
      self.stop
    end
  end

  def stop
    @speed = 0
  end

  def stoped?
    @speed == 0
  end

  def add_wagon(wagon)
    if stoped? 
      if type_match?(wagon)
        @wagons << wagon
      else 
        puts "Данный вагон нельзя прицеплять к данному типу поезда"
      end
    else
      puts "Поезд движется, прицеплять вагоны нельзя"
    end
  end

  def del_wagon
    if stoped? 
      unless @wagons.empty?
        @wagons.pop
      else
        puts "У поезда и так нет вагонов"
      end
    else
      puts "Поезд движется, отцеплять вагоны нельзя"
    end
  end


  def set_route(route)
    if route.class == Route
      @current_station.train_leave(self)
      @route = route
      @current_station = route.stations[0]
      @current_station.train_arrive(self)
    else
      puts "Данного маршрута не существует"
    end
  end

  def move_to_station(station)
    @current_station.train_leave(self)
    @current_station = station
    station.train_arrive(self)
  end

  def next_station
    if @route.stations.size >= @route.stations.index(@current_station) + 1
      @next_station = @route.stations[@route.stations.index(@current_station) + 1]
      puts @next_station.name
    else
      puts "Вы находитесь на конечной"
    end
    
  end


  def back_station
    if @route.stations.index(@current_station) > 0
      @back_station = @route.stations[@route.stations.index(@current_station) - 1]
      puts @back_station.name
    else
      puts "Вы находитесь на первой станции"
    end
  end

  protected 
  def initialize_wagons
    @wagons << Wagon.new
  end
  # совпадение типа вагонов проверяется внутри метода - соблюдаем принцип инкапсуляции
  def type_match?(wagon)
    true
  end


end