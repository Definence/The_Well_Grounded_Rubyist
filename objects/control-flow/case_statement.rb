puts



answer = gets.chomp

case answer
when "yes", "y"
  puts "Goodbye"
  exit # код далі не продовжується
when "no", "n"
  puts "OK, we'll continue"
else
  puts "Unknown answer"
end

puts "Continuing..."



puts