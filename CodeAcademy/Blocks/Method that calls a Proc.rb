# Method that calls a Proc

def greeter
  yield
end

phrase = Proc.new{ puts "Hello there!"}
greeter(&phrase)

# method, greeter, that takes no arguments and yields to a block.
# A Proc, phrase, that puts "Hello there!". Pass this to greeter instead of a block. (Don’t forget to pass &phrase instead of just phrase!)