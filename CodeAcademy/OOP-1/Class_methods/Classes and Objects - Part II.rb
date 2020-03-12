# source https://launchschool.com/books/oo_ruby/read/classes_and_objects_part2

# class BadPuss
	
# 	def self.what_am_i                  # When defining a class method, we prepend the method name with the reserved word self., like this:
# 		puts "Ima bad puss!"
# 	end

# end

# BadPuss.what_am_i                       # Then when we call the class method, we use the class name GoodDog followed by the method name, without even having to instantiate any objects

class BadPuss

	PUSS_YEARS = 5

	attr_accessor :name, :age
	# def name 
	# 	@name
	# end

	def initialize(n, a)
		@name = n
		@age = a * PUSS_YEARS
	end



end

grumpy = BadPuss.new("Grumpy", 12)

 p grumpy.age
p grumpy.name