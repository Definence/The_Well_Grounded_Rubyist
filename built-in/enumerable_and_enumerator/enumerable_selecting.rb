puts



p [1,2,3,4,5,6,7,8,9,10].find {|n| n > 5 }

puts

class Rainbow
  include Enumerable
  def each
    yield "red"
    yield "orange"
    yield "yellow"
    yield "green"
    yield "blue"
    yield "indigo"
    yield "violet"
  end
end

r = Rainbow.new
p r.select {|color| color.size == 6 }
# ["orange", "yellow", "indigo", "violet"]
p r.map {|color| color[0,3] }
# ["red", "ora", "yel", "gre", "blu", "ind", "vio"]
p r.drop_while {|color| color.size < 5 }
# ["orange", "yellow", "green", "blue", "indigo", "violet"]

puts

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.find_all { |item| item > 5 }
p a.select { |item| item > 100 }
p a.reject {|item| item > 5 }



puts