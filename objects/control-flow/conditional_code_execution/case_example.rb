puts



class Ticket
  attr_accessor :venue, :date
  def initialize(venue, date)
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    self.venue == other_ticket.venue
  end
end

ticket1 = Ticket.new("Town Hall", "07/08/16")
ticket2 = Ticket.new("Galeria", "07/08/16")
ticket3 = Ticket.new("Middle Town", "07/04/12")
ticket4 = Ticket.new("Town Hall", "07/04/12")
case ticket1
when ticket2
  puts "Same location as ticket 2"
when ticket3
  puts "Same location as ticket 3"
when ticket4
  puts "Same location as ticket 4"
else
  puts "No matches"
end



puts