puts



p :a
p :book
p :"Here's how to make a symbol with spaces in it."

a = "aaaa".to_sym
p a
# or
a = "Converting string to symbol with intern....".intern
p a

a = :a.to_s
p a



puts