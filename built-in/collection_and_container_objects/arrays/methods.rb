puts



a = Array.new(3)
# p a.methods.sort

string = "A string"
p string.respond_to?(:to_ary)
p string.respond_to?(:to_a)
p string.respond_to?(:to_s)

puts

p Array(string)

def string.to_a
  split (//)
  # split will result a split of words
end

p Array(string)



puts