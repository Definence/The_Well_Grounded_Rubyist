# relative вказує місцеположення відносно файла
require_relative 'modules/stacklike'

puts



class Stack
  include Stacklike
end

s = Stack.new
s.add_to_stack("item_1")
s.add_to_stack("item_2")
s.add_to_stack("item_3")

puts "Object currently on the stack:"
puts s.stack
taken = s.take_from_stack
puts "Removed this object:"
puts taken
puts "Now on stack:"
puts s.stack



puts