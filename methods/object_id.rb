# To see a list of innate methods, you can call the methods method (and throw in a sort operation, to
# make it easier to browse visually):

# show all the basic methods
# puts Object.new.methods.sort
puts



obj = Object.new

str = "Strings are objects too, and this is a string!"

puts "The id of obj is #{obj.object_id}."
puts "The id of the string object str is #{str.object_id}."
puts "And the id of the integer 100 is #{100.object_id}."



puts



a = Object.new
b = a
puts "a's id is #{a.object_id} and b's id is #{b.object_id}."



puts