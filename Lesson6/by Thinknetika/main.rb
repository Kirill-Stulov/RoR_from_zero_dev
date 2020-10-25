require_relative 'modules'
require_relative 'train'
require_relative 'cargotrain'
require_relative 'passangertrain'
require_relative 'route'
require_relative 'railwaystation'
require_relative 'wagon'
require_relative 'passangerwagon'
require_relative 'cargowagon'




rs = RailwayStation.new "first"


# tr = Train.new "12aa", 1, rs
tr2 = Train.new "12123", 1, rs


# puts Train.all
# puts Train.find(1)
# puts RailwayStation.all

puts "_________________________________"
# puts "Всего поездов #{Train.instances}"
# puts "Всего станций #{RailwayStation.instances}"

puts "Поезд валидный?  #{tr2.valid?}"
puts "Станция валидная?  #{rs.valid?}"


 # p RailwayStation.all
 # p Train.all
p Train.find("12")

tr2.description

rs.train_arrive(tr2)


# puts @@stations

# puts rs.trains
 # p tr2.wagons#[0]
 #  p tr2#.manufacturer
 # # puts tr2.methods


