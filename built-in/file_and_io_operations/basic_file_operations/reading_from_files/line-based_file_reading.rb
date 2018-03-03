puts



filename = File.join(File.dirname(__FILE__), '../data/sample.rb')
file = File.open(filename)

# print "File's reading: "
# p file.read

# [1]> The easiest way to read the next line from a file is with gets:

print "Gets: "
puts file.gets #=> "first line\n"
print "Gets: "
puts file.gets #=> "second line\n"
print "Gets: "
puts file.gets #=> nil

puts

# The readline method does much of what gets does: it reads one line from the file.
# The difference lies in how the two methods behave when you try to read beyond
# the end of a file: gets returns nil, and readline raises a fatal error:
# p file.readline #=> EOFError: end of file reached

# Note also the rewind operation, which moves the File object’s internal position
# pointer back to the beginning of the file.
file.rewind

# [2]> If you want to get the entire file at once as an array of lines, use readlines:
p file.readlines #=> ["first line\n", "second line\n"]
file.rewind

# [3]> File objects are enumerable:
file.each {|line| puts "Next line is: #{line}" }
#=> Next line is: first line
#=> Next line is: second line
file.rewind

file.close



puts
