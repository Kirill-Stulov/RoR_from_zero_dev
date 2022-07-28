# https://thinknetica.teachbase.ru/viewer/sessions/419154/materials/173827 13:00
# Способы создания прок их отличия

a = Proc.new { |x| x = x * 10; puts x } # 1. способ. Создаем прок и с помощью аргумента передаем блок:   в одну строку для экономии времени чтоб не писать do end
b = proc { |x| x = x * 10; puts x } # 2. способ создания прок идентичный, только используется метод proc
c = lambda { |x| x = x * 10; puts x }# 3. способ - это метод лямбда. В этом случае тоже создается прок, но у него как видно в выводе (если в начале этой строки поставить p), в скобках написано что это лямбда

# Прок - это некая обертка над блоком, позволяющая представить блок в виде объекта
# Сам по себе код при вызове переменной не выполняется, возвращается только объект
# Чтобы выполнить код хранящийся в таком объекте класса proc, нужно вызвать у него метод call и дальше передаем в него аргументы которые будут переданы в блок
puts a.call(100) # вызываем прок и передаем в него аргумент 

# Между созданием через proc и через lambda есть существенное отличие
#   При создании блока через lambda, при вызове этого блока будет проверяться количество аргументов переданных в метод call 
#   и количество аргументов которые принимает блок.
#   Т.е если блок принимает один аргумент, мы не можем передать в call два аргумента
  
#   В случае если создаем через метод proc или Proc.new - такая проверка не производится  16:00
#   Пример: 
  puts a.call(1,2,3,4) # => 10 - используется только первый аргумент, остальные игнорируются
  puts c.call(1,2,3,4) # => wrong number of arguments (given 4, expected 1) (ArgumentError) Лямбда контроллирует колличество элементов передаваемых в блок и при вызове.
  
