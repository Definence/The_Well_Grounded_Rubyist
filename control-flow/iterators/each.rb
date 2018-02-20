puts



array = [1,2,3,4,5]
array.each {|e| puts "The block just got handed #{e}." }

puts

p array.map {|e| e * 2 }
p array.each {|e| e * 2 }

puts

class Array
  def my_each
    c = 0
    # size довжина масива
    until c == self.size
    # until c == size
      # ретурнить масив з індексом елемента масива
      yield(self[c])
      c += 1
    end
    # self
  end
end

array = [1,2,3,4,5]
array.my_each {|e| puts "The block just got handed #{e}." }



puts