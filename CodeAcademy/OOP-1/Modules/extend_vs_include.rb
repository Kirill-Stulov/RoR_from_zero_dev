# https://www.youtube.com/watch?v=RXYclsMZ5sQ&list=PLl8zUt1K8heXvom6mG4vGYbIQmRqZBIbL&index=31
module Foo
  def foo
    puts 'Foo!'
  end
end

class Bar
  include Foo
  extend Foo
end

b = Bar.foo   # работает потомму что в классе Bar есть extend Foo
a = Bar.new  # работает потомму что в классе Bar есть include Foo 
a.foo

# Extend -> Adds class methods -> class methods are avilable across before initialization
# Include -> Addds instance methods -> only available when a class is initialized
# can use them at the same time 
