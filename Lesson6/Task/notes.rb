# текущая задача 
# 1. убрать лишнюю @@tr_names из main. main должен наследовать @@tr_names из train.rb  (готово)
     # убрать лишнюю @@wg_names также (готово)
# 2. исправить "такого поезда не существует" в меню -> отцепить/добавить вагон поезда (готово)
     # решить undefined method `add_wagon' for nil:NilClass (NoMethodError)   (ГОТОВО)
     # решить Нельзя присоединить этот вагон к этому поезду! (main menu 4,3 это ругается метод add_wagon(wagon) из train.rb)  (готово)
     # type_match? В МЕТОДЕ add_wagon не срабатывает, train.rb (не срабатывало, исправил создание поезда в main ) (готово)
# 3. решить проблему с rescue в train initialize. Там не удаляется последний элемент массива @@tr_names через @@tr_names.pop (готово)
# Релизовать интерфейс, который бы выводил пользователю ошибки валидации без прекращения работы программы. (готово для поезда и для станции, сделать для маршрута)

# 4. Исправить отображение количества созданных станций, маршрутов и поездов в главном меню 


# Задание 6
# Реализовать проверку (валидацию) данных для всех классов. Проверять основные атрибуты (название, номер, тип и т.п.) на наличие, длину и т.п. (в зависимости от атрибута):
#     	Валидация должна вызываться при создании объекта, если объект невалидный, то должно выбрасываться исключение
#         Должен быть метод valid? который возвращает true, если объект валидный и false - в противном случае.
# Релизовать проверку на формат номера поезда. Допустимый формат: три буквы или цифры в любом порядке, необязательный дефис (может быть, а может нет) и еще 2 буквы или цифры после дефиса. (готово)
# Релизовать интерфейс, который бы выводил пользователю ошибки валидации без прекращения работы программы. (ГОТОВО! сделано через RuntimeEror .для этого нужно отлавливать тип исключения и ошибка должна соответствовать типу исключения занятие №6 время 17:30) 
# Убрать из классов все puts (кроме методов, которые и должны что-то выводить на экран), методы просто возвращают значения. (Начинаем бороться за чистоту кода).
	# это сделаю через raise (пример: raise "Поезд движется, отцеплять вагоны нельзя")

# UPDATE к заданию:
# - Дополнительно сделать следующее: при добавлении вагонов к поезду и несовпадении типов также выбрасывать исключение. (готово)
# - Для класса маршрута сделать валидацию на то, что при добавлении станций объекты имеют тип (класс) RailwayStation (или как он у вас называется).
		#!!!!!Проверку существования самих станций я сделал main.rb метод st_check, кстати как и их класса, теперь сделать через простую проверку принадлежности к классу.
# - Добавить валидацию (с выбросом исключения) на глобальную уникальность номера поезда. То есть, нельзя создать 2 объекта класса Train с одинаковым номером.   

# ЧТО ИМЕННО ИМЕЕТСЯ В ВИДУ ПОД ВАЛИДАЦИЕЙ без выброса исключения? Имеется в виду проверка когда


содержимое @@stations
	[#<RailwayStation:0x0000000005114f90 @name="lurk", @trains={}>, #<RailwayStation:0x0000000005114a90 @name="pedia", @trains={}>]

содержимое @routes
	[#<Route:0x00000000050f2850 @stations=["lurk", "pedia"]>]

	
