class WagonCargo < Wagon

	def initialize(number, type = :cargo, manufacturer)
		super 								#переопределили метод initialize родительского класса c помощью super, добавив к нему тип cargo по умолчанию
	end											#super вызывает оригинальную имплементацию метода

end