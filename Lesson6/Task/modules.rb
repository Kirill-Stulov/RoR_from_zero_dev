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

# модуль валидации
module Validator

	def valid?              # метод valid? будучи вызванный на объекте, вызывает на нем метод validate!  (метод valid? используем при инициализации в train.rb)
		self.validate!
	rescue RuntimeError => e             # это rescue отрабатывает и выводит сообщение из соответствующего raise от метода validate! (если условие для raise наступило)
  		puts "Exception: #{e.message}"
        # false
	end

	protected
                       
	TR_NUM_PATTERN =   /(.|\d){3}-*(.|\d){2}/ # три буквы или цифры в любом порядке, необязательный дефис (может быть, а может нет) и еще 2 буквы или цифры после дефиса
	RS_NAME_PATTERN =  /^[a-zA-Z]{4,12}$/      # от 4 до 12 любых строчных или прописных латинских букв. От 4 до 12 от начала строки ^ и от конца строки $. От начала и от конца нужно чтобы шаблон не позволял вбивать больше 12

# по заданию
# метод valid? который возвращает true, если объект валидный и false - в противном случае.
	def validate!
		if self.class == Train || TrainPassenger || TrainCargo
			# if @number !~ TR_NUM_PATTERN
			raise "Wrong Number format [aaaaa, 11111, aaa-11, 111-aa]" if @number !~ TR_NUM_PATTERN
			#raise "Wrong number of wagons" if @wagon[0].nil? || @wagon.length > 666                  # мне не нужна проверка наличия вагонов при создании поезда или их критического количества, вагоны добавляются к поездам в отдельном меню. в моем варианте массива с вагонами в initialize wagon, а не wagons
			# raise "Wrong RailwayStation" if @current_station.class != RailwayStation					# мне не нужно проверять при создании поезда, что такая станция существует, станции создаются в отдельном меню
			true
		elsif self.class == RailwayStation
			raise "Wrong name, min 4 symb, max 12 symb and just letters" if @name !~ RS_NAME_PATTERN
			true
		elsif self.class == Route
			raise "ERROR: At least one of this stations does not exist" unless (start_point.class || end_point.class) != RailwayStation
			true
		else
			true
		end
	end

end
