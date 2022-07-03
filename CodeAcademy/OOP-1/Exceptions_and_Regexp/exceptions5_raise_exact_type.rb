# RuntimeError общий тип для различных иключений связанных со временем выполнения
# часто может понадобиться указать какой-то более точный тип 00:27:55
# например если в метод пришли неверные параметры, то можно указать что тип не RuntimeError а ArgumentError



def method_with_error              # 00:25:45
	#....
	raise ArgumentError, 'Oh god, you piss me off!'   # выбрасываем исключение типа ArgumentError   Делается это передавая тип исключения, потом запятая и сообщение
end

# обработчик ошибок для метода method_with_error
begin                             
	method_with_error
rescue ArgumentError => e        # соответственно отлавливаем тип исключения ArgumentError
	puts e.inspect				# здесь выведем объект
end

puts 'After exception'

