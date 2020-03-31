# Модуль позволяет указывать название компании-производителя и получать его. Подключен к классам Вагон и Поезд
module Manufacturer

	attr_accessor :manufacturer

	def hi(name)
		puts "Hi dear #{name}!"
	end

	def set_manufacturer#(train)                          # КАК ЭТОТ МЕТОД ИСПОЛЬЗОВАТЬ В main_temp.rb !??? (в решении от Thinknetika по уроку 5 этот метод нигде не использван, хотя сам модуль подключен)      # метод для указания производтеля - используем в initialize train.rb и в initialize wagon.rb
		puts "Выберите поезд из списка, чтобы добавить производителя"
		@@tr_names.map{|obj| obj.type_full}
		@tr_input = gets.chomp.to_i
		@@choosen_tr = @@tr_names.select{|obj| obj.number == @tr_input} # выбранный пользователем поезд находим в массиве @@tr_names по аналогии меню №5 где добавляем вагон к поезду. Находить поезд нужно т.к tr_input это не тот объект с которым можно работать, а по сути ссылка, по которой находим объект.
		puts "Выбран поезд №#{@tr_input}"
		puts "Введите название производителя:"
		@manuf_input = gets.chomp
		@@choosen_tr.collect{|obj| obj.manufacturer = @manuf_input }
		puts "Поезду №#{@tr_input} установлен производитель -> #{@manuf_input}"
		p @@choosen_tr
	end


	# def set_manufacturer(manufacturer)
	# 	self.manufacturer = manufacturer
	# end


# метод для просмотра производителя поезда и вагона. А вот где мы это будем смотреть, пока не решил

end
