# (Занятие 09 Метапрограммирование 21:00)
#  additional materials:
#  • Код проекта: github.com
#  • О метапрограммировании на русском: habrahabr.ru
#  • Описание method_missing: wlowry88.github.io
#  Мини-курс по метапрограммированию: rubymonk.com

# class Foo
#   def initialize
#     @bar = 'instance var'
#   end

#   private

#   def private_method
#     puts "I'am private method"
#   end
# end

# запускаем и получаем доступ к инстанс переменной @bar (и к любому другому свойству класса Foo) через instance_eval
# irb(main):001:0> load './metaprogramming.rb'
# => true
# foo = Foo.new

# foo.instance_eval('@bar')
# => "instance var"

# irb(main):006:0> foo.instance_eval('private_method')
# I'am private method

# можно писать не в строках, а в блоке
  # irb(main):001:0> load './metaprogramming.rb'
  # => true
  # irb(main):002:0> foo = Foo.new
  # => #<Foo:0x00000293225adcc0 @bar="instance var">
  # вот так выглядит вариант в блоке
  # irb(main):003:1* foo.instance_eval do
  # irb(main):004:2*   def m
  # irb(main):005:2*     puts "public method"
  # irb(main):006:2*     puts "instance var: #{@bar}"
  # irb(main):007:2*     private_method
  # irb(main):008:1*   end
  # irb(main):009:0> end
  # => :m
# если сейчас вызовем у foo метод m
# irb(main):010:0> foo.m
# то выдаст значение инстанс переменной и приватного метода, Т.Е ИМЕЕМ ДОСТУП КО ВСЕМУ ЧТО ЕСТЬ В КЛАССЕ
# public method
# instance var: instance var
# I'am private method

# (Занятие 09 Метапрограммирование 34:40)
# попробуем сделать собственную реализацию attr_accessor
#  т.к это метод будет метод класса, то модуль будем подключать черезе extend
module MyAttrAccessor
  # будет принимать имя метода, который нам нужно будет создать
  #  *names - это произвольный массив аргументов
  def my_attr_accessor(*names)
    # (Занятие 09 Метапрограммирование 35:40) нам нужно создать геттер и сеттер и инстанс переменную, которая будет через них устанавливаться
    # имя переменной для метопрограммирования должно быть в виде символа и содержать @
    # поэтому для начала нужно получить имя переменной в виде символа
    names.each do |name|
    var_name = "@#{name}".to_sym
      # теперь нужно определить два динамических метода 36:30
      #  (ГЕТТЕР) в качестве имени передаем символ из параметров, дальше передаем однострочный блок - получается динамичный геттер
      #  все что этот метод делает - получает значение соответствующей инстанс переменной
      define_method(name) { instance_variable_get(var_name) } # это геттер
      #  (СЕТТЕР) у него имя после названия должно включать знак =
      #  через интерполяцию вызываем name и добавляем "=" и все это преобразуем к символу
      #  т.к сеттер принимает аргумент, этот аргумент задается как элемент блока |value| (37:50)
      define_method("#{name}=".to_sym) { |value| instance_variable_set(var_name, value) } # это сеттер 37:40
    end
  end
end

# проверим наш метод 38:10
#  напишем тестовый класс и подключим модуль
class Test
  extend MyAttrAccessor

  # вызовем метод
  my_attr_accessor :my_attr, :a, :b, :c #(39:50)
end

# проверяем в irb
# irb(main):009:0> load './metaprogramming.rb'
# => true
# irb(main):010:0> test = Test.new
# => #<Test:0x000002a1241cb9f8>
# irb(main):011:0> test.my_attr
# => nil
# irb(main):012:0> test.my_attr = 5
# => 5
# irb(main):013:0> test.my_attr
# => 5
# irb(main):014:0> test.instance_variables
# => [:@my_attr]
# irb(main):015:0> test
# => #<Test:0x000002a1241cb9f8 @my_attr=5> (38:50) только что создали свою реализацию attr_accessor
# если перезагрузим и проверим какие у нас есть инстанс переменные
#  то не будет никаких, потому что они все не инициализированы
# irb(main):003:0> test.instance_variables
# => []
#  если начнем обращаться к методам :a, :b, :c которые только что определили
#  то ини все появятся
# irb(main):004:0> test.a
# => nil
# irb(main):005:0> test.a = 7
# => 7
irb(main):007:0> test.b = 12
=> 12
irb(main):008:0> test
=> #<Test:0x0000017803f3b430 @a=7, @b=12>
