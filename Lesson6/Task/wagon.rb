class Wagon < Train

	attr_accessor :number, :type

	def initialize(number, type, manufacturer)
		@number = number
		@type = type
		@manufacturer = "RJD"
		@@wg_names << self                                 ### проверить, попадает ли созданный вагон в этот массив
		puts "Создан вагон №#{@number} типа #{@type}"
	end

	def type_full
		puts "Вагон №#{@number} типа #{@type}. Производитель: #{@manufacturer}"
	end

	def list
		return @number
	end
	
end