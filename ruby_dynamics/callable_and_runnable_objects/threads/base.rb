Thread.new do
  puts 'Starting the thread'
  sleep 1
  puts 'At the end of the thread'
end

sleep 1
puts 'Outside the thread'
#=> Starting the thread
#=> Outside the thread
