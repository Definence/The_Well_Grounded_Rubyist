puts


# використовується в класі
class Cake
  def initialize(batter)
    @batter = batter
    @baked = true
  end
end

class Egg
end

class Flour
end

class Baker
  def bake_cake
    @batter = []
    pour_flour
    add_egg
    stir_batter
    return Cake.new(@batter)
  end

  def pour_flour
    @batter.push(Flour.new)
  end

  def add_egg
    @batter.push(Egg.new)
  end

  def stir_batter
  end

  # Private means that the method can’t be called with an explicit receiver. You can’t say
  # b = Baker.new
  # b.add_egg
  private :pour_flour, :add_egg, :stir_batter

end



puts