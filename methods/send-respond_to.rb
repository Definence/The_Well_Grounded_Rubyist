puts



# obj = Object.new

# if obj.respond_to?("talk")
# 	obj.talk
# else
# 	puts "Sorry, the object doesn't understand the 'talk' message."
# end



ticket = Object.new

print "Information desired: "

# console input
request = gets.chomp

def ticket.venue
  'Pacific ocean'
end

# first variant
# if request == "venue"
# 	puts ticket.venue
# elsif request == "performer"
# 	puts ticket.performer
# end

# more effective variant
if ticket.respond_to? (request)
	puts ticket.send(request)
	# puts ticket.venue
else
	puts "No such information"
end



puts