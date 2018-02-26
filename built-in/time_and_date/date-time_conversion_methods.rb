puts



# Date and date/time objects interpret + and – as day-wise operations, and they allow for month-wise
# conversions with << and >>

require 'date'
require 'time'

p t = Time.now
p t - 20
p t + 20

puts

p dt = DateTime.now
puts dt + 100
puts dt >> 3
puts dt << 10

puts

# EASY
p d = Date.today
puts "next"
puts d.next
puts "next year"
puts d.next_year
puts "next month(3)"
puts d.next_month(3)
puts "prev day(10)"
puts d.prev_day(10)

puts

p d = Date.today
p next_week = d + 7
p d.upto(next_week) {|date| puts "#{date} is a #{date.strftime("%A")}" }



puts