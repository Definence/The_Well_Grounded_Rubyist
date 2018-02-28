puts



h = {1 => "one", 2 => "two", 3 => "three", 4 => "four"}
p h

puts

p h.has_key?(1)
# True if h has the key 1

p h.include?(1)
# Synonym for has_key?

p h.key?(1)
# Synonym for has_key?

p h.member?(1)
# Synonym for has_key?

p h.has_value?("three")
# True if any value in h is "three"

p h.value?("three")
# Synonym for has_value?

p h.empty?
# True if h has no key/value pairs

p h.size
# Number of key/value pairs in h




puts