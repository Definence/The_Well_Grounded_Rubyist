puts



state_hash = { "Connecticut" => "CT",
               "Delaware" => "DE",
               "New Jersey" => "NJ",
               "Virginia" => "VA" }

print "Enter the name of a state: "
state = gets.chomp
abbr = state_hash[state]
puts "The abbreviation is #{abbr}."



puts