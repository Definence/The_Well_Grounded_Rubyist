puts


class Person
  def whole_name
    n = $first_name + " "
    n << "#{$middle_name} " if $middle_name
    n << $last_name
  end
end

david = Person.new
$first_name = "David"
$middle_name = "Alan"
$last_name = "Black"

puts david.whole_name


puts