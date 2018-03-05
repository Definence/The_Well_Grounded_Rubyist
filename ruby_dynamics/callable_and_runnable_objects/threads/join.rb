# if we want to allow the thread to finish executing? To do this, we have to
# use the instance method join .
thread = Thread.new do
  puts 'Starting the thread'
  sleep 1
  puts 'At the end of the thread'
end

puts 'Outside the thread'
thread.join
#=> Outside the thread
#=> Starting the thread
#=> At the end of the thread
