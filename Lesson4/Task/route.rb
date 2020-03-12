#<================== Маршрут: ========================================================================>
class Route

    attr_accessor :stations, :first

	def initialize(stations = []) 
        if  stations.size >= 2                 #проверяем что введено минимум две станции 
            @stations = stations
            puts "Маршрут #{@stations.first} - #{@stations.last} создан"
        else
            puts "В маршруте мало станций!"
        end
	end

    def add(station)         # методом add_station добавляем станцию в маршрут
    		@stations.insert(-2, station)   # методом .insert, в массив @stations добавляем то, что введено в параметре метода add, -2 означает ввод после второго с конца элемента массива. Читай метод insert. Видимо это от того, что изначально при создании маршрута, мы задаем начальную и конечную станцию, потому любая добавляющаяся станция сделана промежуточной 
    		puts "Новая станция #{station} добавлена в маршрут"
    end

    def delete(station)               # Может удалять станцию
    	if @stations.include?(station)    
            @stations.delete(station)
            puts "Станция #{station} удалена из маршрута"
        else 
            puts "Станции #{station} нет в маршруте!"
        end         
    end

    def list                      # метод чтобы подробно увидеть маршрут со станциями
    	puts "Маршрут от #{@stations.first} до #{@stations.last}"
        puts "Порядок следования по станциям следующий:"
    	@stations.each_with_index{|station, index| puts "#{index + 1}. #{station}"} # это выводит список станций с порядковым номером перед ним
    end

    def self.hi
        print 'Hi'
    end

private
#нет идей какие методы вынести сюда

end


# Ненужные методы
 # def stations
 #    @stations
 #  end

 # def start_route
 #  print stations
 # puts "Первая станция маршрута #{@stations.first} - #{@stations.last}  это #{@stations[0]}"
 # # end

 # def end_route
 #   puts "Последняя станция данного маршрута #{@stations[-1]}"
 # end

  # def middle_route
  #   puts "Промежуточные станции данного маршрута #{@stations[1..-2]}"
  # end