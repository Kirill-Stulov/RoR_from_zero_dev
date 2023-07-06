class Person

  def initialize(name, age)
    @name = name
    @age = age
  end
   
  def self.print_variables
    instance_variables.each do |v|
    puts "Instance variable: #{v}"
    end
  end
end

Person.print_variables
