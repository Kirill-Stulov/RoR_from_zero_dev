# Удаляем элементы объекта
# Removes the named instance variable from obj, returning that variable's value.
# https://ruby-doc.com/core/Object.html


class Dummy
  attr_reader :var
  def initialize
    @var = 99
  end
  def remove
    remove_instance_variable(:@var)
  end
end
d = Dummy.new
d.var      #=> 99
d.remove   #=> 99
d.var      #=> nil