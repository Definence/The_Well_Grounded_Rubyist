puts



re = /(?<first>\w+)\s+((?<middle>\w\.)\s+)?(?<last>\w+)/
m = re.match("David A. Black")

print "The part of the string before the part that matched was: "
puts m.pre_match
print "The part of the string after the part that matched was: "
puts m.post_match
print "The second capture began at character "
puts m.begin(2)
print "The third capture ended at character "
puts m.end(3)

puts

# Ruby sets the global variable $~ to a MatchData object representing the match.
# On an unsuccessful match, $~ gets set to nil .
puts $~



puts