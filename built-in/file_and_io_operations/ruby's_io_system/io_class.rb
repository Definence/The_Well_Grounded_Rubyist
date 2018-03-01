puts



# IO objects represent readable and/or writable connections to disk files, keyboards, screens, and other
# devices. You treat an IO object like any other object: you send it messages, and it executes methods
# and returns the results.

# The constants STDERR , STDIN , and STDOUT are automatically set when the program starts
p STDERR.class
STDERR.puts("Problem!")
p STDERR.write("Problem!\n")



puts