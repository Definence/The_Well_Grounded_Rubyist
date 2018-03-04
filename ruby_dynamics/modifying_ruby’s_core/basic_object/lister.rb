puts



require 'pry'

class Lister < BasicObject
  attr_reader :list

  def initialize
    @list = ''
    @level = 0
  end

  def indent(string)
    ' ' * @level + string.to_s
  end

  def method_missing(m, &block)
    @list << indent(m) + ':'
    @list << "\n"
    @level += 2
    @list << indent(yield(self)) if block
    @level -= 2
    @list << "\n"
    return ''
  end
end

lister = Lister.new

lister.peoples do |people|
  people.michael do |item|
    item.name { 'Michael' }
    item.age  { '20' }
    item.iq   { '40' }
  end

  people.pavel do |item|
    item.name { 'Pavel' }
    item.age  { '30' }
    item.iq   { '180' }

    item.dog do |animal|
      animal.age { '7' }
      animal.iq  { '140' }
    end
  end
end

puts lister.list



puts