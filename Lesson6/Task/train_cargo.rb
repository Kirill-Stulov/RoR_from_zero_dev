class TrainCargo < Train
	def initialize(number, type = :cargo, manufacturer)
		super                             		#�������������� ����� initialize ������������� ������ c ������� super, ������� � ���� ��� cargo �� ���������/ 
	end										#super �������� ������������ ������������� ������

private

	# def wagon_such_train?(wagon)
	# 	wagon.class == WagonCargo
	# end

    def type_match?(wagon)              # ������������ � ������ add_wagon � Train; ������, ������������ ���������� ��������, ������������� �������������� ������, ��� ������ ����� ����� ������
    	wagon.class == WagonCargo
  	end


end