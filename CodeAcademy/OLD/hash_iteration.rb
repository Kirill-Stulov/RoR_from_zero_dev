=begin
h = Hash.new("nothing here")
puts h

puts h["what?"]
=end

colors = { "red" => 2, "blue" => 3 }
colors["blue"] += 1
puts colors["blue"]