# https://www.youtube.com/watch?v=n9kDvCKSD0I
person = { name: "John", age: 30, city: "New York" }

case person
in { name: x, age: y, city: z }
  puts "#{x} is #{y} years old and lives in #{z}"
else
  puts "No match"
end

# ***************************
numbers = [2,3,4,5,6,7,8,9]

case numbers
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
 
 