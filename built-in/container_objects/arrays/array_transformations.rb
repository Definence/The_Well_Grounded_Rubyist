puts



p array = [1, 2, [3, 4, [5], [6, [7, 8]]]]
p array.flatten
p array
array.flatten!
p array

puts

a = [1, 2, 3, 4]
puts "original arr"
p a
puts "reverse"
p a.reverse
puts "arr after reverse"
p a
puts "arr after reverse!"
a.reverse!
p a

puts

puts "transform an array into a string"
p ["abc", "def", 123]
puts ["abc", "def", 123].join
puts ["abc", "def", 123].join(", ")

puts

a = [1,2,3,1,4,3,5,1]
p a
puts "'uniq' removes all dublicate elements:"
p a.uniq

puts

zip_codes = ["06511", "08902", "08902", nil, "10027",
"08902", nil, "06511"]
puts "compact removes all nils"
p zip_codes
zip_codes.compact!
p zip_codes



puts