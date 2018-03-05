puts



class String
  def to_proc
    Proc.new {|obj| obj.send(self) }
  end
end

p %w{ Michael Pavel Leonardo }.map(&'upcase') #=> ["MICHAEL", "PAVEL", "LEONARDO"]



puts