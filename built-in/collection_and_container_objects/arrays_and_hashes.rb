puts



array = ["ruby", "diamond", "emerald"]
hash = { 0 => "ruby", 1 => "diamond", 2 => "emerald" }

p array
p hash

puts

p array[0]
p hash[0]

puts

hash = { "red" => "ruby", "white" => "diamond", "green" => "emerald" }
hash.each.with_index {|(key,value),i|
  puts "Pair #{i} is: #{key}/#{value}"
}

puts

array = ["ruby", "diamond", "emerald"]
array.each { |element|
  puts element
}



puts