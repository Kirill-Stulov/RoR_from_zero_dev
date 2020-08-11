# как ПЕРЕХВАТЫВАТЬ ТОЛЬКО ИСКЛЮЧЕНИЯ ОПРЕДЕЛЕННОГО КЛАССА 2
begin
	puts 'Before exception'
	Math.sqrt(-4)
rescue StandardError => e       			# 00:17:50 здесь можно указать кокнретный тип ошибок который мы хотим обрабатывать. Если укажем StandardError то блок rescue будет обрабатывать ошибки только типа StandartError   
	puts "Exception: #{e.message}"           # было e.inspect выводившее весь объект, заменили на метод message, он выводит сообщение из объекта
rescue NoMemoryError => e
	puts "No memory!!!"
end

puts 'After exception'


# таким образом код защищен двумя обработчиками исключений
# Если в рамках этого кода возникнет исключение StandardError или его подклассов, то будет выведена строка 5
# Если возникнет NoMemoryError, то выведется сообщение из строки 7 No memory!!! 