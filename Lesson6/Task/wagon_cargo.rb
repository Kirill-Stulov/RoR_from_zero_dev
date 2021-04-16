class WagonCargo < Wagon

	def initialize(number, type = :cargo, manufacturer)
		super 								#переопределили метод initialize родительского класса c помощью super, добавив к нему тип cargo по умолчанию
	end											#super вызывает оригинальную имплементацию метода

# private
# 	def type_match?(wagon)           # Метод уже есть в train_cargo. это метод заменил предудущий wagon_such_train?  (этот метод есть и train_cargo, нужен ли он тут?); методы, возвращающие логические значения, заканчиваются вопросительным знаком, это просто часть имени метода
#     	wagon.class == WagonCargo
#   	end

end