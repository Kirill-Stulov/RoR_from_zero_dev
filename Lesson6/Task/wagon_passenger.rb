class WagonPassenger < Wagon
	def initialize(number, type = :passenger, manufacturer)   #переопределили метод initialize родительского класса c помощью super, добавив к нему тип passenger по умолчанию
		super
	end

	# private
	# 	def type_match?(wagon)                     # Метод уже есть в train_passenger это метод заменил предудущий wagon_such_train?; методы, возвращающие логические значения, заканчиваются вопросительным знаком, это просто часть имени метода
	# 		wagon.class == WagonPassenger
	# 	end

end