puts


$gvar = "I'm a global!"

class C
  def examine_global
    puts $gvar
  end
end

c = C.new
c.examine_global


puts