puts



track = 1..10

start = track.begin
finish = track.end

puts "Track #{track} starts from #{start} and finishes on #{finish}"
puts "Does track exclude end? Boolean: #{track.exclude_end?}!"

puts

p r = "a".."z"
p r.cover?("a")
p r.cover?("z")
p r.cover?("A")

puts

p r = 100...1
p r.include?(50)



puts