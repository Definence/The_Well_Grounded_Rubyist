puts



# The File object has a sense of where in the file it has left off reading. You can both read and change
# this internal pointer explicitly, using the File object’s pos (position) attribute and/or the seekmethod.

f = File.new("../data/sample.rb")

# will go to the very beginning
f.rewind
# will read one line
p f.gets
# will show you current position of the reading pointer
p f.pos

# The seek method lets you move around in a file by moving the position pointer to a new location

# seeks to byte 20
f.seek(20, IO::SEEK_SET)
p f.pos

# advances the pointer 15 bytes from its current position
f.seek(15, IO::SEEK_CUR)
p f.pos

# seeks to 10 bytes before the end of the file
f.seek(-10, IO::SEEK_END)
p f.pos

# Using IO::SEEK_SET is optional; a plain f.seek(20) does the same thing (as does f.pos = 20 ).

f.close



puts