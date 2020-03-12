require_relative 'car'
require_relative 'truck'
require_relative 'sport_car'

bmw = Car.new
volvo = Truck.new
lamba = SportCar.new

p bmw.current_rpm
bmw.start_engine
p bmw.current_rpm

p volvo.current_rpm
volvo.start_engine
p volvo.current_rpm

p lamba.current_rpm
lamba.start_engine
p lamba.current_rpm
