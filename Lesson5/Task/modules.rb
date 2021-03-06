# толково используем модуль Вынесли сюда и инстанс методы и методы класса.

# Модуль позволяет указывать название компании-производителя и получать его. Подключен к классам Поезд и позже к Вагону 
# для использования методов из модуля, как методов класса -можно использовать extend, только нужно учитывать что в
# цепочке наследования того класса, в котором я примешиваю модуль, сам модуль отображаться не будет.

module Manufacturer

	# attr_accessor :manufacturer

	def hi(name)
		puts "Hi #{name}!"
	end

    # метод для Menu, while choice == 4
	def self.set_tr_manuf(train, number)                                             # self тут означает что это метод класса. Без self нужно будет писать Manufacturer.set_tr_manuf
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
		@wagon = wagon																	# значения кототрые берем из @wagon и @number сидят в @@choosen_wg и @wg_num соответственно (main файл )
		@number = number
		puts "Выбран вагон №#{@number}"
		puts "Введите название производителя:"
		@manuf_input = gets.chomp.to_s
		@wagon.collect{|obj| obj.manufacturer = @manuf_input }
		puts "Вагону №#{@number} установлен производитель -> #{@manuf_input}"
	end

end

#!!!!!!!!!!!!!!!!!!!!!! Более подробдно и правильно все что тут происходит разложено в \RoR_from_zero\Lesson5\By Thinknetika (15 corrections)\modules.rb !!!!!!!!!!!!!!!!!!!!!!!!!!!

# модуль InstanceCounter, содержащий следующие методы класса и инстанс-методы, которые подключаются автоматически 
#  # при вызове include в классе:
#  	#    Методы класса:
#  	#        instances, который возвращает кол-во экземпляров данного класса
#  	#    Инастанс-методы:
#  	#        register_instance, который увеличивает счетчик кол-ва экземпляров класса и который можно вызвать из конструктора. 
#  	# 		  При этом, данный метод не должен быть публичным.
module InstanceCounter                     # этот родительский модуль InstanceCounter, в который все вложено, становится по сути модулем объявления пространства имен


	def self.included(base)
    	base.extend ClassMethods					# включаем подмодуль ClassMethods в родительский InstanceCounter 
    	base.send :include, InstanceMethods			# включаем подмодуль InstanceMethods в родительский InstanceCounter 
    end

	module ClassMethods
		
		attr_accessor :inst 
		
		def instances                               #!!! ЭТОТ МЕТОД ВЫЗЫВАЕТСЯ НА КЛАССЕ И ВЫВОДИТ КОЛИЧЕСТВО ОБЪЕКТОВ КЛАССА, КОТОРЫЕ ПОСЧИТАНЫ МЕТОДОМ register_instance    В СОСТАВЕ ПОДМОДУЛЯ ClassMethods, МОДУЛЯ InstanceCounter 
			@inst											
		end
	end


	module InstanceMethods
		protected

		def register_instance			# как работает разложено в \RoR_from_zero\Lesson5\By Thinknetika (15 corrections)\modules.rb
			self.class.inst ||= 0    
			self.class.inst += 1     # 
		end
	end

end