class Wagon < Train

	attr_accessor :number, :type

	def initialize(number, type)
		@number = number
		@type = type
		puts "Создан вагон №#{@number} типа #{@type}"
	end

	def type_full
		puts "Вагон №#{@number} типа #{@type}"
	end

	def list
		return @number
	end
	
end