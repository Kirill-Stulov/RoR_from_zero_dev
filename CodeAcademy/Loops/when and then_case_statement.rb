# When and Then: The Case Statement

case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

But you can fold it up like so:
# rb case language when "JS" then puts "Websites!" 
# when "Python" then puts "Science!" when "Ruby" then puts "Web apps!"
# else puts "I don't know!" end



#####################
puts "Hello there!"
greeting = gets.chomp

case greeting
  when "English"
    puts "Hello!"
  when "French"
    puts "Bonjour!"
  when "German"
    puts "Guten Tag!"
  when "Finnish"
    puts "Haloo!"
  else
    puts "I don't know that language!"
end