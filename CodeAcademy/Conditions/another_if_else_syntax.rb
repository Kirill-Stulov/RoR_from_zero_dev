# another syntax or The Ternary Operator
# An even more concise version of if/else is the ternary conditional expression
# https://www.codecademy.com/courses/learn-ruby/lessons/the-zen-of-ruby/exercises/one-good-turn-deserves-a-ternary
puts 3<4 ? "3 is less than 4!" : "3 is not less than 4"  # если 3<4 true, то выводим 3 is less than 4, else выводим 3 is not less than 4
puts 5>=6 ? "Honey is Boney!" : "Honey is Evil!!!"

# best example
  # bad
  result = if some_condition then something else something_else end
  # good
  result = some_condition ? something : something_else

# another example
puts 1<2 ? "One is less than two!" : "One is not less than two."

# instead of
if 1 < 2
  puts "One is less than two!"
else
  puts "One is not less than two."
end

###########################################################
p a ? b : c  #если a true то верни b иначе верни с

# или так можно записать 
	d = a ? b : c # если a true то верни b иначе верни с, в переменную d запиши результат  
	p d

# Еще это называется тернарным оператором
# простой и доходчивый пример  https://youtu.be/xyDoP5a_dvo?t=1037

# Вот еще отличный разбор на примере вместе с each
  # https://riptutorial.com/ruby/example/3742/each#undefined
  (1..10).each { |i| puts i.even? ? 'even' : 'odd' }

  # This is a very compressed and ruby way to solve this. Let's break this down piece by piece.

  #     (1..10) is a range from 1 to 10 inclusive. If we wanted it to be 1 to 10 exclusive, we would write (1...10).
  #     .each is an enumerator that enumerates over each element in the object it is acting on. In this case, it acts on each number in the range.
  #     { |i| puts i.even? ? 'even' : 'odd' } is the block for the each statement, which itself can be broken down further.
  #         |i| this means that each element in the range is represented within the block by the identifier i.
  #         puts is an output method in Ruby that has an automatic line break after each time it prints. (We can use print if we don't want the automatic line break)
  #         i.even? checks if i is even. We could have also used i % 2 == 0; however, it is preferable to use built in methods.
  #         ? "even" : "odd" this is ruby's ternary operator. The way a ternary operator is constructed is expression ? a : b. This is short for

  #     if expression
  #       a
  #     else
  #       b
  #     end

  # \PROGS\tmp\oop_basics\Task_8\depot\depot\interface.rb
  # nested ternary operator
    # If input equals 1, call 'create_route_menu'
    #  if not, check if equals 2, if so, call 'add_or_del_from_route'
    #  if none of conditions met, assign 'Wrong input' to result.
    result = input == 1 ? create_route_menu : (input == 2 ? add_or_del_from_route : 'Wrong input')
    puts result
