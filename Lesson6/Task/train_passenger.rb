class TrainPassenger < Train

	def initialize(number, type = :passenger, manufacturer)    #переопределили метод initialize родительского класса c помощью super, добавив к нему тип cargo по умолчанию
		super									#super вызывает оригинальную имплементацию метода
	end

private

	def type_match?(wagon)
		wagon.class == WagonPassenger
	end

end