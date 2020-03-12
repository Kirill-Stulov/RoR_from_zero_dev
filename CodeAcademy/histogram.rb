puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0) 				#Creating the Frequencies Hash
#puts frequencies

words.each { |word| frequencies[word] += 1 }  	#Пробегаем по массиву, в доселе пустой хэш закидываем по слову и добавляем значение равное 1, которое вначале было 0/  Iterating Over the Array; update the hash with a key equal to the word, then increment its value by 1. Each key will be frequencies[word], and we can increment using += 1. This is why our default is 0. The first time we find the word, it will have a default value of 0 that we can increment by1`.
frequencies = frequencies.sort_by {|a, b| b }	#Сортируем хэш в ключе и значении по значению
frequencies.reverse!                            #Переворачиваем чтоб начиналось с наибольшего
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }  #пробегаем по тому что теперь содержится в хэше и выводим содержимое в порядке ключ - значение через пробел. Значение приводим к строке.


#https://www.codecademy.com/courses/learn-ruby/lessons/create-a-histogram/exercises/iterating-over-the-array?action=resume_content_item