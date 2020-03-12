=begin
«аполнить массив числами от 10 до 100 с шагом 5
=end

arr = [10]
while arr.last != 100
	arr.push(arr.last + 5)
end


puts arr.class
p arr 

