puts



# For example, let’s say we have a string containing information about a person:
# Peel,Emma,Mrs.,talented amateur

# First some alphabetical characters,
# then a comma,
# then some alphabetical characters,
# then a comma,
# then either 'Mr.' or 'Mrs.'

puts "Match" if /[A-Za-z]+,[A-Za-z]+,Mrs?\./.match("Peel,Emma,Mrs.,talented amateur")
puts $3 + ' ' + $2 + ' ' + $1 if /([A-Za-z]+),([A-Za-z]+),(Mrs?\.)/.match("Peel,Emma,Mrs.,talented amateur")

# ?
# (The question mark after the s means match zero or one s. Expressing it that way lets us
# match either“Mr.” and “Mrs.” concisely.)

# () will give us an opportunity to use global vars ($1...)

line_from_file = "Peel,Emma,Mrs.,talanted amateutr"
puts "Match" if /([A-Za-z]+),[A-Za-z]+,(Mrs?\.)/.match(line_from_file)
puts "Dear #{$2} #{$1},"

puts

# /d - 0-9
string = "My phone number is (123) 555-1234"
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = phone_re.match(string)
unless m
  puts "There was no match"
  exit
end
print "The whole string we started with: "
puts m.string
print "The entire part of the string that matched: "
puts m[0]
puts "The three captures: "
3.times do |index|
  puts "Capture ##{index + 1}: #{m.captures[index]}"
end
puts "Here's another way to get at the first capture:"
print "Capture #1: "
print m[1], m[2], m[3]

puts
puts

# This regular expression will match a name of the form “David A. Black” or,
# equally, “David Black” (with no middle initial)
re = /(?<first>\w+)\s+((?<middle>\w\.)\s+)?(?<last>\w+)/
m = re.match("David A. Black")
p m[:first]



puts