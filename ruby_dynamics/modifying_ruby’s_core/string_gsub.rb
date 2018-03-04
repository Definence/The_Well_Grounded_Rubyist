puts



require 'pry'

# [1]> The 'tap' method
puts 'Hello'.tap {|string| puts string.upcase }.reverse
# HELLO
#=> olleH

# [2]> Overridden gsub
class String
  alias __old_gsub_bang__ gsub!

  def gsub!(*args, &block)
    __old_gsub_bang__(*args, &block)
    self
  end
end

string = 'Hello there!'

puts string.gsub!(/zzz/, 'xxx') #=> Hello there!
puts string                     #=> Hello there!

puts string.gsub!(/e/, 'E')     #=> HEllo thErE!
puts string                     #=> HEllo thErE!
# puts string.gsub!(/e/) { 'E' }  #=> HEllo thErE!

# [3]> the reasons not to do this
states = { 'NY': 'New York', 'NJ': 'New Jersy', 'ME': 'Maine' }
string = 'Eastern states include NY, NJ, and ME'

string.gsub!(/\b([A-Z]{2})\b/) { states[$1.to_sym] }
puts string #=> Eastern states include New York, New Jersy, and Maine

# p string.sub!(/\b([A-Z]{2})\b/) { states[$1.to_sym] }
# p string.sub!(/\b([A-Z]{2})\b/) { states[$1.to_sym] }
# p string.sub!(/\b([A-Z]{2})\b/) { states[$1.to_sym] }
# "Eastern states include New York, NJ, and ME"
# "Eastern states include New York, New Jersy, and ME"
# "Eastern states include New York, New Jersy, and Maine"



puts