puts



# 5.times { puts "Writing this 5 times" }

# i = times quantity - 1(0, 1, 2, 3, 4 ... 9)
10.times {|i| puts "I'm on iteration #{i}!" }

puts

class Integer
  def my_times
    c = 0
    until c == self
      yield(c)
      c += 1
    end
    self
  end
end

# just for iterating
# class Integer
#   def my_times
#     c = 0
#     until c == self
#       yield
#     end
#   end
# end

4.my_times {|i| puts "I'm on iteration #{i}!" }



puts