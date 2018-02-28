puts



[1,2,3,4].inject(0) {|acc,n| p acc + n }

puts

[1,2,3,4].inject do |acc,n|
  puts "adding #{acc} and #{n}...#{acc+n}"
  acc + n
end



puts