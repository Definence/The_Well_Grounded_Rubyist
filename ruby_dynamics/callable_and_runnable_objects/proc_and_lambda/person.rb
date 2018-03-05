puts



class Person
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def self.to_proc
    Proc.new {|person| person.name }
  end
end

michael = Person.new('Michael')
leonardo = Person.new('Leonardo')

p [michael, leonardo].map(&Person) #=> ["Michael", "Leonardo"]



puts