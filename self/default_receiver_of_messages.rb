puts



class C

  def x
    puts "This is method 'x'"
  end

  def y
    puts "This is method 'y', about to call x without a dot."
    x
  end

end

c = C.new
c.y



puts