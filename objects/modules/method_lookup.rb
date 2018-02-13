puts



# The instance method report is defined in module M . Module M is mixed into class C . Class D is asubclass of C ,
# and obj is an instance of D . Through this cascade, the object ( obj ) gets access to the report method.

module M
  def report
    puts "'report' method in module M"
  end
end

class C
  include M
end

class D < C
end

obj = D.new
obj.report
# puts object_id



puts