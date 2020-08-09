begin
	puts 'Before exception'
	Math.sqrt(-4)
rescue NoMemoryError => e       			# 00:17:50 здесь можно указать конретный тип ошибок который мы хотим обрабатывать. Если укажем StandardError то блок rescue будет обрабатывать ошибки только типа StandartError   
	puts "Exception: #{e.message}"
end

puts 'After exception'
