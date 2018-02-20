puts



def fuzzy_method
end

begin
  fuzzy_method(20)
rescue ArgumentError => e
  puts "That wasn't an acceptable number!"
  puts
  puts "Here is the backtrace for this exception:"
  puts e.backtrace
  puts
  puts  "And here's the exception object's message:"
  puts e.message
end



puts