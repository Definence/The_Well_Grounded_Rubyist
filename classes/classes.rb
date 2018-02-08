puts



# A typical class consists of a collection of method definitions. Classes usually exist for the purpose of
# bei	ng instantiated—that is, of having objects created that are instances of the class.

class Ticket

	def event
		"Cant really be specified yet"
	end

	def m
		puts "First definition of method"
	end

	def m
		puts "Second definition of method"
	end

end


ticket = Ticket.new
puts ticket.event
puts ticket.m



puts