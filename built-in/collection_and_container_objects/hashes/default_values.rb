puts



h = Hash.new
p h["no such key!"]

h = Hash.new(0)
p h["no such key!"]

# will add every nonexistent key do hash with a value of 0
h = Hash.new {|hash,key| hash[key] = 0 }

h["no such key!"]
h["gfgfdg"]
h["gfdgd"]

puts

p h



puts