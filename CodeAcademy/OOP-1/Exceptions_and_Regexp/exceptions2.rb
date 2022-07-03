# Ruby on Rails c нуля (2015) [Базовый]\Занятие 06 Исключения 12:50
	# !!!!!теперь как ПЕРЕХВАТЫВАТЬ ТОЛЬКО ИСКЛЮЧЕНИЯ ОПРЕДЕЛЕННОГО КЛАССА 1


begin
	puts 'Before exception'
	Math.sqrt(-4)
rescue Exception => e               			# 00:13:14 после rescue указываем класс исключения Exception (базовый класс) и получаем доступ к объекту искоючения через => и названия переменной (e) через которую будем обращаться к объекту исключения. В переменную e будет помещен объект исключения которое возникло(объект исклчения содержит бектрейс) 
	puts "Exception: #{e.inspect}"	            # через inspect посмотрим что внутри
	# puts e.backtrace.inspect					# также выведем полностью весь объект исключения через backtrace. inspect показывает массив вызовов backtrace
end

puts 'After exception'         # блок rescue обработал исключение и прога не вылетает а продолжает работать дальше
									# если убрать блок rescue то 13 строка не выполнится


# еще пример
# begin  
#   raise 'A test exception.'  
# rescue StandardError => e  
#   puts e.message  				# The message method returns a string that may provide human-readable details about what went wrong. 
#   puts e.backtrace.inspect  		# The other important method is backtrace. This method returns an array of strings that represent the call stack at the point that the exception was raised.
# end 


