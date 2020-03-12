#puts "put first number"
#y1 = gets.chomp.to_i
#y1 = (y1%4 == 0) ? y1 : (y1/4+1)*4

#puts ""

#puts y1

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
    puts "Updated!"
  when "display"
    puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end

=begin
months_leap = { 
			"Jan" => 31, "Feb" => 29, 
			"Mar" => 31, "Apr" => 30, 
			"May" => 31, "Jun" => 30, 
			"Jul" => 31, "Aug" => 31,
			"Sep" => 30, "Oct" => 31,
			"Nov" => 30, "Dec" => 31 
		 }

puts months_leap.index[1]
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