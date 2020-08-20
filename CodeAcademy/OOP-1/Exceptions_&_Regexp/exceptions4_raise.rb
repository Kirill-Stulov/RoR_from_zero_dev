# вызов raise из блока rescue без параметров 
# как выбросить исключение повторно, после его обработки  00:25:00 

# begin
# 	puts 'Before exception'
# 	Math.sqrt(-1)
# rescue StandardError => e    	# имитируем запись в лог (некую строку, которую пишем в лог)
# 	puts "Error!"
# 	raise 						 # raise - команда выброса исключения. Если raise в блоке rescue пишем без каких-либо аргументов, то тоже исключение будет выброшено повторно у снова отловлено не будет
# rescue NoMemoryError => e
# 	puts "No memory!!!"
# end

# puts 'After exception'

# raise может принимать различные аргументы



def method_with_error              # 00:25:45
	#....
	raise 'Oh god, you piss me off!'
end

# обработчик ошибок для метода method_with_error
begin                             
	method_with_error
rescue RuntimeError => e   		# отлавливаем тип исключения RuntimeError
	puts e.inspect				# здесь выведем объект
end

puts 'After exception'

# в 27 строке вызываем метод с ошибкой, он выбрасывает исключение, исключение отлавливается, выводится пользователю и программа продолжается