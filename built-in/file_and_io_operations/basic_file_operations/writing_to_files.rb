puts



# Writing to a file involves using puts , print , or write on a File object that’s opened in write or
# append mode.
  # * Write mode is indicated by w as the second argument to new . In this mode, the file is
  # created (assuming you have permission to create it); if it existed already, the old version is
  # overwritten.
  # * In append mode (indicated by a), whatever you write to the file is appended to what’s
  # already there. If the file doesn’t exist yet, opening it in append mode creates it.

# will create file if not exists
p f = File.new("data/data.out", "w")
# will add to the data.out a string
f.puts "David A. Black, Rubyist"
f.close

puts File.read("data/data.out")

p f = File.new("data/data.out", "a")
# f.print is also available
f.puts "Yukihiro Matsumoto, Ruby creator"
f.close

puts File.read("data/data.out")



puts