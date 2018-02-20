puts



class Student
  def method_missing(m, *args)
    if m.to_s.start_with? 'grade_for'
      p "No such method"
    else
      super
    end
  end
end

s = Student.new

s.grade_for_test #=> "No such method"
s.something_else #=> undefined method `something_else' for #<Student:0x00002962042578> (NoMethodError)



puts