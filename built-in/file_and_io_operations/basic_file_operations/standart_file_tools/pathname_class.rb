puts



require 'pathname'

# pathname objject
p path = Pathname.new("/Users/dblack/hacking/test1.rb")

# two ways to examine the basename of the path:
p path.basename
puts path.basename

# examine the directory that contains the file or directory
p path.dirname

# If the last segment of the path has an extension you can get it
p path.extname

puts

# ascend enumerator(піднятись по директоріях)
path.ascend do |dir|
  puts "Next level up: #{dir}"
end

puts

# or smth like this
path.ascend do |dir|
  puts "Ascended to #{dir.basename}"
end



puts