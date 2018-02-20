puts



class Person

  PEOPLE = []

  attr_reader :name, :hobbies, :friends

  def initialize(name)
    @name = name
    @friends = []
    # пушить в піпл екземпляри персон(j, p, g, r) в клас person(в PEOPLE)
    # << те ж саме що й пуш
    PEOPLE << self
  end

  def self.method_missing(m, person)
    method = m.to_s
    if method.start_with?("all_with_friends")
      person.friends.each do |friend|
        puts friend.name
      end
    else
      super
    end
  end

  def has_friend(friend)
    @friends << friend
  end

end

j = Person.new("John")
p = Person.new("Paul")
g = Person.new("George")
r = Person.new("Ringo")

j.has_friend(p) # John has Paul
j.has_friend(g) # John has George
g.has_friend(p)

# Person.all_with_friends(j)
Person.all_with_friends(g)


puts