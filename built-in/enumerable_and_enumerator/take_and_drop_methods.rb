puts



p states = %w{ NJ NY CT MA VT FL }
# ['NJ', 'NY', 'CT', 'MA', 'VT', 'FL']

p states.take(2)
p states.drop(2)
p states.take_while {|s| /N/.match(s) }
p states.drop_while {|s| /N/.match(s) }



puts