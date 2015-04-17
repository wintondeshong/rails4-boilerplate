module Enumerable
  def duplicates
    duplicates = []
    self.each {|each| duplicates << each if self.count(each) > 1}
    duplicates
  end

  def pluck(method, *args)
    map { |x| x.send method, *args }
  end

  alias invoke pluck
end

class Array
  def pluck!(method, *args)
    each_index { |x| self[x] = self[x].send method, *args }
  end

  alias invoke! pluck!
end
