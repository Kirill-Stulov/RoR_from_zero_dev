# простая guess game https://www.youtube.com/watch?v=t_ispmWmdjY&t=9315s  time => 2:23:00
# вложенное ветвление, пример while, где у нас два условия в одной строке 11


secret_word = "giraffe"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false  # устанавливаем изначальное значение в ложь

while guess != secret_word && !out_of_guesses   # пока ответ не равен giraffe и out_of_guesses не стал true (true он становится когда guess_count набирает 3). !out_of_guesses достловно означает not out_of_guesses 
	if guess_count < guess_limit 
		puts "Enter guess: "
		guess = gets.chomp()
		guess_count += 1
	else
		out_of_guesses = true
	end
	
end

if out_of_guesses
	puts "You Lose!"
else
	puts "You Won!"
end
