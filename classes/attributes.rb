puts



class Ticket

	# def price=(price)
	# 	@price = price
	# end

	# def venue
	# 	@venue
	# end

	# def date
	# 	@date
	# end

	# def price
	# 	@price
	# end

	# There’s one read/write attribute ( price ) and two read attributes ( venue and date ). It works, but the
	# code is repetitive. Three methods look like this:

	# returns the value of the instance variable with the same name as the method
	# (give or take an @ )

	attr_reader :venue, :date, :price
	attr_writer :price

	# instead of using price in both attr_ we can make one common
	# attr_accessor :price
	# or
	# attr :price, true

	def initialize(venue, date)
		@venue = venue
		@date = date
	end

end



puts