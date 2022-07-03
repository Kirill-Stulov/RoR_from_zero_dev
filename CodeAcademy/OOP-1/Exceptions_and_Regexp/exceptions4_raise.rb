# You can also trigger your own exceptions. This process is called "raising." You do it by calling the raise method. 
# вызов raise из блока rescue без параметров 
# как выбросить исключение повторно, после его обработки  00:25:00 

# begin
# 	puts 'Before exception'
# 	Math.sqrt(-1)
# rescue StandardError => e    	# имитируем запись в лог (некую строку, которую пишем в лог)
# 	puts "Error!"
# 	raise 						 # raise - команда выброса исключения. Если raise в блоке rescue пишем без каких-либо аргументов, то тоже исключение будет выброшено повторно и снова отловлено не будет
# rescue NoMemoryError => e
# 	puts "No memory!!!"
# end

# puts 'After exception'

# raise может принимать различные аргументы


# https://thinknetica.teachbase.ru/viewer/sessions/419154/materials/173825 25:50 
# пример, пользователь ввел неверные данные и нужно выбросить исключение  о том, что это не верный формат данных
def method_with_error              # 00:25:40
	#....
	raise "Oh god, you piss me off!"    # если указываем просто сообщение, то в блоке begin rescue будет выброшено исключение типа RintimeError с этим сообщением 
end

# обработчик ошибок для метода method_with_error
begin                             
	method_with_error
rescue RuntimeError => e   		# отлавливаем тип исключения RuntimeError
	puts e.inspect				# здесь выведем объект
	raise
end

puts "After exception"

# в 28 строке вызываем метод с ошибкой, он выбрасывает исключение, исключение отлавливается, выводится пользователю и программа продолжается
