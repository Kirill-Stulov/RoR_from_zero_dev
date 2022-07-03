# Ruby on Rails c нуля (2015) [Базовый]\Занятие 06 Исключения 00:50:30
# пример регулярное выражение для проверки формата номера авто 
# подробнее про регулярные выражения тут http://rubylearning.com/satishtalim/ruby_regular_expressions.html

# Условие - ода буква из русс алфавита, три цифры, две буквы. Ни до ни после никаких символов быть не должно

regexp1 = /^[а-яА-Я]{1}\d{3}[а-яА-Я]{2}$/i #  ^ - шаблон применяется с начала строки, т.е. до него никаких символов быть не должно
				  						 #	[а-яА-Я]{1}  - должен быть символ от а до я и от А до Я (в количестве 1) 
				  						 #	\d{3}        - цифра (в количестве 3) 
				  						 #	[а-яА-Я]{2}  - должен быть символ от а до я и от А до Я (в количестве 2)  
											 #  $            - означает конец строки
											 #  i 					 - модификатор - делает нечувствительным к регистру

# Проверяем, подходит или нет

p 'а333Мк' =~ regexp1

# Примечание - результат nil означает несоответствие. Шаблон не совпадает со строкой
# 		  	   результат 0 означает что соответствие начинается с нулевой позиции в строке 'a333mk'. Шаблон совпадает со строкой
#              результат false когда использован оператор !~ Шаблон совпадает со строкой
#              результат true когда использован оператор !~  Шаблон не совпадает со строкой  


# 
# !!!! отличие операторов проверки
# =~  проверка - сопадает ли?
# !~  проверка - не совпадает ли?


# !!!модификаторы 00:53:30
# пример:
regexp2 = /^[а-я]{1}\d{3}[а-я]{2}/i      # i после скобки делает выражение нечувствительным к регистру

p 'с444См' =~ regexp2