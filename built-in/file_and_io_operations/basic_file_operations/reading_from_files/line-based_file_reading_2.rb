puts



f = File.new("../data/sample.rb")
# f.read

print "Gets: "
p f.gets
print "Gets: "
p f.gets
print "Gets:  "
p f.gets
print "Gets:  "
p f.gets

# if read is uncommited gets returns nil
# f.readline # will show that end of file is reached

# readline reads one line from the file
# difference between gets and readline is that gets return nil, readline raises a fatal error

f.rewind # will move the File object’s internal position pointer back to the beginning of the file

# return an array of lines
p f.readlines

f.rewind

puts

f.each {|line| puts "Next line: #{line}" }

f.close



puts