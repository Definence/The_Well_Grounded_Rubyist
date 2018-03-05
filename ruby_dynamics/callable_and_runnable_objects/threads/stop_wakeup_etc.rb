thread = Thread.new do
  puts '[Starting thread]'
  Thread.stop
  puts '[Resuming thread]'
end

sleep 0.1

puts thread.status  #=> sleep
puts thread.stop?   #=> true
puts thread.alive?  #=> true

thread.wakeup
thread.join

puts thread.alive?  #=> false
puts thread.inspect #=>
#<Thread:0x00556aa1cacab8@sandbox/callable_and_runnable_objects/threads/stop_wakeup_etc.rb:1 dead>
