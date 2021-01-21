# child class to class Vehicle
require_relative 'temp.rb'

class Car < Vehicle
 
 def show_brand
 	puts self.brand
 end

 def show_type
 	puts self.type
 end

 def self.show_br_names   # метод класса Vehicle нужен чтобы чтобы смотреть содержимое @@br_names из класса Car
	p @@br_names
	p @@br_names.length
 end

 def self.delete_last
 	@@br_names.pop
 end



end

lamba = Car.new("bmwy", "sportcar", "yellow")
lamba2 = Car.new("shy", "sedan", "white")
# lamba.show_brand
# lamba.show_type
# p @@br_names
# self.show_br_names

Car.show_br_names

# Car.delete_last
# Car.show_br_names