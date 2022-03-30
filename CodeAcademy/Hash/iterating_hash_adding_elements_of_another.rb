#iterating one hash - adding elements from another hash

items = {}     # хеш, ключами которого являются названия товаров, а значением - вложенный хеш
cost_qty = {}  # хеш для цены и количества товара


# ввод данных и сохранение данных в хеши
loop do
  puts "please enter item name"
  item_name = gets.chomp
  break if item_name == "stop"
  puts "enter cost"
  cost = gets.chomp.to_i
  puts "enter quantity"
  qty = gets.chomp.to_f
  cost_qty[cost] = qty                                      #1. закидываем цену и к-во в хеш cost_qty, где cost ключ, qty значение
  cost_qty.each{|key, value| items[item_name] = key, value} #2. итерируем элементы хеша cost_qty, так чтобы его элементы стали значением, а ключами содержимое переменной item_name

end

puts cost_qty
puts items
