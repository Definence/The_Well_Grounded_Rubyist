puts



str = "abcde"
str.each_byte {|b| p b }

puts

str = "abcde"
str.each_char {|c| p c }

puts

str = "100\u20ac"
str.each_codepoint {|cp| p cp }

puts

str.each_byte {|b| p b }



puts