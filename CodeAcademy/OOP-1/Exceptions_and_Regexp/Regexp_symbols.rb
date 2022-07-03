# Символы Регулярных выражений

# здесь символы раскрыты понятно https://proglib.io/p/learn-regex/

[] - определение диапазона (например, [a-z] означает буквы в диапазоне от a до z
\A - начало строки символов (string)
\w - соответствует слову (может состоять из букв, цифр и подчёркивания)
\W - не цифра и не буква. Символ, не являющийся частью слова
\s - символы пустого пространства, такие как [ \t\n\r\f], Пропуск (пробел, знак табуляции, символ новой строки и т.д.)
\S - не символы пустого пространства. Символ, не являющийся пробелом
\d - символы цифр, такие как [0-9]
\D - Не цифра
\b - символ забоя (0x08) (только если в заданном диапазоне)
\b - окончание слова (если только не в заданном диапазоне)
\B - граница слова
\z - конец строки символов (string)
* -  необязательность символа перед звездочкой.                     ноль и большее количество повторений предыдущего шаблона
+ - одно или большее количество повторений предыдущего шаблона
{m,m} - по крайней мере m и не более повторений предыдущего
{m, n} - от m до n вхождений предыдущего подвыражения
{m, n}? - от m до n вхождений предыдущего подвыражения (нежадный алгоритм)
*? - 0 или более повторений предыдущего подвыражения (нежадный алгоритм)
+? - 1 или более повторений предыдущего подвыражения (нежадный алгоритм)
? - 0 или 1 одно повторение предыдущего подвыражения
| - либо предыдущее, либо последующее выражение может соответствовать
() - группировка 
^ - начало строки
. - Любой символ, кроме символа новой строки (если не установлен многострочный режим)
$ - Конец строки текста или строки символов

(?= ) - Позитивное заглядывание вперед
(?! ) - Негативное заглядывание вперед
(?> ) - Вложенное подвыражение
(?: ) - Несохраняющая группировка подвыражений
(?imx-imx) - Включить/выключить режимы, начиная с этого места
(?imx-imx: expr) - Включить/выключить режимы для этого выражения
(?# ) - Комментарий

 # Модификаторы регулярных выражений
I	Игнорировать регистр
O	Выполнять подстановку выражения только один раз
M	Многострочный режим (точка сопоставляется с символом новой строки)
X	Обобщенное регулярное выражение (допускаются пробелы и комментарии)

# Операторы сравнения

puts "String has vowels" if "This is a test" =~ /[aeiou]/
In this example, =~ is another form of operator: a matching operator

puts "String contains no digits" unless "This is a test" =~ /[0-9]/
This time you’re saying that unless the range of digits from 0 to 9 matches against the test string, tell the
user that there are no digits in the string.

puts "String has vowels" if "This is a test".match(/[aeiou]/)

puts "false" if "name" !~ /[a-z]{5}/
!~ is another form of operator: a not matching operator