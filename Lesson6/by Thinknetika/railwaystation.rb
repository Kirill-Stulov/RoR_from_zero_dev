class RailwayStation
  include InstanceCounter
  include Validator
  attr_reader :name, :trains
  @@stantions = {}
  
  def initialize(name)
    @name = name.to_s.capitalize
    @trains = {}
    
    validate!                  # метод из modules, при создании объекта этого класса проверяет формат номера поезда, кол-во вагонов, что станция существует

    @@stantions[@name] = self  # В хеш @@stations таким методом добавляется пара ключ-значение. Ключом будет имя объекта (имя станции), а значением сам объект (станция)  
    register_instance
  end

  def self.all               # метод класса, вызывается на самом классе RailwayStation, выводит содержимое хеша, присвоенного переменной класса @@stations  
    @@stantions
  end
  
  def train_arrive(train)
    @trains[train.number] = train # В хеш @trains таким методом добавляется пара ключ-значение. Ключом будет номер объекта (номер поезда), а значением сам объект (поезд)
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
  def train_leave(number)
    @trains.delete(number)   #удаляем поезд из хеша @trains по ключу number посредством метода delete. delete принимает number в качестве параметра
  end
  
end