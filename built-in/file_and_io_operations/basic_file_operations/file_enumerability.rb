puts



# Thanks to the fact that Enumerable is among the ancestors of File , you can replace the while idiom
# in the previous example with each :
File.open("data/records.txt") do |f|
  f.each do |record|
    name, nationality, instrument, dates = record.chomp.split('|')
    puts "#{name} (#{dates}), who was #{nationality},
    played #{instrument}. "
  end
end

puts

count = 0
total_ages = File.readlines("data/members.txt").inject(0) do |total,line|
  count += 1
  fields = line.split
  age = fields[3].to_i
  total + age
end
puts "Average age of group: #{total_ages / count}."



puts