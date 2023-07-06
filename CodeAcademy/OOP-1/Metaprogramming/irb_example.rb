# пишем аналог irb (Занятие 09 Метапрограммирование 07:53)
# принимаем от пользователя команды на ruby и выполнять их выводя результат

# переменная для подсчкета строк
line_num = 0
input = ""

# бесконечный цикл, который прерывается, если введен exit
#  объяснение (Занятие 09 Метапрограммирование 16:00)
loop do
  print "#{line_num += 1}?: "
  line = gets
  break if line.strip == 'exit'

  if line.strip == ''
    puts 'Evaluating...'
    puts eval(input)
    input = ""
  else
    input += line
  end 
end
