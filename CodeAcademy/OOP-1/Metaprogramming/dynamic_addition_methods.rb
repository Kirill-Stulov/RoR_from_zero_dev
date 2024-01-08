# динамическое дописывание программы самой себя
# c:\Users\kirill.stulov\Desktop\OctoberCutover_Back\TEMPO\1. Ruby on Rails c нуля (2015) [Базовый]\Занятие 09 Метапрограммироание

# простейший вариант, здесь пока нет динамического создания кода
x = 0
puts "#{x += 1}"

# например attr_accessor - это метапрограммирование, т.к создается и геттер и сеттер (05:50)

#!! eval - общий метод, который позволяет выполнять произвольный код (05:45)
#  принимает строку или блок и выполняет код
#  любой код, который передаем в eval как строку - может быть выполнен, похоже на интерполяцию
puts eval(' x += 1 ')


# C:\Users\kirill.stulov\Desktop\PROGS\tmp\oop_basics\Task_9\lesson\metaprogramming.rb
# instance_eval вызывается у объекта - публичный метод в отлиичии от eval (Занятие 09 Метапрограммирование 19:00)

#!! module_eval Нужен для динамического расширения модуля (Занятие 09 Метапрограммирование 22:30)
  # irb(main):001:1* module X
  # irb(main):002:0> end
  # => nil
  # irb(main):003:1* class Y
  # irb(main):004:1*   @@y = 12
  # irb(main):005:1*   include X
  # irb(main):006:1* end
  # irb(main):007:0> Y.class_eval('@@y')
  # => 12

#!! class_eval вызывается у класса. Нужен для динамического расширения класса
#  у него есть особенность, когда пишем class_eval через блок или через строку,
#  он выполняется не в контексте класса, а инстанс методов 
  # irb(main):001:1* module X
  # irb(main):002:0> end
  # => nil
  # irb(main):003:1* class Y
  # irb(main):004:1*   @@y = 12
  # irb(main):005:1*   include X
  # irb(main):006:1* end
  # irb(main):007:0> Y.class_eval('@@y')
  # => 12
  irb(main):008:1* Y.class_eval do
  irb(main):009:2*   def m
  irb(main):010:2*     puts 'Hi'
  irb(main):011:1*   end
  # тут видно что если вызовем m то будет ошибка, т.к метода класса m нет
  irb(main):013:0> Y.m
  (irb):13:in `<main>': undefined method `m' for Y:Class (NoMethodError)
  irb(mainfrom C:/Ruby31-x64/lib/ruby/gems/3.1.0/gems/irb-1.4.1/exe/irb:11:in `<top (required)>'
          from C:/Ruby31-x64/bin/irb:33:in `load'
          from C:/Ruby31-x64/bin/irb:33:in `<main>'
  irb(main):014:0>'
  # нужно создать объект и у него будет метод
  irb(main):014:0> y = Y.new
  irb(main):015:0> y.m
  Hi
  # а вот таким образом расширяем динамически модуль
  irb(main):016:0> X.module_eval do
  irb(main):017:2*   def module_method
  irb(main):016:1* X.module_eval do
  irb(main):017:2*   def module_method
  irb(main):018:2'     puts 'module method'
  irb(main):019:2*   end
  irb(main):020:1* end
  => :module_method'
  # класс Y включает этот модуль X, значит у всех объектов класса Y появился этот метод из модуля (Занятие 09 Метапрограммирование 24:50)

# ОДНА ИЗ ОСОБЕННОСТЕЙ eval (любого) в том что динамически добавляем метод в класс и во все объекты
# вот так добавили еще один метод 
irb(main):028:1* class Y
irb(main):029:2*   class_eval do
irb(main):030:3*     def another_method2
irb(main):031:3*       puts "1234"
irb(main):032:2*     end
irb(main):033:1*   end
irb(main):034:0> end
=> :another_method2
# результат
irb(main):036:0> y.another_method2
1234

#!! ЕСТЬ СПЕЦИФИЧНЫЕ МЕТОДЫ ДЛЯ ТОГО ЧТОБЫ НАПРЯМУЮ РАБОТАТЬ С ПЕРЕМЕННЫМИ без геттеров-сеттеров (Занятие 09 Метапрограммирование 27:30)
#  !!!!для работы с переменными класса!!!
#  этот показывает все переменные класса, если они есть
irb(main):037:0> Y.class_variables
=> [:@@y]

# метод чтобы взять значение конкретной переменной. Ему нужно передать в качестве аргумента символ переменной
irb(main):039:0> Y.class_variable_get :@@y
=> 12

# метод чтобы установить значение конкретной переменной. Принимает два аргумента - имя и значение
irb(main):040:0> Y.class_variable_set :@@y, 14
=> 14

# с помощью class_variable_set можно ввести новую переменную
irb(main):042:0> Y.class_variable_set :@@x, 18
=> 18
#  и она динамически появляется
irb(main):043:0> Y.class_variables
=> [:@@y, :@@x]
# т.е не открывая класса, не используя eval, через вот эти методы можем динамически получать и создавать значения

# !!!!для работы с инстанс переменными!!! (Занятие 09 Метапрограммирование 30:30)
#  они вызываются у конкретного объекта
#  создаем объект
irb(main):044:0> y = Y.new
=> #<Y:0x0000026e47ee0608>
#  используем соответствующий метод
irb(main):048:0> y.instance_variable_get :@y
=> nil
irb(main):049:0> y.instance_variable_set :@y, 33
=> 33
#  установленное значение появляется
irb(main):050:0> y.instance_variable_get :@y
=> 33


# !! send метод, позволяет вызвать метод, или иными словами отправить сообщение (Занятие 09 Метапрограммирование 40:45)
#  для примера простейшая прога которая будет вызывать произвольный метод (у строки)
#  введенный пользователем
puts 'Enter string'
str = gets.chomp
puts 'Enter method'
# send принимает в качестве названия метода - символ
method = gets.chomp.to_sym
# вызываем send у строки и передаем имя метода
puts str.send(method)
#  файл send.rb
