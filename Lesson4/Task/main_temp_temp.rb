require_relative 'train.rb'
require_relative 'train_passenger.rb'
require_relative 'train_cargo.rb'

require_relative 'route.rb'
require_relative 'railway_station.rb'

require_relative 'wagon.rb'
require_relative 'wagon_cargo.rb'
require_relative 'wagon_passenger.rb'

# <============================================== Интерфейс пользователя! ==========================================================>
class Menu < Train
@st_names = []                #1 stations_names массив в котором храним объекты с именами станций при выборе 1
@tr_names = []                #3 массив в котором храним объекты с именами поездов при выборе 3
@routes = []                  # 2
st_input = "a"
@tr_input = 2

 
		@st_names << RailwayStation.new("a")     							# добавляю новую станцию
		@tr_names << Train.new(1, :passenger)    							# добавляю новый поезд
		@tr_names << Train.new(2, :cargo)
		# puts " => всего доступно #{@st_names.length} станций:"
		# @st_names.map{|obj| puts obj.name}                                  # показываю все станции
		@train_to_move = @tr_names.select{|obj| obj.number == @tr_input}								
		@train_to_move[0].move_to_st(st_input, @tr_input)                   #отправляю поезд на станцию
		puts "<=======================================>"
		# puts "содержание массива @st_names: #{@st_names}"
		# puts "длина массива @st_names: #{@st_names.length}"
		# puts "содержание массива @tr_names: #{@tr_names}"
		# puts "длина массива @tr_names: #{@tr_names.length}"
		# puts "содержание массива @@st_and_tr: #{@@st_and_tr}"

		# if @tr_names.any?{|obj| obj.number == 1}
		# 	puts obj.number
		# else
		# 	puts "??"
		# end
		@st_and_tr_num = @@st_and_tr.detect{ |key, value| value.include?(@tr_input)}     # тут вместо @tr_input нужно что-то другое, иначе у нас тут всегда будет только последнее вводимое пользователем значение
		p @st_and_tr_num[1][0]                                                           # т.к current_tr.num выдает массив [:a, [2]], то делаем @current_tr_num[1][0] и получаем нужный элемент массива - 2
		# теперь по этой переменной @current_tr_num[1][0], надо искать в массиве @tr_names
		# p @tr_names.detect{|obj| obj.number == @current_tr_num[1][0]}   # находим
		@tr_type = @tr_names.detect{|obj| obj.number == @st_and_tr_num[1][0]}
		p @tr_type.type                                                       # получаем
		# ну это пиздос конешн таким макаром получать номер поезда, но я сделал

		#p @@st_and_tr
		p @@st_and_tr.values.include?([2])
		#if @@st_and_tr.any?{} key and st_and_tr value == @tr_names.any? 
		#p @tr_names.any?{|obj| obj.number == @st_and_tr_num[1][0]}  
		#@tr_names.any?{|obj| obj.number == @st_and_tr.any?{|key, value| }}
		# a = @@st_and_tr.any?{ |key, value| value.include?(@tr_names.any?{|obj| obj.number})}
        #@@st_and_tr.keys.any?{ |key, value| value.include?(@tr_names.any?{|obj| obj.number})}
        #p @@st_and_tr.values.include?([2])
		 p @@st_and_tr.values.include?(@tr_names.any?{|obj| obj.number = [obj.number]})
		 p @@st_and_tr
		  p @tr_names
		 # @tr_names.any?{|obj| p obj.number}


		 a = [1,2,3,4]
		 h = {"num1"=>1, "num2"=> 2, "num3"=>3, "num4"=>4}
		 # p a - h.values
		 p h.values == a 

		puts "----"
		puts "----"
		puts "<=======================================>"
		# @@st_and_tr.each{ |key,value| puts "Станция: #{key}, Поезд: #{value} - тип ... " } # показываем все станции с поездами

=begin
# мой метод
  # по номеру @number из массива @@st_and_tr находит объект в массиве @tr_names и выводит тип объекта, т.е аттрибут type поезда
  # это метод будет использоваться в 
  # как сделаю этот метод, останется доделать добавление и удаление поездов
  def tr_type
  	if @@st_and_tr.any?{|key, value| value.include?(@number) }
		puts @number
		puts @type
		puts "<=====================================>"
	else
		puts "no number or type"
	end
    #поиск значений одного массива в другом
  end	

end

puts "<=====================================>"

test1 = Menu.new(3, :cargo)
test1.move_to_st("a",1)
# test1.tr_type
# test1.type
# p test1

=end

end