class TrainCargo < Train
	# def initialize(number, type = :cargo)
	# 	super                             		#переопределили метод initialize родительского класса c помощью super, добавив к нему тип cargo по умолчанию/ 
	# end										#super вызывает оригинальную имплементацию метода

private

	def wagon_such_train?(wagon)
		wagon.class == WagonCargo
	end

end