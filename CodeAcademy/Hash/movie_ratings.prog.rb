# вложенное ветвление
# https://www.codecademy.com/courses/learn-ruby/lessons/a-night-at-the-movies/exercises/nice-work-1
=begin
It do one of four things: add a new movie to a hash, update the rating for an existing movie,
display the movies and ratings that are already in the hash, or delete a movie from the hash.
If it doesn’t receive one of those four commands, the program will output some kind of error message.
=end

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?                         # спрашиваем про рейтинг, если такого названия в хеше movies еще нет
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i                 # добавляем в хеш movies значения переменных title и rating в качестве ключ-значение (title: rating). Не забываем привести их к виду (ключ - символ, значение - целочислоенное)  
    puts "#{title} has been added with a rating of #{rating}."
  else                                                     
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end

=begin
The four verbs your program knows—add, display, update, and delete—are universal. 
This acronym is better known as CRUD for create, read, update, and delete (respectively). 
These are the actions you take when you update an entry in a database, ask a website for information, or write a blog post. 
Being familiar with this setup is good, because you’ll see it in everything from API calls to web frameworks like Ruby on Rails.
=end