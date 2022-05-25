# Public Private Protected methods
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм\ 0:33:50
# Смотри это видео пятью минутами раньше чем 0:33:50, там на примере 

# Пример из http://rubydev.ru/2010/12/ruby-private-protected-public-methods/
# также сохранен в c:\Users\kirill.stulov\Desktop\OctoberCutover_Back\Desktop\PROGS\work\RoR_from_zero\CodeAcademy\OOP-1\Methods\
class Hobbit
  def initialize(name, rooms, has_ring)
    @name, @rooms, @has_ring = name, rooms, has_ring
  end

  def name  # вместо этого можно использова attr_reader :name
    @name
  end

  def name_of(hobbit)
    hobbit.name
  end

  def rooms_of(hobbit)
    hobbit.rooms
  end

  def hobbit_has_ring?(hobbit)
    hobbit.has_ring?
  end

  def i_have_the_ring?
    has_ring?
  end

  protected

  def rooms # вместо этого можно использова attr_reader :rooms
    @rooms
  end

  private

  def has_ring?
    @has_ring
  end
end

frodo = Hobbit.new('Frodo', 3, true)
samwise = Hobbit.new('Samwise', 2, false)

# public
puts frodo.name
puts samwise.name

# !!!проверяем protected!!!
# puts frodo.rooms  # will not work, due to rooms method is protected
  # мы не можем вызвать вызвать protected — метод объекта непосредственно, 
  # но один объект может вызвать защищенный метод для себя или любого другого родственного объекта. 
puts frodo.rooms_of(frodo)

puts frodo.rooms_of(samwise)
  # protected методы остаются открытыми для других объектов того же типа. 
  # По этому доступ к protected методу гарантирован пока есть объект — «приемник» (hobbit в hobbit.rooms) 
  # произошедший от того же класса что и объект метод которого мы хотим вызвать.

# !!!проверяем private!!!
# puts frodo.has_ring?              # will not work, due to has_ring? method is private

# puts frodo.hobbit_has_ring?(frodo) # will not work, due to has_ring? method is private

# frodo.hobbit_has_ring?(samwise)     # will not work, due to has_ring? method is private
  # Мы не можем получить доступ к методу has_ring? непосредственно, 
  # и не можем получить доступ через другие методы объекта, 
  # даже если хоббит спрашивает сам себя. Давайте добавим в класс Hobbit новый метод i_have_the_ring?

# Теперь у frodo есть способ проверить есть ли у него кольцо:
puts frodo.i_have_the_ring?
  # Private — методы позволяют вызывать себя только в контексте собственного объекта. 
  # Мы не можем вызвать их как: hobbit.has_ring? или даже так: self.has_ring?, 
  # но мы можем воспользоваться private методом просто вызвав его в контексте объекта: has_ring?
