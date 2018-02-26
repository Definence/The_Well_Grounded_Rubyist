puts



# Symbols have a number of uses, but most appearances fall into one of two categories: method
# arguments and hash keys.

# Symbols as method arguments
# attr_accessor :name
# attr_reader :age
# "abc".send(:upcase) - some_object.send(method_name.to_sym)

# Symbols as hash keys
d_hash = { :name => "David", :age => 55 }
p d_hash[:age]

d_hash = { "name" => "David", "age" => 55 }
p d_hash['age']

# Advantage symbols as hash keys on strings:
# 1 ruby can process symbols faster,
# 2 symbols look good as hash keys
# 3 ruby allows a special form of symbol representation in the hash-key position

# 3
hash = { :name => "David", :age => 55 }
# can be written as
hash = { name: "David", age: 55 }



puts