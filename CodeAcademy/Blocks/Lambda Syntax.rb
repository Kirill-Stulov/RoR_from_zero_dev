# Lambda Syntax
# https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas/exercises/lambda-syntax
# Lambdas are defined using the following syntax:

lambda { |param| block }

# Lambdas are useful in the same situations in which you�d use a proc. 
# We�ll cover the differences between lambdas and procs in the next exercise; in the meantime, let�s get a little practice in with the lambda syntax.

# Example
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda { |string| string.to_sym  }
symbols = strings.collect(&symbolize)
print symbols

# We have an array of strings, but we want an array of symbols.
# On line 12, created a new variable called symbolize. 
# In symbolize, store a lambda that takes one parameter and calls .to_sym on that parameter.
# We then use symbolize with the .collect method to convert the items in strings to symbols!
