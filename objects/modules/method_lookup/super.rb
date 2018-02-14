puts



# An instance of C (namely, c ) receives the 'report' message
# with c ’s class ( C )—and, sure enough, there’s a report method
# . The method-lookup process starts
# . That method is executed.
# Inside the method is a call to super
# . That means even though the object found a method
# corresponding to the message ( 'report' ), it must keep looking and find the next match. The next
# match for report , in this case, is the report method defined in module M .

module M
  def report
    puts "'report' method in module M"
  end
end

class C
  include M
  def report
    puts "'report' method in class C"
    puts "About to trigger the next higher-up report method..."
    super
    puts "Back from the 'super' call"
  end
end

c = C.new
c.report



puts