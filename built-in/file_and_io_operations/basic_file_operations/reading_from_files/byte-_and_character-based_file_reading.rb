puts



f = File.new("../data/sample.rb")

# reads and returns one character from the file
p f.getc
f.ungetc("X")
p f.gets

f.read

# end of the file's behavior

f.getc
# => nil

# f.readchar
# EOFError: end of file reached

f.getbyte
# => nil

# f.readbyte
# EOFError: end of file reached

f.close



puts