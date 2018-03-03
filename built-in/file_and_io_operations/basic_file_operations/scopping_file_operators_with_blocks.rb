puts



File.open("data/records.txt") do |f|
  while record = f.gets
    name, nationality, instrument, dates = p record.chomp.split('|')
    puts
    puts "#{name} (#{dates}), who was #{nationality},
    played #{instrument}. "
    puts
  end
end



puts