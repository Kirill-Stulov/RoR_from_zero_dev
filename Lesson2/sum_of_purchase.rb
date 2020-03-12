=begin
 Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара
  (может быть нецелым числом). Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" 
  в качестве названия товара. На основе введенных данных требуетеся:

    Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш,
    содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
    Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end


####мой вариант
purchase = ""
cart =     {}
total =    0

loop do
	puts "please enter purchase name: "
	purchase = gets.chomp.to_s
	break if purchase == "stop"

	puts "please enter price per unit: " 
	price = gets.chomp.to_f
	
	puts "please enter number of units: "
	amount = gets.chomp.to_f 

	cart[purchase] = { price: price, amount: amount, sum: amount*price }    # в ранее пустой хеш cart закидываем ключ из переменной purchase и присваиваем ему несколько значений в виде ключ-значение, где ключи - символы, а зачения - данные из переменных price, num, также присваиваем значение символу sum вычисляя его на месте. Получается вложенный хеш.
	total += amount * price													# вычисляем итоговую сумму всех покупок, она равна 0 + сумма всех значений переменной amount умноженная на сумму всех значений переменной price 
end

puts cart
puts "Total cart price is #{total}"


####вариант препода
=begin
name = ""
cart = {}
total  = 0

until name == "stop"                      # (до тех пор пока условие не верно) т.е. до тех пор пока на вопрос о названии не введут stop, выполняем все что ниже
	print "Please enter purchase name: "
	name = gets.chomp

	next if name == "stop"                # пропускаем все что ниже, если было введено stop

	print "Please enter price per unit: "
	price = gets.chomp.to_f

	print "please enter number of units: "
	amount = gets.chomp.to_f

	cart[name] = {price: price, amount: amount, sum: amount*price } # в ранее пустой хеш cart закидываем ключ из переменной name и присваиваем ему несколько значений в виде ключ-значение, где ключи - символы, а зачения - данные из переменных price, num, также присваиваем значение символу sum вычисляя его на месте. Получается вложенный хеш.
	total += amount*price                                      # вычисляем итоговую сумму всех покупок, она равна 0 + сумма всех значений переменной amount умноженная на сумму всех значений переменной price 
end

puts cart[name]  ###  посмотрим в самом ли деле они сами складываются, по идее выдаст значение последнего 

puts "*****************************"
puts cart
puts "Total cart price is: $#{total}"

=end





=begin
products = {}  
#=begin
loop do
	puts "please enter purchase name: "
	purchase = gets.chomp.to_s
	break if purchase == "stop"
	puts "please enter price per unit: " 
	price = gets.chomp.to_f
	puts "please enter number of units: "
	number = gets.chomp.to_f
	products.merge!(purchase=> {price, number})             # добавляем все введенное в хеш products, цена и стомость идут вложенным хешем
															# выводим хеш, ключами которого являются названия товаров, а значением - вложенный хеш
														# выводим итоговую сумму за каждый товар
	#puts "Your basket contains: #{products.keys}" 		#выводим итоговую сумму всех покупок в "корзине"
end
#=end

puts products
=end


#products = {"bread" => {12, 0.5}}  #products = {product_name {price, quantity}} хеш, ключами которого являются названия товаров, а значением - вложенный хеш


#products[:a] = 45  # пример добавления нового значения в хеш products
