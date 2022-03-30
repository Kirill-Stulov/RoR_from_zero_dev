# Converting Between Symbols and Strings

# We have an array of strings we’d like to later use as hash keys, but we’d rather they be symbols.

#     Create a new variable, symbols, and store an empty array in it.
#     Use .each to iterate over the strings array.
#     For each s in strings, use .to_sym to convert s to a symbol and use .push to add that new symbol to symbols.
#     Print the symbols array.

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []
strings.each do |s|
  symbols.push(s.intern)
end
print symbols


# Besides using .to_sym, you can also use .intern. This will internalize the string into a symbol and works just like .to_sym:

# "hello".intern
# # ==> :hello
