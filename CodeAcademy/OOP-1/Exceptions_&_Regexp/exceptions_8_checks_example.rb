# Ruby on Rails c нуля (2015) [Базовый]\Занятие 06 Исключения 00:37:55
# практичный пример

# допустим хотим сделать у класса Car атрибут number (регистрационный номер) и проверять его на валидность

class Car
	attr_reader :current_rpm
	attr_accessor :number			#1 создадим через attr_accessor геттеры и сеттеры для атрибута number

	NUMBER_FORMAT = /^[а-я]{1}\d{3}[а-я]{2}/i

	def initialize(number)          #3 вызываем обязательный параметр number при инициализации
		@number = number             # присваиваем этот параметр в переменную
		@current_rpm = 0
		validate!                   	#4 вызываем validate! в конструкторе, чтобы проверки срабатывали при создании объекта класса Car 
	end 									#5 итого - объект не будет создан если его параметр не соответствует условиям validate!

	def start_engine
		start_engine! if engine_stopped?
	end

	def engine_stopped?
		current_rpm.zero?
	end

	def valid?                      #6 добавили публичный метод valid? для обращения к защищенному методу validate!   Метод valid? возвращает либо true, либо false
		validate!
	rescue							# в случае если было исключение в validate!, возвращаем false 00:54:40
		false
	end
							
									
	protected
	#2 внутри метода - выбрасывает исключение стандартного типа RunTimeError
	# с сообщением что номер не может быть пустым если, если номер пустой 
	#создаем метод validate! который проверяет правильность данных в атрибуте number...
	# ... если данные неправильные, то выбрасываем некое исключение. Если все хорошо, то будет true
			# ! в методе означает что метод может серьезно повлиять на программу, метод со знаком ! в конце - это так называемый BANG метод.
			# метод помещен в protected, т.к вызывается при инициализации, а в protected его нельзя будет вызвать напрямую 00:54:00
	def validate!															
		raise "Number can't be nill" if number.nil?  													  	# выбрасываем сообщение если номер пустой
		raise "Number must be at least 6 symbols" if number.length < 6										# и еще такое
		raise "Number has invalid format" if number !~ NUMBER_FORMAT     #/^[а-я]{1}\d{3}[а-я]{2}/i        	# выбрасываем сообщение если номер не совпадает с шаблоном /^[а-яА-Я]{1}\d{3}[а-яА-Я]{2}/   что это за шаблон смотри в 10_check_number_via_regexp_.rb   Само рег выражение поместили в константу NUMBER_FORMAT
		true 																								# в противном случае возвращем true, просто чтобы что-то возвращать													
	end 																	
				

	attr_writer :current_rpm

	def initial_rpm
		700
	end

	def start_engine!
		self.current_rpm = initial_rpm
	end

end


# проверка
# c1 = Car.new('123456')
# 	# => Number has invalid format. Вылетает ошибка, проверка работает.
# p c1


c2 = Car.new('ф123уу')
p c2
	# => <Car:0x2e3c698 @number="\u0444123\u0443\u0443", @current_rpm=0>  объект создается, проверка работает
	p c2.valid?