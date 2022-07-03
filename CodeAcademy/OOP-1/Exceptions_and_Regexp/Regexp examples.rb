# Regexp examples
# see also here https://proglib.io/p/learn-regex/

# Пример с диапозоном, тут шаблон регулярки принимает не больше и ни меньше 4 букв. ^ начало $ конец
if 'abcd' =~ /^[a-z]{4}$/ #and 
	puts "ok"
else
	puts "notok"
end

# Пример проверки имейла
email = "test@example.com"

p email.match?(/\A[\w.+-]+@\w+\.\w+\z/)  # match? возвращает true или false

