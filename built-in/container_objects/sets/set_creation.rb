puts



require 'set'

new_england = ["Connecticut", "Maine", "Massachusetts",
               "New Hampshire", "Rhode Island", "Vermont"]

p state_set = Set.new(new_england)

puts

names = ["David", "Yukihiro", "Chad", "Amy"]
p name_set = Set.new(names) {|name| name.upcase }



puts