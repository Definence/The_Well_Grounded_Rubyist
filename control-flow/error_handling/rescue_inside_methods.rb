puts



def open_user_file
  print "File to open: "
  filename = gets.chomp
  fh = File.open(filename)

  rescue
    puts "Couldn't open your file"
    return # for continuing executing a code after rescue
  end

  yield fh
  fh.close
end

# def open_user_file
#   print "File to open: "
#   filename = gets.chomp
#   fh = File.open(filename)
#   yield fh
#   fh.close
#   rescue
#     puts "Couldn't open your file"
# end



puts