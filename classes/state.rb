puts



# ---- Initializing an object with state ----

class Ticket

	# that method will be executed every time you create a new instance of the class
	# you’ll see the message "Creating a new ticket!" every time you create a new ticket object bycalling Ticket.new
	# The names of the instance variables, methods, and arguments to initialize don’t have to match

	def initialize(venue,date)
		puts "Creating a new ticket!"
		@venue = venue
		@date = date
	end

	def venue
		@venue
	end

	def date
		@date
	end

end

th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")

puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."



puts