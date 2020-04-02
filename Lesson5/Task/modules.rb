# Модуль позволяет указывать название компании-производителя и получать его. Подключен к классам Поезд и позже к Вагону 
# для использования методов из модуля, как методов класса -можно использовать extend, только нужно учитывать что в
# цепочке наследования того класса, в котором я примешиваю модуль, сам модуль отображаться не будет.


module Manufacturer

	# attr_accessor :manufacturer

	def hi(name)
		puts "Hi #{name}!"
	end

	# def Manufacturer.set_manufacturer#(train)                           # метод для указания производтеля - используем в initialize train.rb и в initialize wagon.rb # !!!!ыТакая конструкция (Manufacturer.set_manufacturer) позволяет использовать его как метод класса. Если задать просто (set_manufacturer), то при подключении модуля Manufacturer в main.rb, класс Menu не будет узнавать его как метод set_manufacturer. (в решении от Thinknetika по уроку 5 этот метод нигде не использван, хотя сам модуль подключен)
	# 	puts "Выберите поезд из списка, чтобы добавить производителя"
	# 	@@tr_names.map{|obj| obj.type_full}
	# 	@tr_input = gets.chomp.to_i
	# 	@@choosen_tr = @@tr_names.select{|obj| obj.number == @tr_input} # выбранный пользователем поезд находим в массиве @@tr_names по аналогии меню №5 где добавляем вагон к поезду. Находить поезд нужно т.к tr_input это не тот объект с которым можно работать, а по сути ссылка, по которой находим объект.
	# 	puts "Выбран поезд №#{@tr_input}"
	# 	puts "Введите название производителя:"
	# 	@manuf_input = gets.chomp
	# 	@@choosen_tr.collect{|obj| obj.manufacturer = @manuf_input }
	# 	puts "Поезду №#{@tr_input} установлен производитель -> #{@manuf_input}"
	# 	p @@choosen_tr
	# end


	def Manufacturer.set_manufacturer#(train)
		#@train = train
		@@choosen_tr.collect{|obj| obj.manufacturer = @manuf_input }
		puts "Поезду №#{@tr_input} установлен производитель -> #{@manuf_input}"
		p @@choosen_tr
	end
	# 	puts "Выберите поезд из списка, чтобы добавить производителя"
	# 	@@tr_names.map{|obj| obj.type_full}
	# 	@tr_input = gets.chomp.to_i
	# 	@@choosen_tr = @@tr_names.select{|obj| obj.number == @tr_input}
	# 	puts "Выбран поезд №#{@tr_input}"
	# 	puts "Введите название производителя:"
	# 	@manuf_input = gets.chomp
	# 	@@choosen_tr.collect{|obj| obj.manufacturer = @manuf_input }
	# 	puts "Поезду №#{@tr_input} установлен производитель -> #{@manuf_input}"
	# 	p @@choosen_tr
	# end

end
