# Предпочитайте тернарный оператор (?:) конструкциям с if/then/else/end. Он используется чаще и по определению более краток. [ссылка]

# плохо
result = if some_condition then something else something_else end

# хорошо
result = some_condition ? something : something_else

# Используйте только одно выражение в каждой ветви тернарного оператора. Отсюда следует, что лучше избегать вложенных тернарных операторов. При возникновении такой необходимости применяйте конструкции с if/else. [ссылка]

# плохо
some_condition ? (nested_condition ? nested_something : nested_something_else) : something_else

# хорошо
if some_condition
  nested_condition ? nested_something : nested_something_else
else
  something_else
end
