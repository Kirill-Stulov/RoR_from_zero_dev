class WagonPassenger < Wagon
	def initialize(number, type = :passenger, manufacturer)   #переопределили метод initialize родительского класса c помощью super, добавив к нему тип passenger по умолчанию
		super
	end

	private
		def type_match?(wagon)                     # это метод заменил предудущий wagon_such_train?
			wagon.class == WagonPassenger
		end

end