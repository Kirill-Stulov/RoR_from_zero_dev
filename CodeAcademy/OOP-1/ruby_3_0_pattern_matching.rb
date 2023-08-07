# https://www.youtube.com/watch?v=n9kDvCKSD0I
person = { name: "John", age: 30, city: "New York" }

case person
# checks that pattern hash corresponds to 'person' hash. In other words - structure check.
#  x means - we want to catch value of "John" in x variable
in { name: x, age: y, city: z } 
  puts "#{x} is #{y} years old and lives in #{z}"
else
  puts "No match"
end

# ***************************
person2 = { name: "John", age: 5, city: "New York" }

case person2
# checking if age value in range from 20 and up
in { name: x, age: 20.., city: z } 
  puts "Age is OK"
else
  puts "Age not OK!!"
end

# ***************************
person3 = { name: 1, age: 5, city: "New York" }

case person3
# checks if name value is string type
in { name: String => x, age: y, city: z } 
  puts "Name value is String type"
else
  puts "Name value is not String type!!"
end

# ***************************
numbers = [2,3,4,5,6,7,8,9]

case numbers
# checks condition
in [*all] if all.sum > 10
  puts 'Valid amount'
else
  puts 'Invalid amount'
end

# ***************************
numbers2 = [2,3,4,5,6,7,8,9]

case numbers2
in [first, *rest] if first > 1
  puts 'Valid amount2'
else
  puts 'Invalid amount2'
end

# ***************************
# You can use multiple `in` clauses within the `case` statement to check for different conditions 
#  and have separate returns for each case. Here's an example:

person4 = { name: 1, age: '4', city: "New York" }

case person4
# checks if name value is string type
in { name: String => x, age: y, city: z } 
  puts "Name value is String type"
# checks if the age value is an integer and greater than 18
in { name: x, age: Integer => y, city: z } if y > 18
  puts "Age value is Integer and greater than 18"
else
  puts "Name value is not String type and Age value is not greater than 18!!"
end 
 