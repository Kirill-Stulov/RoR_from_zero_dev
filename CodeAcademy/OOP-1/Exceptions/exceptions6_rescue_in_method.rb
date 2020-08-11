# # 00:29:00
# !!!!!ПЕРЕХВАТЫВАЕМ ИСКЛЮЧЕНИЯ в методах с аргументом
# код который может выбросить исключение заключается в begin и end и внутри может быть rescue
# это верно для любого кода, но для методов есть более простой синтаксис

# допустим у нас метод, который вычислет кв корень и выводит его пользователю
# если вызовем метод sqrt со значением -1, то будет ощибка, чтобы ее обработать... 
def sqrt(value)  
	sqrt = Math.sqrt(value)
	puts sqrt
rescue StandardError											#...просто добавляем rescue, без begin и end
	puts 'Нельзя брать корень из отрицательного числа!'
end



sqrt(-9)



