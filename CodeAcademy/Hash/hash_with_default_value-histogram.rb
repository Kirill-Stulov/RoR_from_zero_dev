
#https://www.codecademy.com/courses/learn-ruby/lessons/create-a-histogram/exercises/creating-the-frequencies-hash

puts "Text please: "
text = gets.chomp

words = text.split(" ") # By calling the .split method on text, we can transform it into an array
frequencies = Hash.new(0) # we create a new, empty hash frequencies that has a default value of 0.  создаем пустой хеш frequencies без ключа, со значением 0. Метод содания хеша через Hash.new(0) это черновик, каждый раз когда будет содаваться новый хеш у него в значении будет 0, который далее мы будем увеличивать
# puts frequencies
words.each { |word| frequencies[word] += 1 } # пробегаем по каждому слову добавляем в хеш frequencies пары ключ-значение. В ключ кладем слово, а значение увеличиваем на 1 (чем больше одинаковых слов, тем больше счетчик)
frequencies = frequencies.sort_by {|a, b| b } # сортируем пары в хеше frequencies по значению
frequencies.reverse!   
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }  # выводим пары построчно 
