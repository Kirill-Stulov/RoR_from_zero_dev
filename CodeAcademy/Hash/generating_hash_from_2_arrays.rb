# https://www.youtube.com/watch?v=jbLDUv0-Fbg
# Also, you can use args_1.zip(args_2).to_h if both arrays are always with same length
# это не реальный пример, в реальном нужно проверять что ключ из одного массива правильно соответствует значению из другого  

#<=============== Manual solution ================>

def title_builder(headers, data)
	hash = Hash.new
	headers.each_with_index{ |header, index| hash[header] = data[index] }
	puts hash
end


arr_1 = ['title', 'description', 'rating']
arr_2 = ['Fountainhead', 'Novel about unique perspectives', 5]

title_builder(arr_1, arr_2)


#<================ Ruby solution =====================>

if arr_1.length == arr_2.length
	puts arr_1.zip(arr_2).to_h
else
	puts 'arrays got different lenght!'
end