puts



# reverse each
[1,2,3].reverse_each {|e| puts e * 10 }

puts

names = ["George Washington", "John Adams", "Thomas Jefferson"]
# each with index
names.each_with_index do |pres, i|
  puts "#{ i + 1 }. #{ pres }"
end

puts

#each index
%w{a b c }.each_index {|i| puts i }

puts

letters = {"a" => "ay", "b" => "bee", "c" => "see" }
# each with index
letters.each_with_index {|(key,value),i| puts i }

puts

array = %w{ red yellow blue }
array.each.with_index do |color, i|
  puts "Color number #{i} is #{color}."
end


puts