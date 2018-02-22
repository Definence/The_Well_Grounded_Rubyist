puts



# encoding: encoding
# encoding: ASCII

puts __ENCODING__ # UTF8

str = "Test string"
p str
p str.encode!("US-ASCII")
str << ". Euro symbol: \u20AC"
p str
p str.encoding

# p str.encoding # UTF8
# p str.encode("US-ASCII") # Test string




puts