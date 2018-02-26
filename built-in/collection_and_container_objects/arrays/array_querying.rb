puts



a = [55, 0, 2, 4, 9, 50, -4, 2, 2, 1]
item = 2

puts "size"
p a.size
# (synonym: length)
# Number of elements in the array

puts

puts "empty?"
p a.empty?
# True if a is an empty array; false if it has any elements

puts

puts "include?"
p a.include?(item)
# True if the array includes items; false otherwise

puts

puts "count"
p a.count(item)
# Number of occurrences of item in array

puts

puts "first"
p a.first(n=2)
# First n elements of array

puts

puts "last"
p a.last(n=3)
# Last n elements of array

puts

puts "sample"
p a.sample(n=1)
# n random elements from array



puts