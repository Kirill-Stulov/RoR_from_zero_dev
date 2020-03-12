# https://www.codecademy.com/courses/learn-ruby/lessons/hashes-and-symbols/exercises/converting-between-symbols-and-strings
# Converting Between Symbols and Strings

:sasquatch.to_s
# ==> "sasquatch"

"sasquatch".to_sym
# ==> :sasquatch

# Besides using .to_sym, you can also use .intern. This will internalize the string into a symbol and works just like .to_sym:

"hello".intern
# ==> :hello

# More complex example. Converting array of strings into symbols
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each do |s|
  symbols.push(s.to_sym)
end
print symbols