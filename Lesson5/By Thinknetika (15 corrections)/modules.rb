# толково используем модуль Вынесли сюда и инстанс методы и методы класса.


module Manufacturer
  @manufacturer = ""
  def set_manufacturer(man)
    @manufacturer = man
  end

  def manufacturer
    puts @manufacturer
  end
end

# пример подобного в class_and_instance_methods_in_module2.rb
# этот модуль подклчается в train.rb (там есть описание того что происходит)
module InstanceCounter                                        # Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:31:20
                                                              #!!! НЕОБХОДИМОСТЬ СОВМЕСТИТЬ В ОДНОМ МОДУЛЕ МЕТОДЫ КЛАССА И МЕТОДЫ ЭКЗЕМПЛЯРА КЛАССА Т.Е ИНСТАНС МЕТОДЫ. потому тут в модуле InstanceCounter два подмодуля ClassMethods и InstanceMethods
  def self.included(base)                                       # included это внутренний метод (хук) 0:35:45 self означает, что метод included не включается в тот класс в который мы подключаем модуль, а является методом самого модуля. И этот метод принимает один параметр (назвали его тут base), туда будет передаваться сам класс в который подключаем модуль. Например self.included(train)
    base.extend ClassMethods                                   # на аргументе base вызываем метод класса extend. !!!!extend это просто метод который в качестве аргумента принимает название модуля ClassMethods!!!  #!!! extend включает методы которые есть в модуле как методы класса
    base.send :include, InstanceMethods                       # include является приватным методом класса, потому его нельзя просто вызвать на аргументе base, !!!!нужно использовать метод send, через который вызывем include и подключаем модуль InstanceMethods!!!! (через send можно вызвать приватные методы 0:38:20)#!!! include подключает методы которые есть в модуле как инстанс методы   0:35:00; 
  end

  module ClassMethods
    
    attr_accessor :inst

    def instances                # Метод класса instances, возвращает кол-во экземпляров класса. Подключен в train.rb и railwaystation.rb. используется в конце main.rb 
      @inst
    end

  end

  module InstanceMethods
    protected
    
    def register_instance         #метод считает кол-во экземпляров класса, вызваем его из конструктора на каком либо классе
      self.class.inst ||= 0         # self.class нужно чтобы вызывать переменную экземпляра @inst из инстанс метода   !!! В этой строке присваиваем переменной изначальное значение равное своему значению или 0
      self.class.inst += 1            # далее увеличиваем значение переменной экземпляра @inst при вызове.
    end
  end

end