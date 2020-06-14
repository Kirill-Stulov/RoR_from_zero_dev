# получаем доступ к элементам массива
# https://www.youtube.com/watch?v=1UL4M2Sb88k    11:20




# Получаем доступ к элементам в массиве a

a = [[1,4,5], [2], [3]]

# есть следующие варианты
p a[0][1]
p a[0]
p a.first
p a.last
p a[0].first
p a[0].last


# Получаем доступ к элементу объекта в массиве a

	# если к примеру в массиве у нас объект класса Wagon, с атрибутами @number и @passenger
# a = [#<Wagon:0x00000000050dcac8 @number=55, @type=:passenger>]                                        # 0x00000000050dcac8 - адрес объекта Wagon в памяти
# num = a.collect{|obj| obj.number }  								# результат	=> [55]

# также смотри файл initialize.rb в \RoR_from_zero\CodeAcademy\OOP-1\initialize.rb

