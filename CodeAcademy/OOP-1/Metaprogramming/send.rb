# !! send метод, позволяет вызвать метод, или иными словами отправить сообщение (Занятие 09 Метапрограммирование 40:45)
#  для примера простейшая прога которая будет вызывать произвольный метод (у строки)
#  введенный пользователем
puts 'Enter string'
str = gets.chomp
puts 'Enter method'
# send принимает в качестве названия метода - символ
method = gets.chomp.to_sym
# вызываем send у строки и передаем имя метода
puts str.send(method)

# send также позволяет обращаться к закрытым методам (41:50)
# irb(main):001:0> "str".send(:raise, ArgumentError)
# (irb):1:in `<main>': ArgumentError (ArgumentError)
# # еще пример
# irb(main):002:0> 2.send(:+, 5)
# => 7

# Еще пример:
#  send можно использовать устранив ветвление в коде
#  https://rubymonk.com/learning/books/2-metaprogramming-ruby/chapters/25-dynamic-methods/lessons/65-send#solution3794
class Glider
  def lift
    puts "Rising"
  end
  
  def bank
    puts "Turning"
  end
end

class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action)
    if action == 'lift'
      @glider.lift
    elsif action == 'bank'
      @glider.bank
    else
      raise NoMethodError.new(action)
    end
  end
end

nomad = Nomad.new(Glider.new)
nomad.do("lift")
nomad.do("bank")

# перепишем класс Nomad так
class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action)
    @glider.send(action)
  end
end

# или так, если передаем метод с аргументами
class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action, argument = nil)
    if argument == nil
      @glider.send(action)
    else
      @glider.send(action, argument)
    end
  end
end

# еще пример
# method converts array of data to exact data type
def relay(array, data_type)
  array.map {|el| el.send("to_#{data_type}") } # тут к to_ подставляется s или i, в зависимости от того что нам понадобится 
end

a = [1, 2, 3]
dt = 's'

result = relay(a, dt)
print result
