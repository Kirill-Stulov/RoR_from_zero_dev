#пример вложенного хеша
=begin
regions = { 77 => { title: 'Москва', code: 495, time_zone: 0 }, 78 => { title: 'С.Петербург', code: 812, time_zone: 0 } }

puts regions[78]
puts regions[78][:title]

#еще пример
cart = { "bread" => { price: 12, amount: 2, sum: 12**2 }, "Meat" => { price: 32, amount: 0.5, sum: 32**0.5 }}
puts cart["bread"][:price]

#еще пример добавления
names = Hash.new
names.store(1, "Jane")
names.store(2, "Thomas")
names.store(3, "Rebecca")

#еще пример добавления
h = {a: 1, b: 2, c: 3}

h[:d] = 4
puts h      => {:a=>1, :b=>2, :c=>3, :d=>4}

# добавление значений к одному ключу
st_and_tr = { a: [1,2,3] }  # для того, чтобы у одного ключа было множество значений, завернем значения в массив 
st_and_tr[:a] << 4           # так можно добавлять новые значения
p st_and_tr

# удаление значений из простого хеша
h = { "a" => 100, "b" => 200 }
h.delete("a")                              #=> 100
h.delete("z")                              #=> nil
h.delete("z") { |el| "#{el} not found" }   #=> "z not found"

# удаление значений из вложенного хеша
h = {"a"=>[1, 2], "b"=>[3]}
h['a'].delete(2)                           #=> {"a"=>[1], "b"=>[3]}


# получение значений или ключей
h = { :a=>[2, 3, 8], :b=>[12, 13], :c=>[5]}
p h.values_at(:a)
p h.keys

# получение ключей по конкретному значению
h = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
p h.key(200)   #=> "b"
h.key(300)   #=> "c"
h.key(999)   #=> nil

# поиск
names = {"fred"=>"jones","jane"=>"tucker", "joe"=>"tucker","mary"=>"SMITH"}
# Найти tucker.
names.detect {|k,v| v=="tucker" } # ["joe","tucker"]
# Найти имена, записанные прописными буквами.
names.find {|k,v| v==v.upcase }   # ["mary", "SMITH"]


# как ДОСТАВАТЬ КЛЮЧ ПО ЗНАЧЕНИЮ, ЕСЛИ ЗНАЧЕНИЕ ЯВЛЯЕТСЯ ЧАСТЬЮ МАССИВА!
h = { :a=>[2, 3, 8], :b=>[12, 13], :c=>[5]}
find = h.detect{|k,v| v.include?(2)}
puts find[0]                         # => a


# how to check single value in hash key
h = { a: 1 }                         
p h[:a] == 1                   # => true    

# how to check multiple values in hash key
h = { a: [1,2] }                           # для того, чтобы у одного ключа было множество значений, завернем значения в массив
h[:a] << 3                                 # добавим еще одно значение, просто потому что умеем
p h[:a] == [1,2,3]                # => true

# how to check one value in multiple values
h = { a: [1,2,3] }
p h[:a].values.include?(2)

# how to check separate key and separate value
h = { a: [1,3], b: [7,8] }
p h.keys.any?{|key| key == :a } && !h.values.any?{|value| value.include?(2)} # проверяем во всех парах хеша, годится для проверки что такой ключ отдельно существует в какой-либо из пар в массиве h 
                                                                               # и значение 2 НЕ существует в какой-либо из пар в массиве h

# how to check exact pair for key and exact value in it's values
h = { a: [1,2,3], b: [7,2,8] }                                         
p h.any?{|key, value| key == :a && value.include?(2)}     # и чтоб в значениях у него была 2 среди других значений пары

# пример удаления и добавления значений в хеш,в котором значения лежат в виде массива.
# Что тут происходит. Есть хеш с хешами. В нем у каждого ключа есть массив со значениями. 
# У нас условие, если пользователь пытается добавить к одному из существующих ключей просто новое значение, то оно добавляется, если его еще нет в другом хеше.
# Если значение уже есть, то оно удаляется у текущего ключа и добавляется в заданное.
# Если пользователь добавялет не только новое значение, но и новый ключ, то образутся новый хеш, который добавляется в основной хеш с хешами.  
# ВАЖНО! метод << работает только если эта станция уже существует в общем массиве @h
# если станция не существует, а создается параллельно с добавлением, нужно использовать store или =

if @h.any?{|k,v| v.include?(@num)} # если номер поезда есть в значениях общего массива @h
	puts "было #{@h}"
	puts "Убираем поезд #{@num} со станции #{@current_v[0]} и добавляем его на станцию #{@letter}"
	@h[@current_v[0]].delete(@num)
	if @h.any?{|k,v| k == @letter}   # если такая станция уже существует, 
		@h[@letter] << @num								# то просто добавляем к ней поезд, который перед этим убрали с предыдущей станции            
		puts "Вот что вышло #{@h}"
	else                             # если станция еще не существует, используем метод добавления в хеш =
		@h[@letter] = @num
		puts "Вот что вышло #{@h}"
	end
else
	puts "Чето пошло не так"
end

=end



=begin
	students = ["jim", "bob", "sally"]
	teachers = ["mrs. jones", "mrs. sharpe", "mrs. ray"]

	puts "what's your name ?"
	answer = gets.chomp

	if answer.include?(students.to_s)
  		puts "you are a student"

	elsif
  		puts "you are a teacher"

	end
=end
