class WagonCargo < Wagon

	def initialize(number, type = :cargo, manufacturer)
		super 								#�������������� ����� initialize ������������� ������ c ������� super, ������� � ���� ��� cargo �� ���������
	end											#super �������� ������������ ������������� ������

# private
# 	def type_match?(wagon)           # ����� ��� ���� � train_cargo. ��� ����� ������� ���������� wagon_such_train?  (���� ����� ���� � train_cargo, ����� �� �� ���?); ������, ������������ ���������� ��������, ������������� �������������� ������, ��� ������ ����� ����� ������
#     	wagon.class == WagonCargo
#   	end

end