# ���� ����� ��������� ����� ��������� �������
# ����� inject C:\Users\gz7n3r\Desktop\PROGS\work\hometask Online Course by Prog School\Lesson2 OOP in Ruby
# � ����� 01:14:00

numbers = (5..15).to_a
puts numbers.inject(0){|sum, number| sum + number } #�� ������ ���� � sum 0 (������ ��� �������� 0), � � number 5, ��� ������������. �� ������ ���� � sum 5

#���
=begin
result = numbers.inject(0) do |sum, number|
	puts "Current element: #{number}"
	sum + number
end

puts result
=end

