puts



str = "I am a string"

class << str
  def twice
    self + " " + self
  end
  # def str.twice
  #   self + " " + self
  # end
end

puts str.twice



puts