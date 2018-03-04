puts



newdir = "newdir"
newfile = 'newfile'

Dir.mkdir(newdir) unless File.exist?(newdir)

# means that after the block exits, we’re back in the previous directory
Dir.chdir(newdir) do
  # create a single file with a single line in it
  File.open(newfile, 'w') do |file|
    file.puts 'Sample file in new directory.'
  end

  # will show the full path to the dir
  puts "Current directory: #{Dir.pwd}"
  print 'Directory listing: '
  p Dir.entries('.')

  # Delete file
  # File.unlink(newfile)
  File.delete(newfile)
end

Dir.rmdir(newdir)



puts