puts



# The possible components of a regexp include the following:
  # Literal characters, meaning “match this character”
  # The dot wildcard character (.), meaning “match any character” (except \n, the newline character)
  # Character classes, meaning “match one of these characters”
# Character classes are longer than what they match

/\?/ # will match the "?"

puts "Match!" if /.ejected/.match("%ejected")
puts "Match!" if /.ejected/.match("8ejected")
puts "Match!" if /./.match("+")
puts "Match!" if /./.match(".")
puts "Match!" if /./.match("&")

puts "..."

# will check if dr is before/after ejected [dr] - 'd' of 'r'
puts "Match!" if /ejected[dr]/.match("ejectedd")
puts "Match!" if /[dr]ejected/.match("rrejected")

/[a-z]/ # for abc... range
/[A-Fa-f0-9]/ # hexadecimal digit:This matches any character a through f (upper- or lowercase) or any digit.

puts "Match!" if /[A-Fa-f0-9]/.match("5")
# except A-Fa-f0-9
puts "Match!" if /[^A-Fa-f0-9]/.match("h")

puts

string = "ABC3934 is a hex number."
# index of the first occurrence of a non-hex character in a string
p string =~ /[^A-Fa-f0-9]/
p string =~ /\w/ # matches any digit, alphabetical character, or underscore (_).
p string =~ /\s/ # matches any whitespace character (space, tab, newline).
p string =~ /\d/ # /[0-9]/

# Each of these predefined character classes also has a negated form. You can match any character that
# isn’t a digit by doing this:

p string =~ /\D/ #  match any character that isn’t a digit



puts