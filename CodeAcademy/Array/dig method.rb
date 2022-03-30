# The #dig is basically an elvis operator for hashes and arrays. It’ll retrieve a value from the array/hash, given a set of keys. If no value is found, it’ll return nil.
example_array = [1, [2, [3]]]
puts example_array.dig(1,1)