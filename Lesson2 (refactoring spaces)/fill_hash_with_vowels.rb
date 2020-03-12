#«аполнить хеш гласными буквами, где значением будет €вл€тьс€ пор€дковый номер буквы в алфавите (a - 1).

alpabet = ('a'..'z').to_a

alph_vowels = ["a", "e", "i", "o", "u", "y"]     
vowels = {}                                       
alpabet.each_with_index do |letter, index|         
  vowels[letter] = index+1 if alph_vowels.include?(letter)  
end
puts vowels

=begin
 –азжевал по строкам
3 создаем алфавитный диапозон и приводим к массиву
5 гласные известны, создаем массив с ними
6 создаем пустой хеш
7 итериру€ методом each_with_index передаем каждый элемент массива alphabet в блок с двум€ переменными - letter и index  
  each_with_index дает доступ не только к значени€м элементов диапазона, но и их индексам 
8 в ранее пустой хеш vowels передаем значени€ переменной letter из массива alphabet, присваива€ индекс и наращива€ его на единицу,
  только если массив с гласными alph_vowels такое значение переменной  
=end


=begin вот отличный метод вариант дл€ массива
a = %w{ a b c d e f }
a.keep_if { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]
=end

=begin
ѕример each_with_index из документации
Calls block with two arguments, the item and its index, for each item in enum. Given arguments are passed through to each().

If no block is given, an enumerator is returned instead.
hash = Hash.new
%w(cat dog wombat).each_with_index { |item, index|
  hash[item] = index
}
=end

=begin
≈ще пример
vowels = (/[aeiou]/i)
alphabet = ("a".."z").to_a
alp_hash = {}
alphabet.each_with_index { |letter, index| 
	alp_hash[letter] = index                 #обозначаем что будет ключем, а что значением в хеше alp_hash
}
=end


