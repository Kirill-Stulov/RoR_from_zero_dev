x = 'what?'                     # введем переменную x
block = Proc.new { puts x }     # создадим через Proc.new, который выводит значение переменной x
# переменная x  и переменная block созданы в одной области видимости (в данном случае это глобальная область видимости, она не ограничена никаким методом или классом)

# block.call                  # в этом блоке, где мы вводим x (x - переменная из строки 1), убеждаемся в этом, вызвав блок

def m(block)                  # определим такой метод, в который можем передать блок как параметр,
  x = 'nothing!'                 # в нем перменная x будет равна nothing
  puts "X from method: #{x}"       # выведем значение этой переменной из метода, потому что в данном случае когда мы объявляем метод,у нас scope (область видимости меняется). Уже не голобальная, а область видимости метода
  block.call                         # а затем выводим блок
end

m(block) # вызываем метод, который принимает блок как параметр
# вывод:
# =>  from method: nothing       # внутри метода переменная x равна значение "nothing"
# =>  what?                       но, когда вызвали блок call, там все еще выводится "what", т.е та переменная которая была задана в строке 1

# Это означает что блоки сохраняют состояние окружения, т.е тех локальных переменных в той области видимоти в которой этот блок объявлен.
  # И не смотря на то, что мы его передаем в метод и вызываем в области видимости метода, тем не менее он хранит в себе эти локальные переменные, которые были объявлены при объявлении блока.
  # ЕСЛИ БЫ ПЕРЕМЕННАЯ X  НЕ БЫЛА ЗАДАНА В ПЕРВОЙ СТРОКЕ, ТО БЛОК БЫ БРАЛ Е ЗНАЧЕНИЕ ОБЛАСТИ ВИДИМОСТИ МЕТОДА M (СТРОКА 8)
  # При создании блока как объекта - блок сохраняет состояния локальных переменных, которые были в этой же области видимости 
  # Это означает что блоки в ruby являются замыканиями.

  # https://thinknetica.teachbase.ru/viewer/sessions/419154/materials/173827 19:40
  # c:\Users\kirill.stulov\Desktop\OctoberCutover_Back\TEMPO\1. Ruby on Rails c нуля (2015) [Базовый]\Занятие 07. Блоки, Proc и lambda\  19:40
