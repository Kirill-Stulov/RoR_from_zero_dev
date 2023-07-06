# (Занятие 09 Метапрограммирование 32:00)
# Метод для динамического объявления методов. Метод, который создает другие методы.
#  это приватный метод, его нельзя вызывать из вне класса
irb(main):001:1* class Y
irb(main):002:2*   define_method(:my_method) do
irb(main):003:2*     puts "my method"
irb(main):004:1*   end
irb(main):005:0> end
=> :my_method
irb(main):006:-> end
irb(main):007:0> y = Y.new
=> #<Y:0x000002a124230f60>
irb(main):008:0> y.my_method
my method
=> nil
# (Занятие 09 Метапрограммирование 32:50)
