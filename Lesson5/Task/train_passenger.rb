class TrainPassenger < Train

	def initialize(number, type = :passenger)    #переопределили метод initialize родительского класса c помощью super, добавив к нему тип cargo по умолчанию
		super									#super вызывает оригинальную имплементацию метода
	end

private

	def wagon_such_train?(wagon)
		wagon.class == WagonPassenger
	end

end