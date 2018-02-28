puts



p obj = Object.new
p Array.try_convert(obj)

def obj.to_ary
  [1,2,3]
end

p Array.try_convert(obj)

def obj.to_ary
  "Not an array!"
end

# will result an error
# p Array.try_convert(obj)



puts