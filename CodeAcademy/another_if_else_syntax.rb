# another syntax or The Ternary Operator
# An even more concise version of if/else is the ternary conditional expression
# https://www.codecademy.com/courses/learn-ruby/lessons/the-zen-of-ruby/exercises/one-good-turn-deserves-a-ternary
puts 3<4 ? "3 is less than 4!" : "3 is not less than 4"  # если 3<4 true, то выводим 3 is less than 4, else выводим 3 is not less than 4
puts 5>=6 ? "Honey is Boney!" : "Honey is Evil!!!"


# another example
puts 1<2 ? "One is less than two!" : "One is not less than two."

# instead of
if 1 < 2
  puts "One is less than two!"
else
  puts "One is not less than two."
end