#������ ���������� ����

regions = { 77 => { title: '������', code: 495, time_zone: 0 }, 78 => { title: '�.���������', code: 812, time_zone: 0 } }

puts regions[78]
puts regions[78][:title]

#��� ������
cart = { "bread" => { price: 12, amount: 2, sum: 12**2 }, "Meat" => { price: 32, amount: 0.5, sum: 32**0.5 }}
puts cart["bread"][:price]