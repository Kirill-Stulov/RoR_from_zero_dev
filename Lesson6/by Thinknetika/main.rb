require_relative 'modules'
require_relative 'train'
require_relative 'cargotrain'
require_relative 'passangertrain'
require_relative 'route'
require_relative 'railwaystation'
require_relative 'wagon'
require_relative 'passangerwagon'
require_relative 'cargowagon'




rs1 = RailwayStation.new("first")
rs2 = RailwayStation.new("second")

# route1 = Route.new(rs1,rs2)

# tr = Train.new "12aa", 1, rs
tr2 = Train.new "12123", 1, rs1


# puts Train.all
# puts Train.find(1)
# puts RailwayStation.all

puts "_________________________________"
# puts "Всего поездов #{Train.instances}"
# puts "Всего станций #{RailwayStation.instances}"

# puts "Поезд валидный?  #{tr2.valid?}"
# puts "Станция валидная?  #{rs1.valid?}"

#p rs1.name

rs1.train_arrive(tr2)#.class   поезд tr2 прибыл на станцию rs1  rs1 теперь current station по имени First
puts 'поезда на станции rs1'
p rs1.trains
# p tr2.current_station

puts "покидаем станцию через train_leave"
p rs1.train_leave(tr2.number)

puts 'поезда на станции rs1'
p rs1.trains
# p tr2.move_to_station(rs2)


# проверяем метод train_leave


puts ">>>>"

# p RailwayStation.all

# self — это ссылка на текущий объект.
# В этом методе используются методы из railwaystation.rb, посредством self в аргументе ссылаемся на текущий объект.
 # def move_to_station(station)
 #    @current_station.train_leave(self)  # (self) означает, что туда попадает объект класса Train (тот поезд на котором вызывается метод move_to_station), т.к действием метода move_to_station нам нужно убрать поезд с текущей станции (на которой поезд оказывается). Дальше поезд удаляется из хеша @trains методом train_leave из railwaystation.rb, в котором срабатывает метод удаления (delete) из хеша по ключу, а ключ у нас -> number  
 #    @current_station = station
 #    station.train_arrive(self)
 #  end