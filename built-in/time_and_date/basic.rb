puts



# To reap their full benefits, you have to pull one or both of the date and time libraries
p require 'date'
p require 'time'

p Date.parse("April 24 1705").england.strftime("%B %d %Y")
puts Date.parse("April 24 1705").england.strftime("%B %d %Y")

p Date.today
puts Date.today

p Date.new(1959,2,1)
puts Date.new(1959,2,1)

p Date.parse("2003/6/9")
puts Date.parse("2003/6/9")




puts