# 1
# http://www.railstips.org/blog/archives/2006/11/18/class-and-instance-variables-in-ruby/

# class Polygon
#   class << self; attr_accessor :sides end # This adds the side attribute accessor methods to the class level rather than the instance level. 
#   @sides = 8 
# end

# class Triangle < Polygon
#   attr_accessor :sides 
#   @sides = 3
# end

# puts Polygon.sides
# puts Triangle.sides

# 2
# https://www.codegram.com/blog/understanding-class-instance-variables-in-ruby/
