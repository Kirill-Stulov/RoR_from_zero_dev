class Car
  attr_accessor :current_rpm

  def initialize
    @current_rpm = 0
  end

  def start_engine
    start_engine! if engine_stopped?
  end

  def engine_stopped?
    current_rpm.zero?                  
  end

  def start_engine!
    self.current_rpm = 900
  end

end

# К вопросу о том, почему в методе start_engine! используем self.current_rpm а не @current_rpm 
#   Если определен метод-сеттер для переменной
#   def current_rpm=(value)
#     @current_rpm = value
#   end
#   А он в данном случае определен (attr_accessor :current_rpm) - то используем его (self.current_rpm = 900, что превращается в вызов этого метода self.current_rpm=(900) , а не прямое обращение к переменной (@current_rpm= 900)
