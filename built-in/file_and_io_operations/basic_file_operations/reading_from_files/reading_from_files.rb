puts



# p f = File.new("../ruby's_io_system/io_class.rb")
f = File.new("../data/sample.rb")
p f.read
# when you’re finished reading from and/or writing to a file, you need to close it
p f.close



puts