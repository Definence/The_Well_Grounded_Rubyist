puts



obj = Object.new

# method talk in a obj
def obj.talk
  puts "I am an object."
  puts "(Do you object?)"
end

# engaging talk
obj.talk

# The dot ( . ) is the message-sending operator. The message on the right is sent to the object (or
# receiver, as it’s often called in this role) on the left.



puts