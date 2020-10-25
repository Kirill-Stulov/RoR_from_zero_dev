# =~ and !~ and .match
# https://rubyquicktips.com/post/15994276561/the-and-operators

# The operator =~ matches a String against a regular expression pattern. 
# !!! method .match does same job which does operator =~ !!! 
# It returns the position/index where the String was matched - or nil if no match was found:

/Quick/ =~ "Ruby Quicktips"
# => 5

# Order does not matter
"Ruby Quicktips" =~ /Quick/
# => 5

"Ruby Quicktips" =~ /foo/
# => nil

'hello' =~ /^h/ 
# => 0

# If there is no match, it will return nil. If you pass it invalid arguments (ie, left or right-hand sides are not correct), 
# it will either throw a TypeError or return false

# Because it returns nil when no match is found, you can for example use this as a condition in if-statements:

if "Ruby Quicktips" =~ /\s+/
  puts "The string contains at least one whitespace character."
end
# The string contains at least one whitespace character.
# => nil

# В то время как match возвращает специальный объект, оператор =~ просто возвращает положение 
# символа в строке с которого начинается подстрока соответствующая шаблону если выражение соответствует шаблону и nil если не соответствует.
##################################################################################################################################
# !~ operator
# To check the opposite, you can use the !~ operator:

if "Ruby Quicktips" !~ /\d+/
  puts "The string does not contain any digits."
end
# The string does not contains any digits.
# => nil

