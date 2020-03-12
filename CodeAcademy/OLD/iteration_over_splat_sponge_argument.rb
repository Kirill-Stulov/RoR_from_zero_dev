=begin
 splat arguments. Splat arguments are arguments preceded by a *, which tells the program that the method can receive one or more arguments.
Instructions
=end

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")