# Why Procs?
# https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas/exercises/why-procs

=begin
	Why bother saving our blocks as procs? There are two main advantages:
    1. Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
    2. Unlike blocks, procs can be called over and over without rewriting them. 
       This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.
=end


# Example
# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# creating a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# they use over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3