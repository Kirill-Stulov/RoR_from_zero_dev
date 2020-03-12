# https://www.codecademy.com/courses/learn-ruby/lessons/hashes-and-symbols/exercises/symbol-syntax
# Symbols pop up in a lot of places in Ruby, but they’re primarily used either as hash keys or for referencing method names.

sounds = {
  :cat => "meow",
  :dog => "woof",
  :computer => 10010110,
}


# Symbols make good hash keys for a few reasons:

  #  They’re immutable, meaning they can’t be changed once they’re created;
  #  Only one copy of any symbol exists at a given time, so they save memory;
  #  Symbol-as-keys are faster than strings-as-keys because of the above two reasons.


# NEW SYNTAX for hash with symbols as keys
# 1. You put the colon at the end of the symbol, not at the beginning;
# 2. You don't need the hash rocket anymore.
#    It's important to note that even though these keys have colons at the end instead of the beginning, they're still symbols!

movies = {
 Snatch: "Guy Richy",
 Pulp_Fiction: "Tarantino"
}