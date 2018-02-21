puts



class Bid
  include Comparable
  attr_accessor :esimate
  def <=>(other_bid)
    if self.estimate < other_bid.estimate
      -1
    elsif self.estimate > other_bid.estimate
      1
    else
      0
    end
  end
end



puts