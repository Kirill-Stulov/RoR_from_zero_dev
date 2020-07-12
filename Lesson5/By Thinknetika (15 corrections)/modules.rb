module Manufacturer
  @manufacturer = ""
  def set_manufacturer(man)
    @manufacturer = man
  end

  def manufacturer
    puts @manufacturer
  end
end

module InstanceCounter                                        # Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:31:20
                                                              #!!! НЕОБХОДИМОСТЬ СОВМЕСТИТЬ В ОДНОМ МОДУЛЕ МЕТОДЫ КЛАССА И МЕТОДЫ ЭКЗЕМПЛЯРА КЛАССА Т.Е ИНСТАНС МЕТОДЫ. потому тут в модуле InstanceCounter два подмодуля ClassMethods и InstanceMethods
  def self.included(base)
    base.extend ClassMethods                                    #!!! include подключает методы которые есть в модуле как инстанс методы   0:35:00
    base.send :include, InstanceMethods                         #!!! extend включает методы которые есть в модуле как методы класса
  end

  module ClassMethods
    
    attr_accessor :inst

    def instances                # Метод класса instances, возвращает кол-во экземпляров класса. Подключен в train.rb и railwaystation.rb. используется в конце main.rb 
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