puts



Dir.mkdir 'test' unless File.exists?('test')
d = Dir.new("test")

puts "Directory entris:"
# p d.entries
# Or you can use the class-method approach:
p Dir.entries("test")

puts

entries = d.entries
# removes all hidden entries
entries.delete_if {|entry| entry =~ /^\./ }

# each entry includes the full path to the file
# d.path shows us that
# File.join joins the path to the filename with the
# correct separator (usually /, but it’s somewhat system-dependent).
entries.map! {|entry| File.join(d.path, entry) }
# p entries

# delete all the entries that aren’t regular files
entries.delete_if {|entry| !File.file?(entry) }

print "Total bytes: "

# add sizes, a task for which inject is perfectly suited
puts entries.inject(0) {|total, entry| total + File.size(entry) }

puts

dir = "test"
entries = Dir["#{dir}/*"].select {|entry| File.file?(entry) }
print "Total bytes: "
puts entries.inject(0) {|total, entry| total + File.size(entry) }



puts