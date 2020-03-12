#<====================Добавление значений одного хеша в другой======================================>
# Имеем два хеша
old_hash = {13 => "train0"}
new_hash = {12 => "train1"}

new_hash[old_hash.keys] = old_hash.values # добавляем ключи и значения хеша old_hash в new_hash

number = new_hash.keys.join # выводим все ключи хеша new_hash  # join приводит их к строке!
number

# movies[title.to_sym] = rating.to_i                 # добавляем в хеш movies значения переменных title и rating в качестве ключ-значение (title: rating). Не забываем привести их к виду (ключ - символ, значение - целочислоенное)  
