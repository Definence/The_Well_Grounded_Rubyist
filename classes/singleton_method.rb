puts



class Ticket

	attr_accessor :venue, :date, :price

	def initialize(venue,date, price=0)
		@venue = venue
		@date = date
		@price = price
	end

	def Ticket.most_expensive(*tickets)
		current_ticket = tickets.max_by(&:price)
		return current_ticket
	end

end

th = Ticket.new("Town Hall","11/12/13")
cc = Ticket.new("Convention Center","12/13/14/")
fg = Ticket.new("Fairgrounds", "13/14/15/")

th.price = 12.55
cc.price = 10.00
fg.price = 18.00

highest = Ticket.most_expensive(th,cc,fg)

puts "The hightest price is #{highest.price}"
puts "The highest-priced ticket is the one for #{highest.venue}."



puts