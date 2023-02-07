# bad
do_something if x >= 1000 && x <= 2000

# good
do_something if (1000..2000).include?(x)

# good
do_something if x.between?(1000, 2000)

# also see ranges in
# PROGS\work\RoR_from_zero\CodeAcademy\.upto and .downto.rb
# PROGS\work\RoR_from_zero\CodeAcademy\Loops\cycle_for_while.rb
# PROGS\work\RoR_from_zero\CodeAcademy\Conditions\another_if_else_syntax 
