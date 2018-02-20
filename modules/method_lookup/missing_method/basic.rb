puts



ob = Object.new
# o.blah #=> undefined method `blah' for #<Object:0x00008e047cb360> (NoMethodError)

def ob.method_missing(m, *args)
  puts "You can't call method '#{m}', on this object; please try again."
end

ob.blah #=> You can't call method 'blah', on this o



puts