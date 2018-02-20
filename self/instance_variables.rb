puts


class C

  def show_var
    @v = "I am an instance variable initialized to a string"
    puts @v
  end

  @v = "Instance variables can appear anywhere..."

end

C.new.show_var
# v in a method will appear


puts