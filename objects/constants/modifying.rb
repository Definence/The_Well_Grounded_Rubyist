puts



# will result a warning
# A = 1
# A = 2

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

# constant modyfying
venues = Ticket::VENUES

# << add element to an excisting array
venues << "High school Gym"

puts venues



puts