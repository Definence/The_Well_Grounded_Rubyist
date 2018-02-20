puts



# the instance of the class will look in the module first when it’s trying to
# find a method called report

module MeFirst

  def report
    puts "Hello from module!"
  end

end

class Person

  prepend MeFirst

  def report
    puts "Hello from class!"
  end

end

p = Person.newp.report



puts