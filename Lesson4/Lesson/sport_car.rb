class SportCar < Car
	def start_engine           # переопределили метод start_engine родительского класса и добавили wrooom с помощью super
		super
		puts "WroooooOOom!"
	end

	protected

	def initial_rpm
		1000
	end
end 