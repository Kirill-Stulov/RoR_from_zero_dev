# bad
x = x + y
x = x * y
x = x**y
x = x / y
x = x || y
x = x && y

# good
x += y
x *= y
x **= y
x /= y
x ||= y # This statement assigns the value of y to x only if x is falsy (false, null, undefined, 0, or an empty string). Otherwise, it keeps the current value of x. 
x &&= y  # This statement assigns the value of y to x only if x is truthy (not false, null, undefined, 0, or an empty string). Otherwise, it keeps the current value of x. 
