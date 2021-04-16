class TrainCargo < Train
	def initialize(number, type = :cargo, manufacturer)
		super                             		#переопределили метод initialize родительского класса c помощью super, добавив к нему тип cargo по умолчанию/ 
	end										#super вызывает оригинальную имплементацию метода

private

	# def wagon_such_train?(wagon)
	# 	wagon.class == WagonCargo
	# end

    def type_match?(wagon)              # используется в методе add_wagon в Train; методы, возвращающие логические значения, заканчиваются вопросительным знаком, это просто часть имени метода
    	wagon.class == WagonCargo
  	end


end