puts



def fussy_method(x)
  # raise makes exceptions
  raise ArgumentError, "I need a number under 10" unless x < 10
end

# fussy_method(20)

begin
  fussy_method(20)
rescue ArgumentError
  puts "That was not an acceptable number!"
end

# or
# raise RuntimeError, "Problem!"



puts