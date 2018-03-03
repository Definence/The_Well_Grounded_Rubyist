puts



# query methods
p File.size("data/members.txt")
p FileTest.size("data/members.txt")
p File::Stat.new("data/members.txt").size

# does exist?
p FileTest.exist?("/usr/local/src/ruby/README")
# Is the file a directory? A regular file? A symbolic link?
p FileTest.directory?("/home/users/dblack/info")
p FileTest.file?("/home/users/dblack/info")
p FileTest.symlink?("/home/users/dblack/info")
# Is a file readable? Writable? Executable?
p FileTest.readable?("/tmp")
p FileTest.writable?("/tmp")
p FileTest.executable?("/home/users/dblack/setup")
# size and empty?
p FileTest.size("data/members.txt")
p FileTest.zero?("/data/sample.rb")



puts