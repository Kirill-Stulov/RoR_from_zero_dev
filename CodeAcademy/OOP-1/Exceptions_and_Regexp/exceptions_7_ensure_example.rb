# Ruby on Rails c нуля (2015) [Базовый]\Занятие 06 Исключения 00:30:20
# пример - подключаемся к вики и этот код вызывает ошибку


# код что-то делает но в какой-то момент выбрасывает ошибку
# пробует подключиться 3 раза и только после этого показывает пользователю сообщение

def connect_to_wikipedia
	#...
	raise 'Connection error'
end

#сделаем это через begin end
# начиная с begin начинает выполняться код, если выводится ошибка которую
# мы умеем обрабатывать, будет выполнен обработчик и после этого будет выполнен код ensure вплоть до end   00:36:20
# если возникнет ошибка, которую мы не умеем обрабатывать, то сразу
# после ее возникновения сначала выполнится код в блоке ensure и потом прога будет прервана и будет сообщение об ошибке от интерпретатора

attempt = 0                                # вводим переменную, которую используем ниже в блоке rescue
begin
	connect_to_wikipedia
rescue NoMemoryError
	attempt += 1
	# puts 'Check your internet connection'			 
	retry if attempt < 3						# метод retry в случае ошибки не выводим ее сразу, а пробуем повторить подключение. Когда в rescue встречается retry управление опять передается в блок begin
ensure 												# или если это метод, то в начале метода и этот код снова выполняется
	puts "There was #{attempt} attempts"
end
