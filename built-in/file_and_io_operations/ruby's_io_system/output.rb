puts



# if broken?
#   STDERR.puts "There's a problem!"
# end

# $stdin , $stdout , and $stderr

record = File.open("/tmp/record", "w")
old_stdout = $stdout
$stdout = record
$stderr = $stdout
puts "This is a record"
# z = 10/0



puts