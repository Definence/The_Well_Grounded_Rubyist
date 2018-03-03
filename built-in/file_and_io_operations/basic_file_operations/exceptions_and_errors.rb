puts



# When something goes wrong with file operations, Ruby raises an exception
# File.open("no_file_with_this_name")
# Errno::ENOENT: No such file or directory - no_file_with_this_name
# f = File.open("/tmp")
# => #<File:/tmp>
# f.gets
# Errno::EISDIR: Is a directory - /tmp
# File.open("/var/root")
# Errno::EACCES: Permission denied - /var/root



puts