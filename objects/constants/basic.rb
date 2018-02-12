puts



# The name of every constant begins with a capital letter
class Ticket

	VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]

	def initialize(vanue, date)
		if VENUES.include?(vanue)
			@vanue = vanue
		else
			raise ArgumentError, "Unknown venue #{venue}"
		end
		@date = date
	end

end

puts "We've closed to the class definition"
puts "So we have to use the path definition to reach the constant"
puts "The venues are: "
# to refer to a constant from outside the class definition entirely
# use the :: connector to do a lookup on the constant VENUES
puts Ticket::VENUES

# predefined constants
puts Math::PI



puts