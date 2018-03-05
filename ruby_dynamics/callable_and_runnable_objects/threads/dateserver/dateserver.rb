require 'socket'

server = TCPServer.new(3939)
while conn = server.accept
  Thread.new(conn) do |c|
    c.print 'Hi. What is your name?: '
    name = c.gets.chomp
    c.puts "Hi #{name}. Here's the date."
    c.puts `date`
    c.close
  end
end
# server.close
