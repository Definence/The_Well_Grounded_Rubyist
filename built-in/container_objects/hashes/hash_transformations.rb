puts



# Selecting and rejecting elements from a hash

h1 = Hash[1,2,3,4,5,6]
# to derive a subhash from an existing hash, use the select method
h2 = h1.select {|k,v| k > 1 }
# those key/value pairs for which the block returns true are excluded from the result hash
h3 = h1.reject {|k,v| k > 1 }
p h1, h2, h3, h1

puts

# Inverting a hash

# Be careful when you invert hashes. Because hash keys are unique, but values aren’t, when you turn
# duplicate values into keys, one of the pairs is discarded
h = { 1 => "one", 2 => "two" }
h2 = h.invert
p h, h2

puts

# Clearing a hash

h = {1 => "one", 2 => "two" }
p h
h.clear
p h

puts

# Replacing the contents of a hash

h1 = { 1 => "one", 2 => "two" }
p h1
h1.replace({ 10 => "ten", 20 => "twenty"})
p h1



puts