# Ruby on Rails c нуля (2015) [Базовый]\Занятие 06 Исключения
			# !!!!!ПЕРЕХВАТЫВАЕМ ВСЕ ИСКЛЮЧЕНИЯ С ПОМОЩЬЮ rescue - (перехватывает абсолютно все исключения, не важно какой это тип исключения)

# Ниже обработка исключения  10:50.  
# Тот код в котором может возникать ошибка нужно поместить в begin и end, затем для обработки самого исключения использовать ключевое слово rescue
begin
	puts "Before exception"
	1/0
rescue								# исключение обрабатывается в промежутке от rescue до end
	puts 'На ноль делить нельзя!'   # в результате выводится эта строка, вместо ошибки. 
									# 11:47 Когда ruby встречает слово rescue (т.е обработку исключения), то в случае если между begin и rescue произошла ошибка, ruby прерывает все остальное выполнение и передает выполнение в блок rescue
end





 