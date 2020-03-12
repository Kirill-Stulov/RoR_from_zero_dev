#��������� ��� �������� �������, ��� ��������� ����� �������� ���������� ����� ����� � �������� (a - 1).

alpabet = ('a'..'z').to_a

alph_vowels = ["a", "e", "i", "o", "u", "y"]     
vowels = {}                                       
alpabet.each_with_index do |letter, index|         
  vowels[letter] = index+1 if alph_vowels.include?(letter)  
end
puts vowels

=begin
 �������� �� �������
3 ������� ���������� �������� � �������� � �������
5 ������� ��������, ������� ������ � ����
6 ������� ������ ���
7 �������� ������� each_with_index �������� ������ ������� ������� alphabet � ���� � ����� ����������� - letter � index  
  each_with_index ���� ������ �� ������ � ��������� ��������� ���������, �� � �� �������� 
8 � ����� ������ ��� vowels �������� �������� ���������� letter �� ������� alphabet, ���������� ������ � ��������� ��� �� �������,
  ������ ���� ������ � �������� alph_vowels ����� �������� ����������  
=end


=begin ��� �������� ����� ������� ��� �������
a = %w{ a b c d e f }
a.keep_if { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]
=end

=begin
������ each_with_index �� ������������
Calls block with two arguments, the item and its index, for each item in enum. Given arguments are passed through to each().

If no block is given, an enumerator is returned instead.
hash = Hash.new
%w(cat dog wombat).each_with_index { |item, index|
  hash[item] = index
}
=end

=begin
��� ������
vowels = (/[aeiou]/i)
alphabet = ("a".."z").to_a
alp_hash = {}
alphabet.each_with_index { |letter, index| 
	alp_hash[letter] = index                 #���������� ��� ����� ������, � ��� ��������� � ���� alp_hash
}
=end


