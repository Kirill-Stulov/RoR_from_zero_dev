class Truck < Car
	def loading
	end

	protected

	def initial_rpm  #Тут у нас полиморфизм, т.е этот метод в этом подклассе переопределен
		500
	end
end