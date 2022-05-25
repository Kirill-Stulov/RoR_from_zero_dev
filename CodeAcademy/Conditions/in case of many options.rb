# in case of many options

# we have following
puts "What's your favorite language?"
language = gets.chomp

if language == "Ruby"
  puts "Ruby is great for web apps!"
elsif language == "Python"
  puts "Python is great for science."
elsif language == "JavaScript"
  puts "JavaScript makes websites awesome."
elsif language == "HTML"
  puts "HTML is what websites are made of!"
elsif language == "CSS"
  puts "CSS makes websites pretty."
else
  puts "I don't know that language!"
end

#same but refactored
puts "What's your favorite language?"
language = gets.chomp

case language
  when "Ruby"
    puts "Ruby is great for web apps!"
  when"Python"
    puts "Python is great for science."
  when "JavaScript"
    puts "JavaScript makes websites awesome."
  when "HTML"
    puts "HTML is what websites are made of!"
  when "CSS"
    puts "CSS makes websites pretty."
  else
  puts "I don't know that language!"
end

#In general, the case expression is used when you want to test one value for several conditions. For example:

case x
when String
  "You passed a string but X is supposed to be a number. What were you thinking?"
when 0
  "X is zero"
when 1..5
  "X is between 1 and 5"
else
  "X isn't a number we're interested in"
end

