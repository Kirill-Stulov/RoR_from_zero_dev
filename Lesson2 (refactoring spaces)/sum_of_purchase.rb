=begin
 ����� �������. ������������ ������ ���������� �������� ������, ���� �� ������� � ���-�� ���������� ������
  (����� ���� ������� ������). ������������ ����� ������ ������������ ���-�� ������� �� ��� ���, ���� �� ������ "����" 
  � �������� �������� ������. �� ������ ��������� ������ ����������:

    ��������� � ������� �� ����� ���, ������� �������� �������� �������� �������, � ��������� - ��������� ���,
    ���������� ���� �� ������� ������ � ���-�� ���������� ������. ����� ������� �������� ����� �� ������ �����.
    ��������� � ������� �� ����� �������� ����� ���� ������� � "�������".
=end


####��� �������
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

	cart[purchase] = { price: price, amount: amount, sum: amount*price }    # � ����� ������ ��� cart ���������� ���� �� ���������� purchase � ����������� ��� ��������� �������� � ���� ����-��������, ��� ����� - �������, � ������� - ������ �� ���������� price, num, ����� ����������� �������� ������� sum �������� ��� �� �����. ���������� ��������� ���.
	total += amount * price													# ��������� �������� ����� ���� �������, ��� ����� 0 + ����� ���� �������� ���������� amount ���������� �� ����� ���� �������� ���������� price 
end

puts cart
puts "Total cart price is #{total}"


####������� �������
=begin
name = ""
cart = {}
total  = 0

until name == "stop"                      # (�� ��� ��� ���� ������� �� �����) �.�. �� ��� ��� ���� �� ������ � �������� �� ������ stop, ��������� ��� ��� ����
	print "Please enter purchase name: "
	name = gets.chomp

	next if name == "stop"                # ���������� ��� ��� ����, ���� ���� ������� stop

	print "Please enter price per unit: "
	price = gets.chomp.to_f

	print "please enter number of units: "
	amount = gets.chomp.to_f

	cart[name] = {price: price, amount: amount, sum: amount*price } # � ����� ������ ��� cart ���������� ���� �� ���������� name � ����������� ��� ��������� �������� � ���� ����-��������, ��� ����� - �������, � ������� - ������ �� ���������� price, num, ����� ����������� �������� ������� sum �������� ��� �� �����. ���������� ��������� ���.
	total += amount*price                                      # ��������� �������� ����� ���� �������, ��� ����� 0 + ����� ���� �������� ���������� amount ���������� �� ����� ���� �������� ���������� price 
end

puts cart[name]  ###  ��������� � ����� �� ���� ��� ���� ������������, �� ���� ������ �������� ���������� 

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
	products.merge!(purchase=> {price, number})             # ��������� ��� ��������� � ��� products, ���� � �������� ���� ��������� �����
															# ������� ���, ������� �������� �������� �������� �������, � ��������� - ��������� ���
														# ������� �������� ����� �� ������ �����
	#puts "Your basket contains: #{products.keys}" 		#������� �������� ����� ���� ������� � "�������"
end
#=end

puts products
=end


#products = {"bread" => {12, 0.5}}  #products = {product_name {price, quantity}} ���, ������� �������� �������� �������� �������, � ��������� - ��������� ���


#products[:a] = 45  # ������ ���������� ������ �������� � ��� products
