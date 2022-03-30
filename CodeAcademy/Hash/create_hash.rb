# We can create hashes several ways, but two of the most popular are

# 1. hash literal notation:
new_hash1 = { one: 1 }

  # adding key and value pair to hash. Hash Bracket Notation Adding Pairs 
  new_hash1[:two] = 2

# and

# 2. hash constructor notation:
new_hash2 = Hash.new

  # adding key and value pair to hash
  new_hash2[:player] = 1

##############################################

# Another example

    #Creating a hash through literal notation:
    lunch = {
      "protein" => "chicken",
      "greens" => "lettuce",
      "organic?" => true
    }
 
    #Creating a hash through Hash.new
    lunch = Hash.new
    puts lunch # => {}

