# Public Private Protected methods
# Ruby on Rails c нуля (2015) [Базовый]\Занятие 04. Интерфейсы, наследование и полиморфизм\ 0:33:50
# Смотри это видео пятью минутами раньше чем 0:33:50, там на примере 

# пример как использовать приватный метод из публичного метода
class BankAccount
  attr_accessor :account_number

  def initialize
    @account_number = create_account_number
  end 

  private

  def create_account_number
    rand(10 ** 16)
  end 
end

mine = BankAccount.new
p mine.account_number

