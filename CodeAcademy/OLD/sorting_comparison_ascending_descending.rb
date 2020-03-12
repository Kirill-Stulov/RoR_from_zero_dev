books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A brief History of time", "A wrinkle in Time"]

# To sort our books in ascending order, in-place
puts books.sort! { |firstBook, secondBook| firstBook <=> secondBook}

# To sort in descending order
puts books.sort! { |firstBook, secondBook|  secondBook <=> firstBook}

# Another example of descending sorting
fruits = ["orange", "apple", "banana", "pear", "grapes"]
puts fruits.sort! { |firstFruit, secondFruit| secondFruit <=> firstFruit }

# We noticed in the last lesson that .sort! didn’t have a built-in way of handling sorting in reverse alphabetical order. 
# Now that we know how to write our own Ruby methods, we can fix that!

def alphabetize(arr, rev=false)                  #tell Ruby that alphabetize has a second parameter, rev (for “reverse”) that will default to false if the user doesn’t type in two arguments. You might have noticed that our first call to alphabetize in exercise 1 was just (books)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"


#https://www.codecademy.com/courses/learn-ruby/lessons/ordering-your-library/exercises/default-parameters?action=resume_content_item