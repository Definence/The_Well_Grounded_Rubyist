puts



# 5.times { puts "Writing this 5 times" }

# i = times quantity - 1(0, 1, 2, 3, 4 ... 9)
10.times {|i| puts "I'm on iteration #{i}!" }

puts

# self gt
class Integer
  def my_times
    c = 0
    # self - це 7
    until c == self
      # ретурнить ітератор з атрибутом тайм
      yield(c)
      c += 1
    end
    # self
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

7.my_times {|i| puts "I'm on iteration #{i}!" }



puts