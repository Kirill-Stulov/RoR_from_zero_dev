class TrainCargo < Train
	def initialize(number, type = :cargo)
		super                             #�������������� ����� initialize ������������� ������ c ������� super, ������� � ���� ��� cargo �� ���������
	end

private

	def wagon_such_train?(wagon)
		wagon.class == WagonCargo
	end

end