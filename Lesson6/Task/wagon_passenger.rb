class WagonPassenger < Wagon
	def initialize(number, type = :passenger)   #переопределили метод initialize родительского класса c помощью super, добавив к нему тип passenger по умолчанию
		super
	end

	private
		def such?
			# wagon.class == WagonPassenger
		end

end