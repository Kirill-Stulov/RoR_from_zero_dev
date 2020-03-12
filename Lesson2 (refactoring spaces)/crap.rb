#puts "put first number"
#y1 = gets.chomp.to_i
#y1 = (y1%4 == 0) ? y1 : (y1/4+1)*4

#puts ""

#puts y1

=begin
products = {}
purchase = "bread"
price = 12
number = 0.5
products.merge!(purchase => price)
puts products
=end


=begin
	
end
movies = {
  Snatch: 4,
}
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp

case choice
  when "add"
    puts "Enter your movie title"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Now, please enter it's rating (Type 0 to 4.)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been added with a rating of #{rating}"
    else
      puts "That movie already exists! It's rating is #{movies[title.to_sym]}"
    end
    
  when "update"
    puts "What movie do you want to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      puts "What's the new rating? (Type 0 to 4.)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been udated with new rating of #{rating}"
    end
  when "display"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Which movie you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      movies.delete(title.to_sym)
      puts "#{title} has been removed."
    end
  else
    puts "Error!"
end
=end


require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

return "n must be an integer." unless n.is_a? Integer

return "n must be greater than 0." if n <= 0

  return Prime.first n
end

first_n_primes(10)

#puts 3<4 ? "3 is less than 4!" : "3 is not less than 4"  # если 3<4 true, то выводим 3 is less than 4, else выводим 3 is not less than 4

=begin
alphabet = ["a", "b", "c"] << "d"
puts alphabet

caption = "A giraffe surrounded by " << "weezards"
puts caption
=end

=begin
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []
strings.each do |s|
  symbols.push(s.to_sym)
end
print symbols
puts symbols[0].class
=end



=begin
def add(a,b)
	return a + b
end

sum = add(4,10)
puts sum
=end


=begin
month = gets.chomp.to_i

julian_date = 1.upto(month) {|m| puts m}
#puts julian_date
=end
=begin
months_not_leap = {
			"Jan" => 31, "Feb" => 28, 
			"Mar" => 31, "Apr" => 30, 
			"May" => 31, "Jun" => 30, 
			"Jul" => 31, "Aug" => 31,
			"Sep" => 30, "Oct" => 31,
			"Nov" => 30, "Dec" => 31 
}

months_leap = { 
			"Jan" => 31, "Feb" => 29, 
			"Mar" => 31, "Apr" => 30, 
			"May" => 31, "Jun" => 30, 
			"Jul" => 31, "Aug" => 31,
			"Sep" => 30, "Oct" => 31,
			"Nov" => 30, "Dec" => 31 
		 }

#puts months_leap["Jan"]
months_not_leap = months_leap.store("Feb", 28)

puts months_leap
=end

=begin
fib = [1,2]
p fib
p fib[-1] 
p fib[-2]
p fib[-3]
fib << fib[-1] + fib[-2]
p fib 
=end