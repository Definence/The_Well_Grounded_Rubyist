puts



ticket = Object.new

def ticket.date
  '01/02/03'
end

def ticket.venue
  'Town Hall'
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  'Mark Twain'
end

def ticket.seat
  "Second balcony, row J, seat 12"
end

def ticket.price
  5.50
end

def ticket.availability_status
  true
end

print 'This ticket is for: '
print ticket.event
print ", at "
print ticket.venue
print ", on "
puts ticket.date + "."
print "The performer is "
puts ticket.performer + "."
print "The seat is "
print ticket.seat
print ", and it costs: "
puts ticket.price

puts

# or
puts "This ticket is for: #{ticket.event}, at #{ticket.venue}." +
"The performer is #{ticket.performer}." +
"The seat is #{ticket.seat}, " +
"and it costs $#{"%.2f." % ticket.price}"



puts