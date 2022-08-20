# для того чтобы в методе вызвать блок - сущ несколько способов. 
# 1. СПОСОБ - Самый простой - метод yeild. Он вызывает переданный блок
  # Пример:
  def m
    puts "before block"
    yield                       # выходим из области метода и попадаем в блок через yield
    puts "after block"
  end

  # если вызвать этот метод и передать ему блок, то в строке 6 когда будет вызван yeild - будет исполнен блок
  # https://thinknetica.teachbase.ru/viewer/sessions/419154/materials/173827 21:00
  # c:\Users\kirill.stulov\Desktop\OctoberCutover_Back\TEMPO\1. Ruby on Rails c нуля (2015) [Базовый]\Занятие 07. Блоки, Proc и lambda\ 21:00

  #m  # если вызвать метод без блока то вылетит ошибка, т.к есть вызов yield в методе. Когда туда попадает управление - оно прыгает в блок => `m': no block given (yield) (LocalJumpError)

  m { puts "Inside block" } # теперь передаем блок. 
  # результат:
  # before block  строка из метода
  # Inside block  строка из блока
  # after block   снова строка из метода

  # В этом случае блок передается не как именованный аргумент в (). Нельзя заключить блок в круглые скобки.
  # ЕСЛИ В БЛОК НУЖНО ПЕРЕДАВАТЬ КАКИЕ-ТО ЗНАЧЕНИЯ ТО ДЕЛАЕТСЯ ТАК: 
  # Пример:
  # метод caps - пишет строку с заглавной буквы. У него будет аргумент str 
  def caps(str)  
    str.capitalize!   # он переводит строку в строку с заглавной буквы и передает дальше эту строку в блок  22:57
    yield(str)        # вызываем yield и передаем произвольное кол-во аргументов, эти аргументы попадут в блок
  end

  caps('stars') { |st| puts st[0] }    # вызов выглядит так - первым параметром передаем аргумент метода 'stars', дальше передаем блок {}, блок в данном примере выводит первую букву строки stars и она становится заглавной
  
  # ТЕПЕРЬ ПЕРЕПИШЕМ БЛОК ТАК ЧТОБЫ ОН ПРИНИМАЛ ИМЕНОВАННЫЙ АРГУМЕНТ (в данном примере -  block)
  def caps(str, block)
    str.capitalize!    
    block.call(str)    # дальше передаем блок как объект. Вызываем на нем метод call и передаем ему объект str 25:00
  end
  # В ЭТОМ СЛУЧАЕ МЕТОД caps ВЫЗЫВАЕТСЯ ТАК:
  block = lambda { |x| puts x }   # создаем переменную, которая содержит блок, например через lambda (про lambda и остальные способы создания блока - читай тут: 3_ways_to_create_proc.rb)
  # ВЫЗЫВАЕМ МЕТОД caps СЛЕДУЮЩИМ ОБРАЗОМ:
  caps 'stars', block             # первый аргумент - сама строка, дальше передаем блок

# 2. СПОСОБ задания блока как аргумента метода. - В этом случае блок в списке аргументов должен быть последним и оно начинается с &. (Если нужен блок как именованный аргумент и при этом нужен обычный нормальный синтаксис )
  # Пример:
  def cap(str, &block)      # когда в чьем-либо коде видим аргумент со знаком амперcанд &, это означает что последний аргумент - этот блок
    str.capitalize!
    block.call(str)         # дальше передаем блок как объект. Вызываем на нем метод call и передаем ему объект str 26:55
  end

  # в этом случае можем вызывать метод cap (в котором у нас есть именованный аргумент, начинающийся с &) стандартным способом:  27:10
  cap('nemesis') { |x| puts x }   # передаем аргумент, затем блок

# 3. СПОСОБ записи блоков через lambda, это оператор ->:          
  # Запись:
    ->(x) { puts x }
    # это то же самое, что и
    lambda { |x| puts x }
    # только короче.
    # Если встретите такую запись, не пугайтесь, это всего лишь lambda.
  
  # КОГДА КАКОЙ СПОСОБ ИСПОЛЬЗУЮТ:
  #   Чаще всего используют именованную переменную.
  #   Если пишем свой метод, то чаще всего будем использвать yield
  #   Для различных библиотечных функций, для более сложного когда - чаще всего используется блок как именованная переменная. 
  #     Потому что нужно иметь доступ к объекту блока, он передается как proc - это значит что мы можем узнать различную информацию о блоке 
  #     - например один он принимает аргумент или несколько 
  #  !! Если в методе есть именованный аргумент блока, то yield будет вызывать также этот блок  28:50
  #     Пример:
      def cap(str, &block)      
        str.capitalize!
        block.call(str)         # также как раньше взываем на блоке метод call
        yield(str)               # и еще вызываем yield. В данном случае yield вызовет тот же самый блок
      end

      # И при вызове метода cap блок будет исполнен два раза
      cap('nemesis') { |x| puts x } 
        # Результат:
        # => Nemesis
        #    Nemesis

  # !!Когда пишем методы с блоками - бывают ситуации когда блок опциональный и нужно определить - передан блок или нет. Т.е метод опционально принимает блок. 29:30
      # И если блок не передан - то выполнить какую-либо дефолтную операцию
      # Если блок передан - то выполнить его
      # В этом случае внутри метода используется метод block_given? который определяет передан блок в метод или нет
      # Пример:
      def m(str, &block)      # некий метод которы принимает строку, именованный блок
        if block_given?       # и если блок передан, то метод предает эту строку в блок, а если не передан, то он его выводит. block_given? вернет true если методу передан блок
          yield(str)          # дальше просто вызываем yield(str) и передаем первый параметр, либо можно было сделать block.call(str)
        else                  # если же этот метод возвращает false, 
          puts str            # то просто выводим этот аргумент 
        end
      end

      m('croaton')                                 # теперь если передаем методу один параметр и не передаем блок, ошибки нет и просто выводится сама строка - выполняется puts 31:06
      m('croaton') { |x| x.capitalize!; puts x }  # если передаем вместе со строкой блок (в блоке приводим строку к строке с заглавной буквы x.capitalize! и выводим строку puts x), то испоняться будет уже блок
      # тоже самое будет работать и без именованного блока, т.е когда мы просто объявляем метод, аргументы и просто вызываем yield, block_given? работает универсально

      # Это все что нужно знать о блоках, что это такое, как они могут задаваться, как писать методы с использованием блоков
      # Главное что нужно знать, блоки - это очень мощная концепция, позволяющая динамически исполнять код, который можно отпределить в одном месте и передать в другое,
      # если использовать proc или lambda.
      # Либо можно просто динамически перебирать массивы, читать файлы и пр.  32:00
      # Делать большое кол-во вещей, где блоки передаются как аргумент и в нужном месте метода вызываются
      # соответственно управление передается в блок, блок исполняется, завершается, испольнение опять передается в тот метод
      # в который мы передавали этот блок.
      # !!Нужно отработать на практике написание методов, которые принимают блок.
