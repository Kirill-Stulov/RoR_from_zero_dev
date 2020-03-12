=begin

	Sometimes we don’t just want a method to print something to the console, but we actually want that method to hand us (or another method!) back a value. For that, we use return.

=end


def double(n)
  return n * 2
end

output = double(6)
output += 2
puts output



=begin

    1. In the example above, we define a new method called double that accepts one argument called n.
    2. Inside the method, we return two times n.
    3. After that, we call our new double method with an argument of 6 and store the result, 12, in output.
    4. Then, we increase output to 14 and print it out to the console.
	
=end

# another example
def add(a,b)
	return a + b
end

sum = add(4,10)
puts sum

########################## more examples
## 1.Define a greeter method that takes a single string parameter, name, and returns a string greeting that person.
#  Make sure to use return and don’t use print or puts.

def greeter(name)
  return "Hi there #{name} !"
end

hi = greeter("Lora")
puts hi

## 2.Define a by_three? method that takes a single integer parameter, number, and returns true if that number is evenly divisible by three and false if not.
def by_three?(number)
  if number % 3 == 0
    return true
	else 
    return false
  end
end

result = by_three?(15)
puts result