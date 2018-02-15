puts


# not completed
class Violin

  class String
    attr_accessor :pitch
    def initialize(pitch)
      @pitch = pitch
    end
    def history
      ::String.new(maker + ", " + date)
    end
  end

  def initialize
   @e = String.new("E")
   @a = String.new("A")
  end


end


puts