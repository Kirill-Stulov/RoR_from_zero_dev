module Manufacturer
  @manufacturer = ''
  def manufacturer=(man)
    @manufacturer = man
  end

  def manufacturer
    puts @manufacturer
  end
end

module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    attr_accessor :inst

    def instances
      @inst
    end
  end

  module InstanceMethods
    protected

    def register_instance
      self.class.inst ||= 0
      self.class.inst += 1
    end
  end
end

module Validator
  def valid?
    validate!
  rescue
    false
  end

  protected

  NUMBER_PATTERN = /(.|\d){3}-*(.|\d){2}/i
  RAILWAYSTATION_NAME_PATTERN = /[a-zA-Z]{4,}/

  def validate!
    if self.class == Train
      fail 'Wrong Number format [aaaaa, 11111, aaa-11, 111-aa]' if @number !~ NUMBER_PATTERN
      fail 'Wrong number of wagons' if @wagons[0].nil? || @wagons.length > 682 # The longest train in the world :)
      fail 'Wrong RailwayStation' if @current_station.class != RailwayStation
      true
    elsif self.class == RailwayStation
      fail 'Wrong name, min 4 symb and just letters' if @name !~ RAILWAYSTATION_NAME_PATTERN
      true
    elsif self.class == Route
      fail "ОШИБКА: Хотя бы одна их указанных станций не существует" unless start_point.class == RailwayStation && end_point.class == RailwayStation
      true
    else
      true
    end
  end
end