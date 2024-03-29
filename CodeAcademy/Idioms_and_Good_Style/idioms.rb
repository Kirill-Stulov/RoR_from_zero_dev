# ИДИОМА №1 '+='
i = 0
i = i + 1
i += 1

# ИДИОМА №2 'Множественное присваивание'
  x, y = 1, 2
  array = [1, 2, 3]
  a, b, c = array
  puts a, b, c

  # Обменять значение двух переменных не прибегая к третьей переменной
  x, y = 1, 2
  # => 1, 2
  x, y = y, x
  # => 2, 1           # Занятие №8. Идиомы в Ruby и хороший стиль 03:10

# ИДИОМА №3 или равно '||='
  # Оператор ||= или присвоить # Занятие №8. Идиомы в Ruby и хороший стиль 03:41
  # пример в приложении - тут PROGS\tmp\oop_basics\Task_7\depot_v3\modules.rb
  # Этот оператор присваивает переменной значение только в том случае, если переменная не инициализированна (т.е если она содержит nil или false)
  z ||= 1 
  # => 1
  z ||= 2 # Если попробуем присвоить новое значение, z не поменяется, потому что там уже записано значение 1
  # => 1
    # помимо осовного применения этот оператор имеет еще два частых применения:
    # 1. - запись дефолтного значения
      class Foo
        def bar(key)
          h = {a: 1, b: 2}
          value = h[key]            # получаем значение
          # value = 0 unless value      # присваиваем value значение 0, если у нас в хеше не было такого ключа (который дали в аттрибуте в строке 30) но лучше использовать идиому строчкой ниже
          value ||= 0                     # используем идиому, точнее оператор ||= вместо строчки выше (05:40)
          # ...далее как-то используем value
        end

      foo = Foo.new
      puts foo.bar(:c)  
      # => 0   т.к ключа :c в хеше нет, то значение value по умолчанию присвоился 0
    
    # 2. - мемоизация. Этот термин обозначает что мы запоминаем вычисленное значение. Эта идиома используется в ruby когда 
        # нужно вычислить какое-то значение в методе, и потом несколько раз используется.
        # чтобы каждый раз его не вычислять, мы его как-бы кешируем (06:50)

        def long_method  # этот метод ничего не делает 3 секунды (long он потому что он как пример метода, который долго что-то вычисляет в рамках программы)
          sleep(3)
        end
        # в этом методе используем мемоизацию. Тут мы должны сделать следующее: мемоизация обычно используется в рамках класса
        # вызываем некий инстанс метод и хотим чтобы только в первый раз было выполнено длинное вычисление long_method, а дальше возвращалось значение
        # но это только в том случае, если при одном и томже вызове метода long_method - значение не меняется в рамках программы. 
        # для этого, чтобы запомнить значение - нужно его куда-то поместить, т.к мы говрим о классе, то это инстанс переменная (@m), чтобы мы могли ее использовать во всем классе
        def memoization # (07:30) 
          @m ||= long_method       # тут получается что когда в первый раз вызовем метод memoization, т.к в инстанс переменной никакого значения нет                 
        end                         # у нас будет выполненно то что справа оператора присваивания (т.е long_method), он будет выполнен и его значение будет присвоено в переменную @memoization
      end                           # в следущий раз когда мы снова вызовем memoization на этом же объекте, то long_method УЖЕ НЕ БУДЕТ ВЫПОЛНЯТЬСЯ, ПОТОМУ ЧТО В ЗНАЧЕНИИ инстанс перменной @m есть какое-то значение
                                        #  и оно просто будет возвращено 
      
    
    #   Результат:         (09:10)
    #  1. если вызовем irb
    #  2. подгрузим load './idioms.rb'
    #  3. создаем новый объект foo2 = Foo.new
    #  4. сначала просто вызываем long_method - foo2.long_method
    #  5. видим что управление не возвращается 3 секунды и возвращает значение 3, это просто метод sleep возвращает значение своего аргумента.
    #  6. Если несколько раз вызовем foo.long_method, то каждый раз будет возвращать 3 через 3 секунды
    #  7. теперь вызовем метод memoization. foo2.memoization. В первый раз он отработает также 3 секунды, потому что выполняется long_method.
    #  8. но во второй и последующие разы он возвращает значение мгновенно, потому что оно уже было вычислено в первый раз и сохранено в инстанс переменную @m и мы просто его получаем
    #  9. если сейчас создадим другой объект foo3 = Foo.new, то для него вычисление будет выполняться заново, потому что у него инстанс переменная не инициализирована

    # C:\Users\kirill.stulov\Desktop\OctoberCutover_Back\Desktop\PROGS\tmp\oop_basics\Task_8\lesson>irb
    #   irb(main):001:0> load './idioms.rb'
    #   1
    #   2
    #   3
    #   0
    #   => true
    #   irb(main):002:0> foo2 = Foo.new
    #   => #<Foo:0x00000000057afa08>
    #   irb(main):003:0> foo2.long_method
    #   => 3
    #   irb(main):004:0> foo2.memoization
    #   => 3
    #   irb(main):005:0> foo2.memoization
    #   => 3
    #   irb(main):006:0>


# ИДИОМА 4 двойное отрицание '!!'    (10:26)
  class User
    attr_accessor :name   # у класса user есть геттер и сеттер для атрибута name
    
    # метод должен возвращать true, если значение в name есть
    def has_name?       # метод возвращает true или false в зависимости от того, установлено значение в этом аттрибуте или нет. КСТАТИ (предиката) знак в конце метода "?" это тоже идиома
      !!name              # "!!"- метод двойное отрицание. (12:30) Здесь конвертируем значение name в тип bolean, т.е в true или false, а затем его инвертируем
    end                     # этот метод можно записать длинным способом name.nil? ? false : true
                             # если записать просто name, то вернется либо значение, либо nil, если там пусто
                                  # если будет одно отрицание !name, то будет первичное инвертирование значения. Т.е если у нас в name какое-то значение есть, то будет отрицание и вернется false. И соответственно если в name будет nil, то вернется true

    # Иными словами:
    a = nil
    !a #=> true   !a означет - а пустой?  Да!
    a = 1
    !a #=> false   - а пустой? Нет
    !!a # => true - с двумя !, предыдущее значение инвертировано.

  # Пример
  # irb(main):007:0> user = User.new
  # => #<User:0x00000000056f7408>
  # irb(main):008:0> user.has_name?
  # => false
  # irb(main):009:0> user.name = "Roman"
  # => "Roman"
  # irb(main):010:0> user.has_name?
  # => true

# ИДИОМА 5 "использовать отрицание уже существующего метода" (14:28) идиома связанная с методами предикатами
  # часто возникает необходимость создать метод предикат наоборот. Например есть метод has_name? чтобы построить логику в программе таким образом:
  #  - если пользователь не имеет имени, мы его запрашиваем, можем использовать либо if !has_name? или unless has_name?, т.е некий условный оператор с отрицанием 
  #   либо можно сделать has_not_name?. Если в коде встречаются два метода предиката, которые противоположны друг другу, то на самом деле нужен только один, а ввторой 
  #   испольхует первый метод с отрицанием т.е

    def has_not_name?         # возвращает значение наоборот от has_name?
      !has_name?              # метод возвращает false если значение в этом аттрибуте установлено (т.е отрицание метода has_name?)
    end

  end

# ИДИОМА 6 'массив строк' массив из строк неудобно набирать  (15:45)
  girls = %w(lena olga natasha)

# ИДИОМА 7 &:some_method  Proc. Часто к массиву применяем итератор и некий метод (16:55) http://ruby.qkspace.com/ruby-chto-oznachaet-vyrazhenie-some_method
  # допустим предыдущий массив нужно проитерировать с целью озаглавить все имена
  girls.map { |g| g.upcase } # это не длинная запись и в целом не страшно, но есть более короткая запись. основыавется она на том, что любой символ можно превратить в объект proc
                              # т.е любой символ можем превратить в блок делается это так,
  girls.map(&:upcase)           # у массива или любого другого объекта вызваем тот метод который хотим и вместо блока передаем аргумент, который начинается с & (этот знак и создает блок) и дальше символ с названием метода (в данном случае это upcase)
                                  # такая запись вызовет метод map, передаст туда блок, в блок будет передано значение каждого элемента массива и у каждого этого элемента будет вызван метод upcase
  girls.each(&:upcase)
  # т.е если есть некий массив или хеш и некий итератор (map, each...), т.е перебираем каждый элемент массива и к каждому применяем один и тот-же метод (18:15)
  # самое важное - такая запись эффективнее раз в 20!   но работает это только для одного метода

# ИДИОМА 8 Использование хеша вместо оператора case (19:18)
  class Color1
    def code(name)          # метод который возвращает код RGB по имени цвета. Методу code передаем название red и он возвращает нам код красного цвета. И для эффективности мы сохраняем это значение в инстанс переменную
      @code = case name       # инстанс переменной @code присваиваем значение в зависимости от того, что у нас в name. В качестве значений у нас символы.
      when :red
        "#f00"
      when :green
        "#0f0"
      when :begin
        "#00f"
      when :white # 
        "#fff"
      else                  # во всех остальных случаях возвращаем код черного цвета
        "#000"
      end
    end
  end
  # код выше - рабочий, но у него есть большой минус, он длинный и он плохо читается (20:40)
  # КОГДА ЕСТЬ СИТУАЦИЯ ЧТО НА ОСНОВЕ ОДНОГО ЗНАЧЕНИЯ МЫ ПОЛУЧАЕМ ИЛИ ВЫЧИСЛЯЕМ ДРУГОЕ ЗНАЧЕНИЕ(ЧАСТИЧНО ИЛИ ПОЛНОСТЬЮ ПРЕДУСТАНОВЛЕННОЕ), ТО ЗАДАЧА ОЧЕНЬ ХОРОШО ЛОЖИТСЯ В ХЕШ (20:40)
  # ниже повторяем класс Color, но уже с обновлениями
  class Color2
    COLORS = { red: "#f00", green: "#0f0", blue: "#00f", white: "#fff" } #(22:25) вводим константу, которая является хешем и в которой прописываем значения ключа (т.е первого значения на основе которого получаем собственно значение) и значение
    def code(name)                                                        # метод который возвращает код RGB по имени цвета. Методу code передаем название red и он возвращает нам код красного цвета. И для эффективности мы сохраняем это значение в инстанс переменную
      @code = COLORS[name] || "#000"                                        # сократили код до одной строчки. из константы COLORS получаем значения, либо если оно не было возвращено - возвращаем дефолтное значение
      # @code ||= "#000"                                                      # можно было еще использовать оператор ||= но в данном случае это не имеет значения (23:20)
    end
  end
  # этот вариант эффективнее и короче (хеш гораздо эффективнее и быстрее чем case. потому как case поочередно проходит по всем вариантам, а хеш заточен на то чтобы очень быстро искать значения) (24:50)
  # на тот случай если в значениях нужно использовать методы: https://stackoverflow.com/questions/27645773/store-functions-in-hash

# ИДИОМА 9 Alias - псевдонимы (25:05) Alias это один и тот-же метод, который имеет различные названия
  # чтобы не писать тот-же самый метод (code) и не дублировать код, создадим alias для метода code
  class Color3
    COLORS = { red: "#f00", green: "#0f0", blue: "#00f", white: "#fff" } #
    def code(name)                                                        # 
      @code = COLORS[name] || "#000"                                        # 
    end
 
    alias_method :by_name, :code        # создаем alias для метода code. Используется метод класса alias_method, который определен во всех классах, далее символом пишется новое название :by_name, и старое :code
  end                                     # последовательность: пишем alias -> :by_name, а потом для какого метода этот alias -> :code
  # теперь у нас в классе Color3 есть и метод code и метод by_name
  # мы не добавили новый метод, мы просто создали псевдоним 
  # D:\Projects\RoR_from_Zero_Thinknetica_TEST\Task_8\lesson>irb
  # irb(main):001:0> load './idioms.rb'
  # irb(main):002:0> color3 = Color3.new
  # => #<Color3:0x3198f00>
  # irb(main):003:0> color3.code(:red)
  # => "#f00"
  # irb(main):004:0> color3.by_name(:green)
  # => "#0f0"
  # irb(main):005:0>

  # ЗАЧЕМ ЭТО НУЖНО? Часто один и тот-же метод в различных ситуациях можно вызвать по разному, т.е логично он будет называться по разному.И чтобы всэ эти ситуации учесть, можно использовать alias_method (26:50)

# ИДИОМА 10 "переопределение дефолтного поведения" Допустим хотим чтобы при присвоении имени пользователю, оно сразу автоматически начиналось с заглавной буквы (27:00)
  # в этом случае не нужно писать attr_reader :name и переписывать метод руками, а если есть attr_accessor, то ничего страшного, просто перепишем сеттер (строка 200)
  class User2
    attr_accessor :name   
      
    def has_name?       
      !!name              
    end 

    def has_not_name?         
      !has_name?              
    end

    def name=(value)                      # переписанный сеттер
      @name = value.capitalize               # переписываем сеттер таким образом, что инстанс переменной @name (она совпадает по имени с тем что в attr_accessor) присваиваем value.capitalize 
    end                                         # Т.Е ЕСЛИ СТОИТ ЗАДАЧА ПЕРЕОПРЕДЕЛИТЬ ДЕФОЛТНОЕ ПОВЕДЕНИЕ КАК ГЕТТЕРА ТАК И СЕТТЕРА то просто пишем этот метод, это считается нормой
  end

  # C:\Users\kirill.stulov\Desktop\OctoberCutover_Back\Desktop\PROGS\tmp\oop_basics\Task_8\lesson>irb
  # irb(main):001:0> load './idioms.rb'
  # irb(main):002:0> user2 = User2.new
  # => #<User2:0x0000000005658e20>
  # irb(main):003:0> user2.name = "anton" 
  # => "anton"
  # irb(main):004:0> user2.name
  # => "Anton"
  # irb(main):005:0>

  # не смотря на то, что само значение у нас, когда мы присвоили user2.name было с маленькой буквы, тем не менее в @name записалось с большой буквы (28:20)
  # нет ничего страшного в переопределении геттеров и сеттеров

# ИДИОМА 11  - если у нас есть некий метод, который принимает хеш в качестве аргумента, то можно передавать хеш в фигурных скобках и без (эт просто синтаксический сахар) (28:50)
  def m(hash)
  end

  m({a: 1, b: 2})               # можем передать этому методу хеш в фигурных скобках
  m(a:1, b: 2)                    # так и без {}. И такая запись без фиг скобок, похожа на то, что мы передаем именованный аргумент
                                    # если мы видим запись вида ключ - значение, т.е - некий хеш но без фиг скобок, то это просто хеш как передача параметра
  def m(arg1, hash)                   # если бы наш метод был написан так, 
  end
  m(3, a: 1, b: 2)                    # то мы должны были бы вызывать его следущим образом (29:40). Первый объект без имени, просто значение 3, потом через запятую хеш
                                        # зачем это нужно....

# ИДИОМА 12 "передача переменного количества аргументов в метод"- еще одна возможность чистого ruby (30:00)                                      
  class Train                                                   # допустим есть класс Train
    attr_accessor :type, :model, :number, :number_of_wagons       # и у него есть различне аттрибуты, например, номер поезда, тип поезда, количество вагонов и т.д  (30:20)

  # def initialize(number, type = "Unknown", model = "Unknown", number_of_wagons = 0)  # и мы хотим это инициализировать, пишем конструктор, в котором должны перечислить все эти параметры, причем обязателен только number, остальне имеют дефолтное значение
  #   @number = number                                                                   # дальше это все инициализируем (инициализировать - установить начальные значения для атрибутов объекта при его создании)
  #   @type = type
  #   @model = model
  #   @number_of_wagons = number_of_wagons
  # end

  # код нормальный и рабочий, но если таких аттрибутов огромное кол-во и часть можем инициализировать а часть нет (31:05)
    # например тут мы не можем создать объект класса Train только с номером и, например кол-вом вагонов
      # потому что четко заданный список аргументов говорит о том, что если хотим какие-то аргументы из дефолтных значений изменить, нам нужно все,
        # которые идут до этого, тоже изменить. К тому же, опять таки вдруг 20 аргументов, т.е огромный список, и только определение метода вылезет на несколько строк
          # ПОТОМУ, ЕСЛИ КОЛ-ВО АРГУМЕНТОВ ПЕРЕМЕННОЕ, ТО ПОЛЬЗУЕМСЯ СТАНДАРТНЫМ СРЕДСТВОМ RUBY ПЕРЕДАВАТЬ ПРОИЗВОЛЬНОЕ КОЛ-ВО АРГУМЕНТОВ
            # ДЛЯ ЭТОГО ВСЕ АРГУМЕНТЫ ЗАПИСЫВАЕМ СЛЕДУЮЩИМ ОБРАЗОМ -> def initialize(number, *args)
            
    # def initialize(number, *args)   # * означает что там массив аргументов (32:05). Т.е когда будем вызывать new класса Train, первый аргумент number будет обязательный, а дальше через запятую можем передавать произвольное кол-во аргументов и они все будут доступны внутри метода через массив args
    #   @number = number                                                                                
    #   @type = args[0] || "Unknown"                     # т.к это массив то обращаемся по индексу, или присваиваем дефолтное значение  (32:45)
    #   @model = args[1] || "Unknown"
    #   @number_of_wagons = args[2] || 0 
    # end
  
  # результат:
  # D:\Projects\RoR_from_Zero_Thinknetica_TEST\Task_8\lesson>irb
  # irb(main):001:0> load './idioms.rb'
  # irb(main):002:0> t = Train.new('123')
  # => #<Train:0x270c180 @number="123", @type="Unknown", @model="Unknown", @number_of_wagons=0>
  # irb(main):003:0> t = Train.new('123', 'cargo')
  # => #<Train:0x30d9e78 @number="123", @type="cargo", @model="Unknown", @number_of_wagons=0>
  # т.е все что идет после первого аргумента - помещается в массив.
    # МОЖНО ДАЖЕ УБРАТЬ ПЕРВЫЙ АРГУМЕНТ, ОСТАВИВ ТОЛЬКО *args и было бы так
    # def initialize(*args)   
    #   @number = args[0]                                                                                
    #   @type = args[1] || "Unknown"                     
    #   @model = args[2] || "Unknown"
    #   @number_of_wagons = args[3] || 0 
    # end
    # так можно передавать в любой метод, не обязательно initialize, написать *название_параметра_аргумента и это будет массив (т.е можем произвольное кол-во аргументов передавать) (34:34)
    # НО ТУТ ЕСТЬ НЕСКОЛЬКО ПРОБЛЕМ, 1. ПРЕЖДЕ ВСЕГО ВАЖЕН ПОРЯДОК АРГУМЕНТОВ, Т.Е ЕСЛИ ЗАДАДИМ СНАЧАЛА ТИП А ПОТОМ НОМЕР, ТО ДАННЫЕ БУДУТ ИНИЦИАЛИЗИРОВАНЫ НЕВЕРНО!
      # МЕТОД НАМ НЕ ПОДСКАЗЫВАЕТ В КАКОМ ПОРЯДКЕ НУЖНО ПЕРЕДАВАТЬ АРГУМЕНТЫ
        # 2. В ИНДЕКСАХ [0], [1] ЛЕГКО ЗАПУТАТЬСЯ 
          # РЕШЕНИЕ - ПЕРЕДАВАТЬ ХЕШ ОПЦИЙ В МЕТОД (36:05)
          def initialize(number, options = {})   # передаем второй аргумент и сразу присваиваем ему дефолтное значение пустого хеша, это позволит создавать объект класса Train как с доп аргументами, так и без (36:16), т.е только с обязательным number
            @number = number                                                                                
            @type = options[:type] || "Unknown"                     # по имени (по ключу) опции получаем значение из хеша опций (причем этот хеш опционален) или присваиваем дефолтное значение
            @model = options[:model] || "Unknown"                    # если ничего не передаем, то соответствующий ключ будет возвращать nil, а т.к используется оператор или то будет записываться дефолтное значение (37:06)
            @number_of_wagons = options[:number_of_wagons] || 0 
          end
        end
        # D:\Projects\RoR_from_Zero_Thinknetica_TEST\Task_8\lesson>irb
        # irb(main):001:0> load './idioms.rb'
        # irb(main):003:0> t = Train.new('123')
        # => #<Train:0x2f76db0 @number="123", @type="Unknown", @model="Unknown", @number_of_wagons=0>
        # irb(main):004:0> t = Train.new('123', type: 'cargo')                                          # !! ТУТ ОБРАТИ ВНИМАНИЕ, ПРИ ПЕРЕДАЧЕ ХЕША (type: cargo) СКОБКИ ОБОЗАЧАЮЩИЕ ХЕШ - ОПЦИОНАЛЬНЫ (40:30)
        # => #<Train:0x30e84e8 @number="123", @type="cargo", @model="Unknown", @number_of_wagons=0>
        # irb(main):005:0>
        # теперь, порядок аргументов не важен, т.к это хеш (37:50)  
          # irb(main):003:0> t = Train.new('123', model: 'RJD')
          # => #<Train:0x34f4b50 @number="123", @type="Unknown", @model="RJD", @number_of_wagons=0>
        
# ИДИОМА 13  "Расширение и дополнение классов" (40:55)
  # Расширение стандартных классов на примере строк
  # В руби все классы являются открытыми, это значит что когда мы написали какой-то класс в некотором файле и подключили его в свою программу, 
  # дальше по ходу программы мы можем изменить этот класс (добавить туда методы, изменить стандартные и тд) причем это касается любых классов, не только тех которые пишем мы
  # т.к все классы открыты, мы можем любой стандартный класс дописать
  # В этом файле создадим класс string и все что мы в нем создадим будет доступно для всех строк, после того как мы этот файл подключим
  class String
    def self.random(length)              # допустим хотим написать метод класса, который бы возвращал случайную строку определенной длинны, его аргументом будет являться длина этой строки (42:25)
      rand(36**length).to_s(36)           # (стандартный механизм получения случайной строки из последовательности букв и цифр) метод rand возвращает случайное число, передаем ему аргументом диапазон чисел, в котором хотим получить случайное число, например rand(1..10) вернет случайное число от 1 до 10, а rand(10) вернет случайное число от 0 до 9, а rand(36**length) вернет случайное число от 0 до 36 в степени length, т.е если мы передадим в этот метод 3, то мы получим случайное число от 0 до 36 в степени 3, т.е от 0 до 46656, затем вызываем метод to_s(36), который переводит число в строку, а в скобках мы передаем основание системы счисления, т.е в данном случае мы получим строку, которая будет состоять из цифр и букв латинского алфавита, т.к основание 36, а длина этой строки будет равна length  
    end

    def my_method                         # также пишем инстанс метод, который возвращает значение строки у которой мы это вызовем
      self.capitalize                       # к строке обратимся через self (42:50)
    end

    def <<(value)                       # можно изиенить даже стандартные методы, допустим хотим чтобы конкатенация была через пробел
      "#{self} #{value}"
    end

  end

  puts String.random(10)               # вызываем метод класса random, передавая ему аргументом длину строки, которую мы хотим получить

  puts "text".my_method

  puts "abc" << "dfg"

# ИДИОМА 14  "singleton method" (45:20) 
  # ВОЗМОЖНОСТЬ ДОБАВАТЬ МЕТОД К ОДНОМУ ЕДИНСТВЕННОМУ ОБЪЕКТУ
  # 1. есть singleton pattern - позволяет создавать объект только в одном экземпляре
  # 2. есть singleton обозначающий объект класса когда мы добавляем методы класса
  # 3. а сейчас о singleton method - это возможость добавить некоторый метод к одному объекту

  class Foo   # объявим класс без методов
  end

  foo = Foo.new # если мы создаем объект, то никаких методов у него нет

  # можно написать следующее (46:00)
  class << foo                      # сначала класс class, потом сам объект foo, которому хотим добавить метод 
    def m                             # и к примеру такой метод m, который выводит 
      puts "Only for one object"       # такую строку, потому что находится только в одном объекте
    end
  end

  # если теперь у объекта foo вызвать метод m, это сработает (46:20)
  foo.m
  # => Only for one object

  # если создать другой объекта класса Foo, то у него этого метода нет
  foo2 = Foo.new
  # foo2.m
  # => undefined method `m' for #<Foo:0x2ff7378>

  # на практике это используется редко, в основном в различных библиотеках
