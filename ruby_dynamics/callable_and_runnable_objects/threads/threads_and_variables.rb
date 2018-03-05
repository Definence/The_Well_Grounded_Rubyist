a = 1
t = Thread.new { Thread.stop; a = 2 }
sleep 0.1 # crutch
puts a #=> 1
t.run
sleep 0.1 # crutch
puts a #=> 2
