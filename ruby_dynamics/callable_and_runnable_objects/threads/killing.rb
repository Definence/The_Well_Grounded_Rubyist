puts 'Trying to read in some files...'

text = []
thread = Thread.new do
  (1..3).each do |n|
    begin
      filename = File.join(File.dirname(__FILE__), "data/part0#{n}.txt")
      File.open(filename) do |file|
        text << file.readlines
      end
    rescue Errno::ENOENT
      puts "Message from thread: Failed on n=#{n}"
      Thread.exit
    end
  end
end

thread.join
puts 'Finished!'
p text
#=> Trying to read in some files...
#=> Message from thread: Failed on n=2
#=> Finished!
#=> [["part\n", "01\n"]]
