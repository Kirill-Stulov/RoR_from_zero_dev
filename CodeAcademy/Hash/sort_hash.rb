colors = { 
  "blue" => 3,
  "green" => 1,
  "red" => 2
}


colors = colors.sort_by do |color, count|
  count
end
puts colors.reverse!


#colors = colors.sort_by { |color, count| puts count }
