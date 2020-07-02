class CargoTrain < Train
  # include InstanceCounter

  # @@inst = 0  

  # def initialize(wagons, station)
  #   register_instance
  # end

  def add_wagon(wagon = CargoWagon.new)
    super
  end

  protected

  def initialize_wagons
    @wagons << CargoWagon.new
  end

  def type_match?(wagon)
    wagon.class == CargoWagon
  end

end