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


# p rs1.valid?
# p rs2.valid?
 route1 = Route.new(rs1,rs2)
 # p route1.start_point
 #route1.show_stations

 # Route.show_stations


 # p route1.end_point.class           #!!!! почему у меня в start_point и end_point  было nil?  вместо first и second соответственно. Потому что массив @stations (из route.rb) должен принадлежать классу,а не экземпляру, т.е @@stations 
# tr = Train.new "12aa", 1, rs
tr2 = Train.new "12123", 1, rs1

# puts route1.methods

 tr2.set_route(route1)         #!!! теперь тут была проблема, исправил в train.rb строка 97 на .start_point 
# puts tr2.current_station.name

puts route1.start_point
# tr2.next_station

# tr2.move_to_station(rs2)

# puts tr2.current_station.name

# puts Train.all
# puts Train.find(1)
# puts RailwayStation.all

puts "_________________________________"
# puts "Всего поездов #{Train.instances}"
# puts "Всего станций #{RailwayStation.instances}"

# puts "Поезд валидный?  #{tr2.valid?}"
# puts "Станция валидная?  #{rs1.valid?}"

#p rs1.name

# rs1.train_arrive(tr2)#.class   поезд tr2 прибыл на станцию rs1  rs1 теперь current station по имени First
# puts 'поезда на станции rs1'
# p rs1.trains


# puts "покидаем станцию через train_leave"
# p rs1.train_leave(tr2.number)

# puts 'поезда на станции rs1'
# p rs1.trains


