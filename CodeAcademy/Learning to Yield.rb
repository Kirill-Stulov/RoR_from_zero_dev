# Learning to Yield

=begin
 Why do some methods accept a block and others don’t? It’s because methods that accept blocks have a way of
 transferring control from the calling method to the block and back again. We can build this into the methods
 we define by using the yield keyword.

 Check out the code in the editor. We’ve set up a series of puts statements so you can see when we’re in the block_test method
 and when we’re in the block passed to it.
=end

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }
# ==> We're in the method!
# ==> Yielding to the block...
# ==> >>> We're in the block!
# ==> We're back in the method!

###########
Пример yield попроще:
    
  def three_times      # определяем метод под названием three_times
    yield               # выполняет блок кода, который будет передан в метод three_times
    yield                 # еще раз выполняет
    yield                   # еще раз...
  end

   > three_times {puts ‘Hello’}    # вызываем метод three_times и передаем ему код puts ‘Hello’ в блоке { }.
       Выводит: Hello 3 раза.
