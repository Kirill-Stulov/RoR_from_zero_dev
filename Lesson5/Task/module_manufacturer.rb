# Модуль позволяет указывать название компании-производителя и получать его. Подключен к классам Вагон и Поезд
module Manufacturer

	attr_accessor :manufacturer

	def hi(name)
		puts "Hi dear #{name}!"
	end

	def set                               # КАК ЭТОТ МЕТОД ИСПОЛЬЗОВАТЬ В main_temp.rb !??? (в решении от Thinknetika по уроку 5 этот метод нигде не использван, хотя саммодуль подключен)      # метод для указания производтеля - используем в initialize train.rb и в initialize wagon.rb
		puts "Укажите название производителя"
		@manuf_name = gets.chomp.to_s
		puts "Указано название производителя - #{@manuf_name}"
	end


	# def set_manufacturer(manufacturer)
	# 	self.manufacturer = manufacturer
	# end


# метод для просмотра производителя поезда и вагона. А вот где мы это будем смотреть, пока не решил

end
