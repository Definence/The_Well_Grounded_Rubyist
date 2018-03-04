puts



class String
  alias __old_reverse__ reverse
  # alias_method :__old_reverse__, :reverse

  def reverse
    $stderr.puts 'Reversing a string!'
    __old_reverse__
  end
end

puts "David".reverse



puts