# https://online.pragmaticstudio.com/tour/courses/ruby-blocks/steps/4
# create an array of five flyers, each with unique names, emails, and number of miles flown. 
# Rather than creating them one by one, use your friend the upto method with an associated 
# block to create and add each flyer to the array. :
  # Flyer 1 (flyer1@example.com): 1000
  # Flyer 2 (flyer2@example.com): 2000
  # Flyer 3 (flyer3@example.com): 3000
  # Flyer 4 (flyer4@example.com): 4000
  # Flyer 5 (flyer5@example.com): 5000

class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s                                # override the to_s method for Flyer class
    "#{name} (#{email}): #{miles_flown}"    # to return a string with the flyer's name, email, and miles flown
  end
end

fl_arr = []

1.upto(5) do |number|                                                                     # create a loop to create 5 flyers
  fl_arr << Flyer.new("Flyer #{number}", "flyer#{number}@example.com", number * 1000)     # create a new flyer and add it to the array  
end

puts fl_arr # 
