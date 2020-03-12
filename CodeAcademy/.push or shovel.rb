# push! or <<

=begin
Speaking of pushing to arrays, Ruby has some nice shortcuts for common method names. As luck would have it, one is for .push!
Instead of typing out the .push method name, you can simply use <<, the concatenation operator (also known as “the shovel”) to add an element to the end of an array:
=end
[1, 2, 3] << 4
# ==> [1, 2, 3, 4]

# Good news: it also works on strings! You can do:

"Yukihiro " << "Matsumoto"
#==> “Yukihiro Matsumoto”```

# another example
alphabet = ["a", "b", "c"] << "d"
alphabet << "d"

caption = "A giraffe surrounded by"
caption <<" weezards" 
puts caption