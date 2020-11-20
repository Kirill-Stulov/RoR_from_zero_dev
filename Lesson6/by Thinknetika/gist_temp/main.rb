# require_relative 'modules'
require_relative 'train'
# require_relative 'cargotrain'
# require_relative 'passangertrain'
require_relative 'route'
require_relative 'railwaystation'
require_relative 'wagon'
# require_relative 'passangerwagon'
# require_relative 'cargowagon'



# станции
st1 = RailwayStation.new "first"
st2 = RailwayStation.new "second"

# поезда
tr1 = Train.new "12aa", 1, st1
tr2 = Train.new '12123', 1, st1

# маршруты
route1 = Route.new(st1, st2)

# RailwayStation.all

tr1.set_route(route1)

# p route1.stations[1]
p st1.methods





