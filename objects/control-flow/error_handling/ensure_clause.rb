puts



# Let’s say you want to read a line from a data file and raise an exception if the line doesn’t include a
# particular substring. If it does include the substring, you want to return the line. If it doesn’t, you want
# to raise ArgumentError . But whatever happens, you want to close the file handle before the method
# finishes.

def line_from_file(filename, substring)
  fh = File.open(filename)
  begin
    line = fh.gets
    raise ArgumentError unless line.include?(substring)
  rescue ArgumentError
    puts "Invalid line!"
    raise
  ensure
    fh.close
  end
  return line
end

line_from_file('filename', 'zzz')



puts