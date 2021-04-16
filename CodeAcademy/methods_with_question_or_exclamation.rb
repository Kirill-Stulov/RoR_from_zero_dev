# methods with question and exclamation mark
# https://ru.wikibooks.org/wiki/Ruby/%D0%9F%D0%BE%D0%B4%D1%80%D0%BE%D0%B1%D0%BD%D0%B5%D0%B5_%D0%BE_%D0%BC%D0%B5%D1%82%D0%BE%D0%B4%D0%B0%D1%85


# В этом примере это просто часть имени метода. 

def type_match?(wagon)                  # используется в методе add_wagon в Train; методы, возвращающие логические значения, заканчиваются вопросительным знаком, это просто часть имени метода
		wagon.class == WagonPassenger
end



# В этом примере на самом деле это вызов функции и вызывает функцию с именем valid?. 
# Некоторые типы “test for condition” /boolean функции имеют знак вопроса как часть имени функции по соглашению.

product.valid?


# Другим примером вопросительных знаков в Ruby будет тернарный оператор.

customerName == "Fred" ? "Hello Fred" : "Who are you?"  # if Fred -> Hello Fred , else -> Who are you?



# Методы с восклицательным знаком на конце меняют объект, к которому привязаны.
string = "   Some string with spaces     "
string.strip!    #=> "Some string with spaces" — возвращает результат операции…
string           #=> "Some string with spaces" …и меняет состояние объекта-адресата