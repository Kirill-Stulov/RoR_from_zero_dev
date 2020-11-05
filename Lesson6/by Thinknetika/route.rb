class Route
  include Validator
  attr_reader :stations, :start_point, :end_point

  @@stations = []
  
  def initialize(start_point, end_point)
      @start_point = start_point
      @end_point = end_point
      @@stations = [@start_point, @end_point]    #!!! похоже это не работает!
      # p @@stations
      # puts start_point.class
      # puts end_point.class
      # puts '-= initialize end =-'
      validate!
  end

  def self.show_stations # мой проверочный метод, удалить позже, был нужен из-за первоначальной ошибки - @stations вместо @@stations
    puts @@stations
  end

  def add_station(station)
    if station.class == RailwayStation
      @@stations.insert(-2, station)
    else
      raise "Такой станции не существует, сначала задайте станцию"
    end
  end

  def del_station(station)
    @@stations.delete(station)
  end
  
  def get_stations
    print "Список станций: "
    @@stations.each do |station|
      print "#{station.name} "
    end
  end
end