# Creating hash with default value
# If you create your hash using the Hash.new syntax, you can specify a default like so:

my_hash = Hash.new("Trady Blix")

# Now if you try to access a nonexistent key in my_hash, you’ll get "Trady Blix" as a result.
p my_hash["new"]
