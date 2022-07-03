# complex regexp with comments
# https://www.rubyguides.com/2015/06/ruby-regex/ или work\RoR_from_zero\CodeAcademy\OOP-1\Exceptions_and_Regexp\Regular Expressions (Complete Tutorial).html

LOG_FORMAT = %r{               
  (\d{2}:\d{2}) # Time
  \s(\w+)       # Event type
  \s(.*)        # Message
}x                              # x модификатор допускает пробелы и комментарии внутри регулярного выражения 
