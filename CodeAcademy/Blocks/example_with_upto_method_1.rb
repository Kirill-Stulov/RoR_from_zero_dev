# https://online.pragmaticstudio.com/tour/courses/ruby-blocks/steps/4
# 5.times { puts 'situp' }

1.upto(5) do |count|
  puts "#{count} situp"
  puts "#{count} pushup"
  puts "#{count} chinup"
end


# multi line
1.upto(4) do |count|
  puts "#{count} alligator"
end

# single line
1.upto(4) { |count| puts "#{count} crocodile" }

