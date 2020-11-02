class Train
  include Manufacturer
  include InstanceCounter
  include Validator
  attr_reader :speed, :wagons, :current_station, :number
  
  @@trains = {}
  
  def initialize(number, wagons, station)
    
    @speed = 0
    @wagons = []
    @number = number.to_s           # добавился аттрибут - номер поезда

    wagons.times {initialize_wagons} # как работает разложено в \RoR_from_zero\Lesson5\By Thinknetika (15 corrections)\train.rb
    @current_station = station

    validate!                       # метод из modules, при создании объекта этого класса проверяет (в зависимости от класса на котором вызван): формат номера поезда, кол-во вагонов, что станция существует    

    station.train_arrive(self)      #!!!!!! сразу при инициализации отправляем поезд на станцию station. station - это параметр передаваемый во время создания поезда (имя станции). self это сам поезд!!!!!??????. Метод train_arrive из railwaystation.rb                      
    raise "Train with number \"#{@number}\" already exist" unless self.class.find(@number).nil?  # self.class нужно чтобы воспользоваться методом find (который у нас метод класса - строка 33)
    @@trains[@number] = self        # в хеш @@trains добавляется пара: номер поезда (@numer) ключ, сам объект (поезд self) значение

    register_instance               #метод увеличивает счетчик кол-ва экземпляров класса, вызваем его из конструктора на классе train

  end


  def description
    puts "Это экземпляр класса #{self.class}"
  end

  def self.find(number)              # метод класса, выводит поезд по номеру из хеша @@trains
    # raise "Train number #{number} is not present!" unless @@trains[number] == nil?
    @@trains[number]
  end

  def self.all                      # метод класса, выводит список поездов
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
        raise "Данный вагон нельзя прицеплять к данному типу поезда"
      end
    else
      raise "Поезд движется, прицеплять вагоны нельзя"
    end
  end

  def del_wagon
    if stoped? 
      unless @wagons.empty?
        @wagons.pop
      else
        raise "У поезда и так нет вагонов"
      end
    else
      raise "Поезд движется, отцеплять вагоны нельзя"
    end
  end

#!!!!!!!!!!проверить метод set_route и проверить через inspect, что в (self) попадает именно поезд  
  def set_route(route)                       # метод постановки поезда на маршрут. 
    if route.class == Route                   # если значение аргумента route принадлежит классу Route
      @current_station.train_leave(self)       #!!!!!!! НАПИСАТЬ ТУТ ПРАВИЛЬНЫЙ КОММЕНТ  на текущей станции вызываем метод train_leave из railwaystation.rb, в качестве аргумента self передаем поезд (его объект)??? но метод train_leave в качестве параметра принимает number. Вопрос, что в этой строке попадает в качестве self? Номер поезда??? !!! self — это ссылка на текущий объект. Используй inspect чтобы подглядеть
      @route = route
      @current_station = route.stations[0]
      @current_station.train_arrive(self)
    else
      raise "Данного маршрута не существует"
    end
  end

# self — это ссылка на текущий объект.
# В этом методе используются методы из railwaystation.rb, посредством self в аргументе ссылаемся на текущий объект.
  def move_to_station(station)
    @current_station.train_leave(self)      # (self) означает, что туда попадает объект класса Train (тот поезд на котором вызывается метод move_to_station), т.к действием метода move_to_station нам нужно убрать поезд с текущей станции (на которой поезд оказывается). Дальше поезд удаляется из хеша @trains методом train_leave из railwaystation.rb, в котором срабатывает метод удаления (delete) из хеша по ключу, а ключ у нас -> number
    @current_station = station               # далее текущей станцией становится значение передаваемое в параметре (station)
    station.train_arrive(self)                # теперь методом train_arrive отправляем поезд (self), на станцию. Метод train_arrive пишет новую пару в хеш @trains который принадлежит классу Railwaystation. 
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
 
  def type_match?(wagon)
    true
  end

end