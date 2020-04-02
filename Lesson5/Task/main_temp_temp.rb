# require_relative 'modules.rb'
# require_relative 'train.rb'
# require_relative 'train_passenger.rb'
# require_relative 'train_cargo.rb'

# require_relative 'route.rb'
# require_relative 'railway_station.rb'

# require_relative 'wagon.rb'
# require_relative 'wagon_cargo.rb'
# require_relative 'wagon_passenger.rb'

# # <============================================== Интерфейс пользователя! ==========================================================>
# class Menu < Train
# 	include Manufacturer
# @st_names = []                
# @@tr_names = []               
# @routes = []                  
# @@wg_names = []  

 
# 		@st_names << RailwayStation.new("a")     							# добавляю новую станцию
# 		@@tr_names << Train.new(1, :passenger, 'MGM')    							# добавляю новый поезд
# 		@@tr_names << Train.new(2, :cargo, 'RJD')
# 		# puts " => всего доступно #{@st_names.length} станций:"
# 		# @st_names.map{|obj| puts obj.name}                                  # показываю все станции
# 		# @train_to_move = @tr_names.select{|obj| obj.number == @tr_input}								
# 		# @train_to_move[0].move_to_st(st_input, @tr_input)                   #отправляю поезд на станцию
# 		puts "<=======================================>"
# 		# puts "содержание массива @st_names: #{@st_names}"
# 		# puts "длина массива @st_names: #{@st_names.length}"
# 		# puts "содержание массива @tr_names: #{@tr_names}"
# 		# puts "длина массива @tr_names: #{@tr_names.length}"
# 		# puts "содержание массива @@st_and_tr: #{@@st_and_tr}"

		

# 				Manufacturer.set_manufacturer
			

# end

require_relative 'modules.rb'
require_relative 'train.rb'

class Menu < Train
	include Manufacturer                
 	@@tr_names = []               
	@@tr_names << Train.new(1, :passenger, 'MGM')    			# добавляю новый поезд в массив @@tr_names

	Manufacturer.set_manufacturer
end