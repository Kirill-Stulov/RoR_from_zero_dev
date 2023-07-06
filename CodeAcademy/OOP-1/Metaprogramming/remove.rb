# remove method для удаления метода (Занятие 09 Метапрограммирование 43:05)
#  зашли в класс String удалили метод reverse и его теперь там нет
# irb(main):001:1* class String
# irb(main):002:1*   remove_method :reverse
# irb(main):003:0> end
# => String
# irb(main):004:0> "abc".reverse
# (irb):4:in `<main>': undefined method `reverse' for "abc":String (NoMethodError)
# Did you mean?  reverse!
# это иногда используется чтобы удалить устаревшие методы динамически

