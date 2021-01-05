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
module InstanceCounter                      # Ruby on Rails c нуля (2015) [Базовый]\Занятие 05. Методы класса, Модули и объектная модель Ruby 0:31:20
                                            #!!! НЕОБХОДИМОСТЬ СОВМЕСТИТЬ В ОДНОМ МОДУЛЕ МЕТОДЫ КЛАССА И МЕТОДЫ ЭКЗЕМПЛЯРА КЛАССА Т.Е ИНСТАНС МЕТОДЫ. потому тут в модуле InstanceCounter два подмодуля ClassMethods и InstanceMethods
  def self.included(base)                     # included это внутренний метод (хук) 0:35:45 self означает, что метод included не включается в тот класс в который мы подключаем модуль, а является методом самого модуля. И этот метод принимает один параметр (назвали его тут base), туда будет передаваться сам класс в который подключаем модуль. Например self.included(train)
    base.extend ClassMethods                  # на аргументе base вызываем метод класса extend. !!!!extend это просто метод который в качестве аргумента принимает название модуля ClassMethods!!!  #!!! extend включает методы которые есть в модуле как методы класса
    base.send :include, InstanceMethods       # include является приватным методом класса, потому его нельзя просто вызвать на аргументе base, !!!!нужно использовать метод send, через который вызывем include и подключаем модуль InstanceMethods!!!! (через send можно вызвать приватные методы 0:38:20)#!!! include подключает методы которые есть в модуле как инстанс методы   0:35:00;
  end

  module ClassMethods
    
    attr_accessor :inst

    def instances            # Метод класса instances, возвращает кол-во экземпляров класса. Подключен в train.rb и railwaystation.rb. используется в конце main.rb 
      @inst
    end

  end

  module InstanceMethods
    protected
    
    def register_instance       #метод считает кол-во экземпляров класса, вызваем его из конструктора на каком либо классе
      self.class.inst ||= 0       # self.class нужно чтобы вызывать переменную экземпляра @inst из инстанс метода !!!В этой строке если переменной inst уже что-то присвоено, то ничего не присваиваем, оставляя текущее значение(по сути присваиваем текущее значение). Если ничего не присвоено (т.е там nil), присваиваем 0. Если непонятно, смотри файл RoR_from_zero\CodeAcademy\Operators\or_equal.rb
      self.class.inst += 1          # далее увеличиваем значение переменной экземпляра @inst при вызове.
    end
  end

end

module Validator

  def valid?            #метод применяется в main (стр. 29 и 30 проверка валидности поезда и станции)  метод valid? возвращает true, если объект валидный и false - в противном случае
    self.validate!       # для провеки на валидность, используется метод validate! self указывает, что обращение идет к методу validate! который указан в initialize этого класса (посмотри к примеру tr2.methods)
  rescue
    false                   # если в блоке над rescue вылетает ошибка (одна из raise), то на вывод идет то, что под rescue, а именно false
  end

  protected 

  NUMBER_PATTERN = /(.|\d){3}-*(.|\d){2}/i       # константа с допустимым форматом номера  (три буквы или цифры в любом порядке, необязательный дефис (может быть, а может нет) и еще 2 буквы или цифры после дефиса) /i делает выражение нечувствительным к регистру
  RAILWAYSTATION_NAME_PATTERN = /^[a-zA-Z]{4,10}$/   # {4} означает длину не меньше 4 символов (от 4 до 10)!!!!  !!!константа с допустимым форматом имени станции. Шаблон - любые четыре-десять строчных или прописных латинских букв/ #{4} обозначает допустимое количество повторений подшаблона !!!! в случае диапозона, если нужно ровно 4 символа не больне ни меньше, то указываем что 4 с начала и 4 с конца через: ^ начало $ конец

  def validate!              # метод помещен в protected, т.к вызывается при инициализации, а в protected его нельзя будет вызвать напрямую 00:54:00
    if self.class == Train    # если это объект класса Train
      raise "Wrong Number format [aaaaa, 11111, aaa-11, 111-aa]" if @number !~ NUMBER_PATTERN  #Допустимый формат: три буквы или цифры в любом порядке, необязательный дефис (может быть, а может нет) и еще 2 буквы или цифры после дефиса.
      raise "Wrong number of wagons" if @wagons[0].nil? || @wagons.length > 682 # самый длиный поезд в мире :)
      raise "Wrong RailwayStation" if @current_station.class != RailwayStation   # что такая станция существует
      true                                                                       # если ни один из raise не сработал (т.е если все условия удовлеторены), то будет выведено true
    elsif self.class == RailwayStation # если объект класса RailwayStation
      raise "Wrong name, min 4 symb and just letters" if @name !~ RAILWAYSTATION_NAME_PATTERN  # выводим строку "Wrong name..., если переменная @name содержит строку не соответвтующую шаблону в константе RAILWAYSTATION_NAME_PATTERN (а именно, проверяем что имя станции соответствует шаблону в RAILWAYSTATION_NAME_PATTERN)
      true                                                                                    # если требование к имени станции удовлетворено, будет выведено true
    elsif self.class == Route   # если объект класса Route
      raise "ОШИБКА: Хотя бы одна их указанных станций не существует" unless start_point.class == RailwayStation && end_point.class == RailwayStation  # выводит exception до тех пор пока обе - начальная и конечная станция не созданы
      true
    else
      true
    end
  end
end