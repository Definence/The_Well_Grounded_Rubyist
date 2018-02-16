puts



# A method that you define at the top level is stored as a private instance method of the Object class
def talk
  puts "Hello"
end

# is equal to
# class Object
#   private
#   def talk
#     puts "Hello"
#   end
# end

puts "Trying 'talk' with no receiver..."
talk

# will result an error
puts "Trying 'talk' with an explicit receiver..."
obj = Object.new
obj.talk



puts