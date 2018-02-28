puts



states = ['West coast', 'Louisiana', 'New York']

# Does the array include Louisiana?
p states.include?("Louisiana")
# => true

# Do all states include a space?
p states.all? {|state| state =~ / / }
# => false

# Does any state include a space?
p states.any? {|state| state =~ / / }
# => true

# Is there one, and only one, state with "West" in its name?
p states.one? {|state| state =~ /West/ }
# => true

# Are there no states with "East" in their names?
p states.none? {|state| state =~ /East/ }
# => true



puts