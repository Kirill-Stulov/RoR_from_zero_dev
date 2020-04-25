# Модуль позволяет указывать название компании-производителя и получать его. Подключен к классам Поезд и позже к Вагону 
# для использования методов из модуля, как методов класса -можно использовать extend, только нужно учитывать что в
# цепочке наследования того класса, в котором я примешиваю модуль, сам модуль отображаться не будет.

module Manufacturer

	# attr_accessor :manufacturer

	def hi(name)
		puts "Hi #{name}!"
	end


    # метод для Menu, while choice == 4
	def self.set_tr_manuf(train, number)                                             # self тут означает что это метод класса. Без self нужно будет писать Manufacturer.set_manufacturer
		@train = train                                                                 # значения кототрые берем из @train и @number сидят в @@choosen_tr и @tr_num соответственно (main файл )
		@number = number     
		puts "Выбран поезд №#{@number}"
		puts "Введите название производителя:"
		@manuf_input = gets.chomp.to_s                                                   
		@train.collect{|obj| obj.manufacturer = @manuf_input }
		puts "Поезду №#{@number} установлен производитель -> #{@manuf_input}"
	end
								##!!! Либо делать второй отдельный метод для вагона, либо городить в этом методе проверку поезд или вагон передаю данные свои и в зависимости от этого менять текстовый вывод
										# решил сделать отдельный метод для вагона

	 # метод для Menu, while choice == 6	
	def self.set_wg_manuf(wagon, number)
		@wagon = wagon
		@number = number
		puts "Выбран вагон №#{@number}"
		puts "Введите название производителя:"
		@manuf_input = gets.chomp.to_s
		@wagon.collect{|obj| obj.manufacturer = @manuf_input }
		puts "Вагону №#{@number} установлен производитель -> #{@manuf_input}"
	end


end