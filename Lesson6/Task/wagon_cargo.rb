class WagonCargo < Wagon

	def initialize(number, type = :cargo, manufacturer)
		super 								#�������������� ����� initialize ������������� ������ c ������� super, ������� � ���� ��� cargo �� ���������
	end											#super �������� ������������ ������������� ������

private
	def type_match?(wagon)           # ��� ����� ������� ���������� wagon_such_train?
    	wagon.class == CargoWagon
  	end

end