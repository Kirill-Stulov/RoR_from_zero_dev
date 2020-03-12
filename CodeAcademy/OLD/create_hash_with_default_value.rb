# if you need to create hash with default value, use Hash.new

books = Hash.new("Jack London")

# Now if you try to access a nonexistent key in books, you’ll get "Jack London" 
# as a result.

puts books[2]
puts books["Agata Kristy"]