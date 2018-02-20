puts



names = ["David", "Alan", "Black"]
map = names.map {|name| name.upcase }
p map
puts

class Array
  def my_map
    c = 0
    acc = []
    until c == size
      acc << yield(self[c])
      c += 1
    end
    acc
  end
end

puts names.my_map {|name| name.upcase }



puts