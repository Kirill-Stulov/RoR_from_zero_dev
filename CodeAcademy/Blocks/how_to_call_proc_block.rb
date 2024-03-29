# see in 3_ways_to_create_proc

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
  
# Пример вызова блока через call смотри в \Task_7\lesson\how_to_write_functions_which_accepts_block.rb
