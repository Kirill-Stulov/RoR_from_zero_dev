class TrainPassenger < Train

	def initialize(number, type = :passenger, manufacturer)    #переопределили метод initialize родительского класса c помощью super, добавив к нему тип cargo по умолчанию
		super									#super вызывает оригинальную имплементацию метода
	end

private

	def type_match?(wagon)                  # используется в методе add_wagon в Train; методы, возвращающие логические значения, заканчиваются вопросительным знаком, это просто часть имени метода
		wagon.class == WagonPassenger
	end

end