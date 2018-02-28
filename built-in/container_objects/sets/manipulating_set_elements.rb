puts



require 'set'

# Adding/removing one object to/from a set
tri_state = Set.new(["New Jersey", "New York"])
tri_state << "Connecticut"
tri_state << "Pennsylvania"
p tri_state
tri_state.delete("Connecticut")
p tri_state
p tri_state.add?("Pennsylvania")

# Set intersection, union, and difference
# intersection , aliased as &
# union , aliased as + and |
# difference , aliased as -

# puts "Basic"
# p tri_state = Set.new(["Connecticut", "New Jersey", "New York"])
# puts "-"
# state_set - tri_state
# puts "+"
# state_set + tri_state
# puts "&"
# state_set & tri_state
# puts "|"
# state_set | tri_state



puts