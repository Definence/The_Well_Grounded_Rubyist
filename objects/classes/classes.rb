puts



# A typical class consists of a collection of method definitions. Classes usually exist for the purpose of
# bei	ng instantiated—that is, of having objects created that are instances of the class.

# class is a subclass of
# the Module class, so every class object is also a module object

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

# Also you can create a class with a commant like this
# my_class = Class.new

ticket = Ticket.new
puts ticket.event
puts ticket.m



puts