# Если нужно посчитать сумму элементов массива
# Метод inject C:\Users\gz7n3r\Desktop\PROGS\work\hometask Online Course by Prog School\Lesson2 OOP in Ruby
# в видео 01:14:00

numbers = (5..15).to_a
puts numbers.inject(0){|sum, number| sum + number } #на первом шаге в sum 0 (потому как аргумент 0), а в number 5, они складываются. На втором шаге в sum 5

#или
=begin
result = numbers.inject(0) do |sum, number|
	puts "Current element: #{number}"
	sum + number
end

puts result
=end

