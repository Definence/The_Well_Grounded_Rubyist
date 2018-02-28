puts



state_hash = Hash.new

# new version
# state_hash["New York"] = "NY"
# old version
# state_hash.[]=("New York", "NY")
# store method
state_hash.store("New York", "NY")
state_hash.store("New Jersey", "NJ")
state_hash.store("Delaware", "DE")

p state_hash

# if two equal keys is provide, the second will overwrite first
h = Hash.new
h['a'] = 1
h['a'] = 2
p h['a']

# retrieving information from hash
p ny = state_hash["New York"]
# with special method
p ny = state_hash.fetch("New York")
# will result an array
p two_states = state_hash.values_at("New Jersey","Delaware")



puts