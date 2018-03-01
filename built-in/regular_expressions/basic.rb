puts



# Regexp is used to match between a string and a pattern
# not match bring nil

# puts //.class
# puts

puts "Match!" if /abcd/.match("The alphabet starts with abcd.")
puts "Match!" if "The alphabet starts with abc.".match(/abc/)
# or
puts "Match!" if /abc/ =~ "The alphabet starts with abc."
puts "Match!" if "The alphabet starts with abc." =~ /abc/

puts

p "The alphabet starts with abc" =~ /abc/
# 25
p /abc/.match("The alphabet starts with abc.")
# #<MatchData "abc">


puts