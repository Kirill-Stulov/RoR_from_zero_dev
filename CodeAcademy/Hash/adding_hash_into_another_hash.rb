#<====================���������� �������� ������ ���� � ������======================================>
# ����� ��� ����
old_hash = {13 => "train0"}
new_hash = {12 => "train1"}

new_hash[old_hash.keys] = old_hash.values # ��������� ����� � �������� ���� old_hash � new_hash

number = new_hash.keys.join # ������� ��� ����� ���� new_hash  # join �������� �� � ������!
number

# movies[title.to_sym] = rating.to_i                 # ��������� � ��� movies �������� ���������� title � rating � �������� ����-�������� (title: rating). �� �������� �������� �� � ���� (���� - ������, �������� - ��������������)  
