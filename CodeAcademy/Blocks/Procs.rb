# Procs Keeping Your Code DRY
# https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas/exercises/keeping-your-code-dry

=begin
  Remember when we told you that everything is an object in Ruby? Well, we sort of fibbed. Blocks are not objects, and this is one of the very few exceptions to the “everything is an object” rule in Ruby.
  Because of this, blocks can’t be saved to variables and don’t have all the powers and abilities of a real object. For that, we’ll need… procs!
  You can think of a proc as a “saved” block: just like you can give a bit of code a name and turn it into a method, you can name a block and turn it into a proc. 
  Procs are great for keeping your code DRY, which stands for Don’t Repeat Yourself. 
  With blocks, you have to write your code out each time you need it; 
  with a proc, you write your code once and can use it many times!
=end

# Example of proc
multiples_of_3 = Proc.new do |n|
  n % 3 == 0								  # n делится на 3 без остатка
end

print (1..100).to_a.select(&multiples_of_3)   # из диапозона от 1 до 100 распечатаем только те значения которые делятся на 3 без остатка