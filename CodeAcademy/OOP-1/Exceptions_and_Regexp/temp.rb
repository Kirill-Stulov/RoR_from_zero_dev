# def raise_exceptions
# 	puts 'Before'
# 	raise 'Here is an exception'
# # rescue
# 	puts 'After'
# end

# raise_exceptions
#############################################################################
# def inverse(x)
# 	raise ArgumentError, 'Passed argument is not num!' unless x.is_a? Numeric
# 	1.0 / x
# end

# puts inverse(5)
# puts inverse('a')

#############################################################################
# begin  
#   raise 'A test exception.'  
# rescue StandardError => e  
#   puts e.message  
#   puts e.backtrace.inspect  
# end 

# p //.class

#############################################################################

p /a/.match("a")

#############################################################################

string = "My phone number is (123) 555-1234."  
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/  
m = phone_re.match(string)  
unless m  
  puts "There was no match..."  
  exit  
end  
print "The whole string we started with: "  
puts m.string  
print "The entire part of the string that matched: "  
puts m[0]  
puts "The three captures: "  
3.times do |index|  
  puts "Capture ##{index + 1}: #{m.captures[index]}"  
end  
puts "Here's another way to get at the first capture:"  
print "Capture #1: "  
puts m[1]  