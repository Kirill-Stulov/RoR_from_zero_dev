
# Both examples are achieving the same goal, but they are doing so in slightly different ways.

# 1.
def next_station
  next_st_index = @tr_route.stations.index(@current_station) + 1
  if next_st_index <= @tr_route.stations.size - 1               # тут все ясно
    @current_station = @tr_route.stations[next_st_index]        
  end
end

# 2. 
def next_station
  next_st_index = @tr_route.stations.index(@current_station) + 1
  return unless next_st_index <= @tr_route.stations.length - 1    # выполнение остановится, если результат выражения 'next_st_index <= @tr_route.stations.length - 1' будет false
  @current_station = @tr_route.stations[next_st_index]              # соответственно, если выше не false, то эта строчка выполнится 
end

# ************
# unless will work whenever condition is false

# Пример unless:
  a = 5
  b = 7

  return unless a < b        # если a < b false, то выход. Дословно: выход если неверно что a < b. Если верно, то выполняется вторая строка
  puts 'a is less than b'
