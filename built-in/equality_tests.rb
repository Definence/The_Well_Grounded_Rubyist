puts



a = Object.new
#<Object:0x00000101258af8>
b = Object.new
#<Object:0x00000101251d70>
a == a
# true
a == b
# false
a != b
# true
a.eql?(a)
# true
a.eql?(b)
# false
a.equal?(a)
# true
a.equal?(b)
# false

string1 = "text"
# "text"
string2 = "text"
# "text"
string1 == string2
# true
string1.eql?(string2)
# true
string1.equal?(string2)
# false



puts