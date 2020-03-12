# Realistic example of classes and objects
# https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-i/exercises/classes-are-serious-business
=begin
  Classes like Language and Person are great when you are starting to learn the concepts of classes and instances.

  However, classes and objects are often used to model real-world objects. 
  The code below is a more realistic demonstration of the kind of classes and objects you might find in commercial software. 
  Here we have a snippet of the Rails source code. See how they’ve created an instance of the RecordInvalid class?
=end

def create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error
  record
end

# Most of the syntax should look familiar to you; the raise bit (which we’ll cover in future lessons) 
# generates a new RecordInvalid error if the user tries to create or save an invalid record.