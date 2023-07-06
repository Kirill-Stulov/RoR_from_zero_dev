# (Занятие 09 Метапрограммирование 43:40)
#  когда вызываем некий метод у класса, Ruby его ищет в несколько этапов
#  например при вызове reverse прежде всего происходит поиск в классе по имени этого метода
#  если такой метод не определен, то Ruby не сразу выбрасывает ошибку,
#  а сначала вызывает универсальный method_missing
irb(main):001:1* class X
irb(main):002:2*   def m
irb(main):003:2*     puts "Hello"
irb(main):004:1*   end
irb(main):005:2*   def method_missing(name, *args)
irb(main):006:2*     puts "Called method #{name} with arguments #{args}"
irb(main):007:1*   end
irb(main):008:0> end
=> :method_missing
irb(main):009:0> x = X.new
=> #<X:0x0000017d673e4168>
irb(main):010:0> x.m
Hello
=> nil
# вызываем несуществующий метод и отрабатывает method_missing (46:10)
irb(main):011:0> x.ok
Called method ok with arguments []
=> nil

# теперь метод, где передаем блок (46:40)
#  в момент первого вызова создает нужный метод в классе
irb(main):001:1* class X
irb(main):002:2*   def method_missing(name, *args)
irb(main):003:2*     self.class.send(:define_method, name.to_sym, lambda { |*args| puts args.inspect })
irb(main):004:1*   end
irb(main):005:0> end
=> :method_missing
irb(main):006:0> x = X.new
=> #<X:0x000001d9c10ef2f8>
irb(main):007:0> x.xyz
=> :xyz
irb(main):008:0> x.public_methods
=>
[:method_missing,
 :xyz,
 :pretty_print_inspect,
#  ...
irb(main):009:0> x.abc 1,2,3
=> :abc
irb(main):010:0> x.public_methods
=>
[:abc,
 :method_missing,
 :xyz,
 :pretty_print_inspect,
# ...
